import re

quicksort_code = """
        astack 512i64;
        apush(0i64);
        apush(size - 1i64);
        int64:top = 1i64;
        
        while (top >= 0i64) {
            int64:h = apop();
            int64:l = apop();
            top = top - 2i64;
            
            if (l < h) {
                // partition
                int64:pivot = nitpick_libc_mem_read_i64(arr, h * 8i64);
                int64:i_part = l - 1i64;
                int64:j_part = l;
                while (j_part <= h - 1i64) {
                    int64:p_j = nitpick_libc_mem_read_i64(arr, j_part * 8i64);
                    if (raw strcmp(p_j, pivot) <= 0i32) {
                        i_part = i_part + 1i64;
                        int64:tmp = nitpick_libc_mem_read_i64(arr, i_part * 8i64);
                        drop(nitpick_libc_mem_write_i64(arr, i_part * 8i64, p_j));
                        drop(nitpick_libc_mem_write_i64(arr, j_part * 8i64, tmp));
                    }
                    j_part = j_part + 1i64;
                }
                int64:tmp2 = nitpick_libc_mem_read_i64(arr, (i_part + 1i64) * 8i64);
                drop(nitpick_libc_mem_write_i64(arr, (i_part + 1i64) * 8i64, pivot));
                drop(nitpick_libc_mem_write_i64(arr, h * 8i64, tmp2));
                
                int64:p_idx = i_part + 1i64;
                
                if (p_idx - 1i64 > l) {
                    apush(l);
                    apush(p_idx - 1i64);
                    top = top + 2i64;
                }
                if (p_idx + 1i64 < h) {
                    apush(p_idx + 1i64);
                    apush(h);
                    top = top + 2i64;
                }
            }
        }
"""

with open('src/ptx/ptx.npk', 'r') as f:
    ptx_code = f.read()

# Replace bubble sort
ptx_new = re.sub(r'int64:i_s = 0i64;\s+while \(i_s < size\) \{.*?\s+i_s = i_s \+ 1i64;\s+\}', quicksort_code.strip(), ptx_code, flags=re.DOTALL)
with open('src/ptx/ptx.npk', 'w') as f:
    f.write(ptx_new)

with open('src/sort/sort.npk', 'r') as f:
    sort_code = f.read()

# Sort reads arr byte by byte into the list, then back.
# We can just change the list pop to use nitpick_libc_mem_write_i64.
# Let's replace the whole list->arr->sort->list logic in sort.npk
# From: int64:arr = malloc(size * 8i64); ... drop(nitpick_libc_mem_free(arr));
sort_arr_logic = """
        int64:arr = malloc(size * 8i64);
        int64:idx = 0i64;
        while (raw SList.is_empty(sl) == 0i32) {
            int64:ptr = raw SList.pop_front(sl);
            drop(nitpick_libc_mem_write_i64(arr, idx * 8i64, ptr));
            idx = idx + 1i64;
        }

""" + quicksort_code.strip() + """

        int64:k = 0i64;
        while (k < size) {
            int64:p = nitpick_libc_mem_read_i64(arr, k * 8i64);
            drop(SList.push_back(sl, p));
            k = k + 1i64;
        }
        drop(nitpick_libc_mem_free(arr));
"""

sort_new = re.sub(r'int64:arr = malloc\(size \* 8i64\);.*?drop\(nitpick_libc_mem_free\(arr\)\);', sort_arr_logic.strip(), sort_code, flags=re.DOTALL)
with open('src/sort/sort.npk', 'w') as f:
    f.write(sort_new)

print("Fixed quicksort!")

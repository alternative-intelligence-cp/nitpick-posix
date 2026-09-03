# `harness/`

The Python build and test runner, until `npkg` can build a multi-artifact
project. Builds each utility, runs the conformance and differential stages, and
retires into `npkg` the way `bootstrap/harness/` does in the compiler
repository.

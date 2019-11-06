## Go Skeleton Project
This is go skeleton project for a Go application.
Only tested on Linux, and depends on Docker to build
### Customize:
- change `BIN` on Makefile to your binary name
- rename `cmd/myapp` to `cmd/$BIN`
### Go Modules:
This assumes the use of go modules (which will be the default for all Go builds as of Go 1.13) and vendoring (which reasonable minds might disagree about). You will need to run go mod vendor to create a vendor directory when you have dependencies.
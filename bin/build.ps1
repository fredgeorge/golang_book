# Build the container for running go

# Run with the following to avoid PowerScript authority issues:
#   PowerShell.exe -ExecutionPolicy Bypass -File .\build_image.ps1
# Alternatively, remove restrictions for the particular process
#   Set-ExecutionPolicy Bypass -Scope Process

docker rm rapids_rivers_gem

docker create --name='golang_book' -it -v c:/Users/dev/src/go/golang_book:/golang_book -w /golang_book golang:latest bash

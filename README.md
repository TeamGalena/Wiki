# Galena Wiki <img src="https://raw.githubusercontent.com/TeamGalena/Wiki/refs/heads/main/docs/assets/logo.png" align="right" height="64" />

This project is based on [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/). It's a python framework that generates a static html page from markdown files.

## For Editors

Every page can be edited by modifing the content of it's respective markdown (`.md`) file.
You are redirected to the github edit dialog by using the edit button visible on every page on the top-right.

For contributers that are not within the organization, this means that you can create a [Fork](https://github.com/TeamGalena/Wiki/fork) and submit your changes/additions using a Pull-Request.

Pages are located withing the `docs` directory and resolve to the following routes:

```
docs/index.md -> / (the home page)
docs/something.md -> /something/
docs/something/index.md -> /something/
docs/something/else.md -> /something/else/
docs/something/even/elser.md -> /something/even/elser/
```

---

## For Developers

### Requirements

- Python 3
- _make_ (recommended)

it is recommended to create a virtual python environment for the project by running `make create-env`.
Afterwards, to enable to environment in your shell of choice by running:

```shell
source env/bin/activate # for linux
. env/Scripts/Activate.ps1 # for windows powershell
```

### Running locally

Install the dependencies using `make install` and start a local development server by running `make serve`.
The hosted website should now be located at `http//localhost:8000` and will hot-reload when any changes are made.

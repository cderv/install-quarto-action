# install-quarto-action

> This work now leaves in https://github.com/quarto-dev/quarto-actions/tree/main/install-quarto

Install Quarto (https://quarto.org/) using GitHub Actions. This action can be used to install Quarto on all runner OS and `quarto` will be available from PATH.

```yaml
name: quarto-setup

on: 
  branch: main

jobs:
  quarto-linux:
    runs-on: ubuntu-latest
    steps:
      - uses: cderv/install-quarto-action@v1
      - run: |
          quarto --version
  quarto-windows:
    runs-on: windows-latest
    steps:
      - uses: cderv/install-quarto-action@v1
      - run: |
          quarto --version
  quarto-macos:
    runs-on: macos-latest
    steps:
      - uses: cderv/install-quarto-action@v1
      - run: |
          quarto --version
```

This action will 

* Download the Github Release of quarto on Mac and Linux and install it
* On Windows, it will for now use Scoop to install Quarto msi, until I manage to install an MSI file on Github Action.
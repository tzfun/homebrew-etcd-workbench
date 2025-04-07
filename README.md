# Etch Workbench Homebrew Cask

This repository provides a Homebrew Cask for installing Etcd Workbench.

Run the following commands to add the `ttdjong/etcd-workbench` tap to your Homebrew, followed by installing `Etch Workbench`:

```shell
brew tap ttdjong/etcd-workbench
brew install --cask --no-quarantine etch-workbench
```

Note: The `--no-quarantine` option in Homebrew prevents macOS from applying a quarantine attribute to downloaded files, which can lead to the system showing a warning message like `Etch Workbench is damaged and can't be opened`.

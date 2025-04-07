# Etch Workbench Homebrew Cask

This repository provides a Homebrew Cask for installing Etcd Workbench.

Run the following commands to add the `tzfun/etcd-workbench` tap to your Homebrew, followed by installing `Etcd Workbench`:

```shell
brew tap tzfun/etcd-workbench
brew install --cask --no-quarantine etcd-workbench
```

Note: The `--no-quarantine` option in Homebrew prevents macOS from applying a quarantine attribute to downloaded files, which can lead to the system showing a warning message like `Etcd Workbench is damaged and can't be opened`.

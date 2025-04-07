cask "etcd-workbench" do
  arch arm: "aarch64", intel: "x86_64"

  version "2025.11"
  sha256 arm:   "d2bd0672114d811cb5980ddd6de563950d46cb2ae17982ed81219d799d6dc631",
         intel: "aadc3a2dc6bbe718d0e0b3d8a050a2be2c9d090a8769932c585b60831cbb84e3"

  url "https://github.com/tzfun/etcd-workbench/releases/download/v#{version}/etcd-workbench-#{version}-macos-#{arch}.app.tar.gz",
      verified: "github.com/tzfun/etcd-workbench/"
  name "Etcd Workbench"
  desc "A powerful ui client for ETCD v3. Provides App and Web packages. Supports SSL and SSH Tunnel connections."
  homepage "https://tzfun.github.io/etcd-workbench/"

  depends_on macos: ">= :catalina"

  app "Etcd Workbench.app"

  zap trash: "~/Library/Application Support/Etcd Workbench"
end

cask "etcd-workbench" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.4"
  sha256 arm:   "578af510a50e8ff599578a3ef3f2c8d379368c56b5d60673e6512c9846383581",
         intel: "0470889204a7116938603d6938bcbbc0087888e91e78839c438d530484613942"

  url "https://github.com/tzfun/etcd-workbench/releases/download/v#{version}/etcd-workbench-#{version}-macos-#{arch}.app.tar.gz",
      verified: "github.com/tzfun/etcd-workbench/"
  name "Etcd Workbench"
  desc "A powerful ui client for ETCD v3. Provides App and Web packages. Supports SSL and SSH Tunnel connections."
  homepage "https://tzfun.github.io/etcd-workbench/"

  depends_on macos: ">= :catalina"

  app "Etcd Workbench.app"

  zap trash: "~/Library/Application Support/Etcd Workbench"
end

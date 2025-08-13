cask "etcd-workbench" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.2.0"
  sha256 arm:   "d9d693a304050a69a85aec92d1e6b0769d00e720bdc432b5e8ae6b0133996bd3",
         intel: "7575ed15eb33590d3e6d92144fdf505ace16c2db43d40ddb29f0161616cf5d1c"

  url "https://github.com/tzfun/etcd-workbench/releases/download/App-#{version}/etcd-workbench-#{version}-macos-#{arch}.app.tar.gz",
      verified: "github.com/tzfun/etcd-workbench/"
  name "Etcd Workbench"
  desc "Powerful ui client for ETCD v3. Supports SSL and SSH Tunnel connections"
  homepage "https://tzfun.github.io/etcd-workbench/"

  depends_on macos: ">= :catalina"

  app "Etcd Workbench.app"

  zap trash: "~/Library/Application Support/Etcd Workbench"
end

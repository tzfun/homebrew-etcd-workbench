cask "etcd-workbench" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.7"
  sha256 arm:   "43474e0dd4963bf5beff8aa1280d8725b231cd8d3651f2a45c97f41f6c91606c",
         intel: "338ac87b565f623a55e56b5a94d690171c04d4debf0ff99bda28047b59f083ac"

  url "https://github.com/tzfun/etcd-workbench/releases/download/App-#{version}/etcd-workbench-#{version}-macos-#{arch}.app.tar.gz",
      verified: "github.com/tzfun/etcd-workbench/"
  name "Etcd Workbench"
  desc "Powerful ui client for ETCD v3. Supports SSL and SSH Tunnel connections"
  homepage "https://tzfun.github.io/etcd-workbench/"

  depends_on macos: ">= :catalina"

  app "Etcd Workbench.app"

  zap trash: "~/Library/Application Support/Etcd Workbench"
end

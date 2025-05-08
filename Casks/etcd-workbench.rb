cask "etcd-workbench" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.6"
  sha256 arm:   "357970d4500602611c5ce5cbf954273d48f0a99f4440d07ead9f1b5f096afa6a",
         intel: "0b1be450f9e90c0e115f2081ca34ede74f5abacf5fbfe68c01716ae16e43ebab"

  url "https://github.com/tzfun/etcd-workbench/releases/download/App-#{version}/etcd-workbench-#{version}-macos-#{arch}.app.tar.gz",
      verified: "github.com/tzfun/etcd-workbench/"
  name "Etcd Workbench"
  desc "Powerful ui client for ETCD v3. Supports SSL and SSH Tunnel connections"
  homepage "https://tzfun.github.io/etcd-workbench/"

  depends_on macos: ">= :catalina"

  app "Etcd Workbench.app"

  zap trash: "~/Library/Application Support/Etcd Workbench"
end

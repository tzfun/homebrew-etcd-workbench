cask "etcd-workbench" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.8"
  sha256 arm:   "fa42250b31c53a30fdc6375ca90494a0cdf8c78aa69b6a8927b7ee16cc7b310e",
         intel: "ef6909b897a522658d8137fe8e5c7935c2f84d1e4823f85f30269d17b2ed91e8"

  url "https://github.com/tzfun/etcd-workbench/releases/download/App-#{version}/etcd-workbench-#{version}-macos-#{arch}.app.tar.gz",
      verified: "github.com/tzfun/etcd-workbench/"
  name "Etcd Workbench"
  desc "Powerful ui client for ETCD v3. Supports SSL and SSH Tunnel connections"
  homepage "https://tzfun.github.io/etcd-workbench/"

  depends_on macos: ">= :catalina"

  app "Etcd Workbench.app"

  zap trash: "~/Library/Application Support/Etcd Workbench"
end

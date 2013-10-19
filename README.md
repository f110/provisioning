環境作成用リポジトリ
---

開発環境等を作成するConfig 群

# OS

深遠なる理由でFedora 17

# HOW TO USE

依存ツールをすべてインストールした状態で

    $ vagrant box add fedora17 <<box url>>
    $ vagrant up
    $ cd chef
    $ bundle install --path vendor/bundle
    $ bundle exec knife solo cook asparagus

vagrant のbox も自分で作成する場合は以下。

    $ cd box/Fedora17-x86_64-dvd
    $ packer build template.json
    $ vagrant box add fedora17 ./Fedora17.box

# 仮想マシンの起動

vagrant の使い方を参照されたし

    $ vagrant up

# 仮想マシンにSSH

vagrant の使い方を参照されたし

    $ vagrant ssh

ssh コマンドで接続したければ

    $ vagrant ssh-config --host asparagus >> ~/.ssh/config
    $ ssh asparagus

# 環境を壊したら

    $ vagrant destroy

としてVM を捨ててから、`cd chef && bundle exec knife solo cook asparagus`のようにchef のrecipe を流し込めば良い。

# 注意点

1. packer でbox を作成する際は`Fedora17-x86_64-dvd`を用いたほうが良い。
netinst はかなり時間がかかる。
1. vm のホスト名は変更できない(host 名を変えた場合は`chef/nodes/`以下も適切に編集すること)

# Depends on

- [VirtualBox](https://www.virtualbox.org/) >= 4.3.0
- [Bundler](http://bundler.io/)
- [Vagrant](http://www.vagrantup.com/) >= 1.3.5
  - [Vagrant::Hostsupdater](https://github.com/cogitatio/vagrant-hostsupdater) >= 0.0.10
- [Packer](http://www.packer.io/)

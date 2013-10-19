環境作成用リポジトリ
---

開発環境等を作成するConfig 群

# OS

~~深遠なる理由でFedora 17~~
Fedora17 はサポートが切れているのでFedora 19 にしました

# Ruby

2.0 系 (Fedora19 のruby パッケージが2.0 なので)

# HOW TO USE

依存ツールをすべてインストールした状態で

    $ vagrant box add fedora19 <<box url>>
    $ vagrant up
    $ vagrant ssh-config --host asparagus >> ~/.ssh/config
    $ cd chef
    $ bundle install --path vendor/bundle
    $ bundle exec knife solo cook asparagus

vagrant のbox も自分で作成する場合は以下。

    $ cd box/Fedora19-x86_64
    $ packer build template.json
    $ vagrant box add fedora19 ./Fedora19.box

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

1. VirtualBox は4.3.0 以上を必ず用いること。4.2 ではFedora19 で共有フォルダが動作しない。
1. vm のホスト名は変更できない(host 名を変えた場合は`chef/nodes/`以下も適切に編集すること)
1. Vagrat::Hostupdater は必須ではないがあったほうが圧倒的に便利。vm のホスト名を /etc/hosts に書いてくれる

# Depends on

- [VirtualBox](https://www.virtualbox.org/) >= 4.3.0
- [Bundler](http://bundler.io/)
- [Vagrant](http://www.vagrantup.com/) >= 1.3.5
  - [Vagrant::Hostsupdater](https://github.com/cogitatio/vagrant-hostsupdater) >= 0.0.10
- [Packer](http://www.packer.io/)
- [Ruby 2.0](https://www.ruby-lang.org/)

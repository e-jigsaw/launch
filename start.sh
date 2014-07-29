# update
apt-get update
apt-get -y upgrade

# install packages
apt-get install -y mercurial tmux wget zsh

# go
wget http://golang.org/dl/go1.3.linux-amd64.tar.gz -P /tmp
tar -C /usr/local -xzf /tmp/go1.3.linux-amd64.tar.gz
rm -f /tmp/go1.3.linux-amd64.tar.gz
export GOPATH=$HOME/.ghq
export PATH=$PATH:/usr/local/go/bin
go get github.com/motemen/ghq
go get github.com/peco/peco/cmd/peco

# apply dotfiles
git clone https://github.com/e-jigsaw/dotfiles.git $HOME/.ghq/src/github.com/e-jigsaw/dotfiles/
cd $HOME/.ghq/src/github.com/e-jigsaw/dotfiles/
git submodule init
git submodule update
sh install.sh

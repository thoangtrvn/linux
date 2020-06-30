yum update

# add EPEL repo: to get 'dnf' package manager
# one of the two should work
cd /tmp && wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && yum install epel-release-latest-7.noarch.rpm
yum install epel-release -y

# need this to enable EPEL
# https://fedoraproject.org/wiki/EPEL#How_can_I_use_these_extra_packages.3F
subscription-manager repos --enable rhel-7-server-optional-rpms --enable rhel-7-server-extras-rpms

yum install dnf -y

# using 'dnf' is mostly the same as 'yum' in command options
yup install git -y

# for build purpose
yum install gcc make ncurses ncurses-devel -y

yum install ctags git tcl-devel \
    ruby ruby-devel \
    lua lua-devel \
    luajit luajit-devel \
    python python-devel \
    perl perl-devel \
    perl-ExtUtils-ParseXS \
    perl-ExtUtils-XSpp \
    perl-ExtUtils-CBuilder \
    perl-ExtUtils-Embed -y

# vim 8.2
dnf remove vim-* -y
git clone https://github.com/vim/vim.git /tmp/vim
cd /tmp/vim
./configure --with-features=huge \
    --enable-multibyte \
    --enable-rubyinterp \
    --enable-pythoninterp \
    --enable-luainterp
make -j 20
make install

yum update

# add EPEL repo: to get 'dnf' package manager
# one of the two should work
cd /tmp && wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm && yum install epel-release-latest-8.noarch.rpm
yum install epel-release -y

# need this to enable EPEL
# https://fedoraproject.org/wiki/EPEL#How_can_I_use_these_extra_packages.3F
subscription-manager repos --enable rhel-8-server-optional-rpms --enable rhel-8-server-extras-rpms

yum install dnf -y

# using 'dnf' is mostly the same as 'yum' in command options
dnf install vim -y
cat <<EOF >>/etc/profile.d/vim.sh
export VISUAL="vim"
export EDITOR="vim"
EOF


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

#dnf remove vim-* -y

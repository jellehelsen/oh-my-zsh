function c () {
  cd ~/Documents/code/$1
}

compdef '_files -W ~/Documents/code -/' c


alias vi=vim

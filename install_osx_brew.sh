#http://sourabhbajaj.com/mac-setup/
#=========
#Alfred
#brew
#Amphetamine #keep awake
#The Unarchiver 
#pathfinder

#========Brew
#aircrack-ng
#homebrew/science/r
packages="
  avconv
  coreutils
  curl
  emacs
  ffmpeg
  findutils
  gawk
  gcc
  gdal
  git
  gnu-getopt
  gnu-indent
  gnu-sed
  gnu-tar
  gnutls
  libsvg
  netcat
  nmap
  p7zip
  perl
  python
  python3
  ruby
  sox
  tig
  unrar
  vim
  wget
  youtube-dl
  zsh
  zsh-completions
"
brew update
for package in $packages; do
	echo ------------------------------------------------------------------ $package
	brew install $package
done

#=============Brew Cask
packages="
  adobe-acrobat-reader
  bitbar
  brave-browser
  chromium
  commander-one
  firefox
  flux
  go2shell
  grandperspective
  iina
  iterm2
  itsycal  # date pattern YYYY.MM.dd E hh:mm:ss
  keepingyouawake
  libreoffice
  macs-fan-control  # sensor=CPU PECI 40-70
  monolingual
  pycharm-ce
  signal
  slack
  spectacle
  sublime-text
  telegram-desktop
  transmission
  unetbootin
  virtualbox
  vivaldi
  vlc
  xnviewmp
"

#Subler  # annotate video subtitles

brew update
for package in $packages; do
	echo ------------------------------------------------------------------ $package
	brew cask install $package
done



#=============bitbar
mkdir -p ~/.bitbar
cp -f bitbar.worldclock.sh ~/.bitbar
chmod a+x ~/.bitbar/bitbar.worldclock.sh


#=============sublime
mkdir -p  "/Users/z/Library/Application Support/com.colliderli.iina/input_conf"
cp iina_custom.conf "/Users/z/Library/Application Support/com.colliderli.iina/input_conf"


#=============sublime
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

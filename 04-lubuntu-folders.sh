mkdir -p $HOME/multimedia/desktop
mkdir -p $HOME/incoming
mkdir -p $HOME/multimedia/templates
mkdir -p $HOME/multimedia/public
mkdir -p $HOME/docs
mkdir -p $HOME/multimedia/music
mkdir -p $HOME/multimedia/pictures
mkdir -p $HOME/multimedia/videos

echo '# This file is written by xdg-user-dirs-update
# If you want to change or add directories, just edit the line youre
# interested in. All local changes will be retained on the next run
# Format is XDG_xxx_DIR="$HOME/yyy", where yyy is a shell-escaped
# homedir-relative path, or XDG_xxx_DIR="/yyy", where /yyy is an
# absolute path. No other format is supported.
# 
XDG_DESKTOP_DIR="$HOME/multimedia/desktop"
XDG_DOWNLOAD_DIR="$HOME/incoming"
XDG_TEMPLATES_DIR="$HOME/multimedia/templates"
XDG_PUBLICSHARE_DIR="$HOME/multimedia/public"
XDG_DOCUMENTS_DIR="$HOME/docs"
XDG_MUSIC_DIR="$HOME/multimedia/music"
XDG_PICTURES_DIR="$HOME/multimedia/pictures"
XDG_VIDEOS_DIR="$HOME/multimedia/videos" ' > $HOME/.config/user-dirs.dirs

rmdir $HOME/Desktop
rmdir $HOME/Downloads
rmdir $HOME/Templates
rmdir $HOME/Public
rmdir $HOME/Documents
rmdir $HOME/Music
rmdir $HOME/Pictures
rmdir $HOME/Videos

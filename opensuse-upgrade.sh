#! /bin/bash
#
# To upgrade the operating system openSUSE, execute this script as root by:
#   sudo opensuse-upgrade.sh 15.1
# where the argument 15.1 is the newest version number

if ! { [ $# -eq 1 ] || { [ $# -eq 2 ] && [ "$2" = "--no-packman" ]; }; }; then
  echo "Please pass new version number!"
  echo "usage:   sudo opensuse-upgrade.sh <new version>"
  echo "example: sudo opensuse-upgrade.sh 15.1"
  exit
fi
if [ $(id -u) -ne 0 ]; then
  echo "Please run as root by sudo!"
  echo "usage:   sudo opensuse-upgrade.sh <new version>"
  echo "example: sudo opensuse-upgrade.sh 15.1"
  exit
fi
  
. /etc/os-release
old="$VERSION_ID"
echo "Detected current operating system's version $old ..."
new="$1"

z() { sudo zypper --non-interactive --ignore-unknown --no-gpg-checks --gpg-auto-import-keys "$@"; }
# download all required packages in advance and install afterwards
params="--download in-advance --recommends --auto-agree-with-licenses --replacefiles --force-resolution --no-confirm"

echo "Updating current version $old ..."
z --releasever "$old" refresh --force
z --releasever "$old" update $params

echo "Backing up repositories from version $old and updating them to version $new ..."
# backup old repos
sudo cp -prv /etc/zypp/repos.d /etc/zypp/repos.d."$old"
# replace old by new repo version-numbers
sudo sed -i "s/${old//./\\.}/${new}/g" /etc/zypp/repos.d/*.repo

echo "Upgrading from version $old to version $new ..."
z --releasever "$new" refresh --force
z --releasever "$new" patch $params --updatestack-only
z --releasever "$new" dist-upgrade $params 

if ! [ "$2" = "--no-packman" ]; then
  echo "Ensuring installation of media codes of version $new ..."
  # as listed on https://opensuse-guide.org/
  z addrepo --refresh "http://packman.inode.at/suse/openSUSE_Leap_$new/" packman
  z --releasever "$new" install $params --allow-vendor-change \
    ffmpeg lame gstreamer-plugins-bad gstreamer-plugins-ugly gstreamer-plugins-ugly-orig-addon gstreamer-plugins-libav libavdevice56 libavdevice58 vlc-codecs
  z --releasever "$new" install $params \
    vlc plasma-browser-integration freshplayerplugin xine-browser-plugin java-1_8_0-openjdk-plugin
  z --releasever "$new" dist-upgrade --from packman --allow-vendor-change $params
fi

echo "... upgrade completed."
echo "Please restart your computer, say, by entering 'systemctl reboot'!"

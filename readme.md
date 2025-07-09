# Debian Samba Wallpaper Share

## Setup Server
Install samba:
```zsh
sudo apt install samba smbclient
```
Add the new share to config:
```zsh
sudo nano /etc/samba/smb.conf
```
Add this to file (change path):
```zsh
[Wallpapers]
   path = /path/to/wallpapers
   read only = yes
   guest ok = yes
   browseable = yes
```
Restart samba:
```zsh
sudo systemctl restart smbd
```
Check the share locally:
```zsh
smbclient -L //localhost -N
```

## Setup client
Install sambaclient:
```zsh
sudo apt install smbclient
```
Check the availability of the share (change ip):
```zsh
smbclient //ip/Wallpapers -N
```
Setup crontab
```zsh
crontab -e
```
Add (chane path) and save file:
```zsh
0 * * * * /path/to/DebWallpaperShare/DebWallpaperShare.sh
```
You can change the saved path in the code.
I use this extension:
https://extensions.gnome.org/extension/615/appindicator-support/

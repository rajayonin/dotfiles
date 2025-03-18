# GNOME Config

## Backup
```
dconf dump /org/gnome/shell/ > shell.toml
dconf dump /org/gnome/desktop/wm/ > wm.toml
dconf dump /org/gnome/settings-daemon/plugins/media-keys/ > media-keys.toml
dconf dump /org/gnome/mutter/ > mutter.toml
```

## Reload
```
dconf load /org/gnome/shell/ < shell.toml
dconf load /org/gnome/desktop/wm/ < wm.toml
dconf dump /org/gnome/settings-daemon/plugins/media-keys/ < media-keys.toml
dconf dump /org/gnome/mutter/ < mutter.toml
```

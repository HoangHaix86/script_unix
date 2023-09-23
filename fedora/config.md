# Config

1. Enable Minimize & Maximize

```bash
gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'

gsettings set org.gnome.desktop.wm.preferences button-layout 'close,maximize,minimize:appmenu'

gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,close'

gsettings reset org.gnome.desktop.wm.preferences button-layout
```

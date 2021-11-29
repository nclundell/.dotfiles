# Import Python Modules
import os
import subprocess

# Import Qtile Libraries
from libqtile import hook
from libqtile.dgroups import simple_key_binder

# Import Local Config Sections
from bindings import keys, mouse
from groups import groups
from layouts import layouts, floating_layout
from screens import screens

# Application Rules
dgroups_app_rules = []

# Bind Workspaces
dgroups_key_binder = simple_key_binder("mod4")

# General Settings
auto_fullscreen = True
auto_minimize = True
bring_front_click = False
cursor_warp = False
follow_mouse_focus = True
focus_on_window_activation = "smart"
reconfigure_screens = True

# Autostart
@hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser('~/.config/qtile/autostart.sh')
    subprocess.call([home])

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"

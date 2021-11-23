# Import Python Modules
import os
import subprocess

# Import Color Schemes

# Import Qtile Libraries
from libqtile import hook
from libqtile.dgroups import simple_key_binder
from libqtile.lazy import lazy

# Import Config Objects
from libqtile.bar import Bar
from libqtile.config import Click, Drag, DropDown, Group, Key, Match, Screen, ScratchPad

# Import Layouts
from libqtile.layout.floating import Floating
from libqtile.layout.max import Max
from libqtile.layout.xmonad import MonadTall
from libqtile.layout.tree import TreeTab

# Import Widgets
from libqtile.widget.chord import Chord
from libqtile.widget.clock import Clock
from libqtile.widget.currentlayout import CurrentLayoutIcon
from libqtile.widget.groupbox import GroupBox
from libqtile.widget.image import Image
from libqtile.widget.quick_exit import QuickExit
from libqtile.widget.sep import Sep
from libqtile.widget.systray import Systray
from libqtile.widget.windowname import WindowName

# Autostart
@hook.subscribe.startup_once
def autostart():
    autostart = os.path.expanduser("$HOME/.config/qtile/autostart.sh")
    subprocess.call([autostart])

# Set Mod
mod = "mod4"

# Set Default Programs
browser = "brave"
terminal = "alacritty"

# Color Scheme
colors = [
    ["#282c34", "#282c34"], # panel background
    ["#3d3f4b", "#434758"], # background for current screen tab
    ["#ffffff", "#ffffff"], # font color for group names
    ["#ff5555", "#ff5555"], # border line color for current tab
    ["#74438f", "#74438f"], # border line color for 'other tabs' and color for 'odd widgets'
    ["#4f76c7", "#4f76c7"], # color for the 'even widgets'
    ["#e1acff", "#e1acff"], # window name
    ["#ecbbfb", "#ecbbfb"]  # background for inactive screens
]

# Default Dropdown Settings
dropdown_style = dict(
    height=0.95,
    width=0.95,
    x = 0.025,
    y = 0.025
)

# Default Layout Settings
layout_style = dict(
    # border_focus = colors[3][0],
    border_focus = colors[4][0],
    border_normal = colors[0][0],
    border_width = 10,
    margin=20,
)

# Default Widget Settings
widget_style = dict(
    font='sans',
    fontsize=16,
    padding=4,
    foreground = colors[2],
    background = colors[0],
)

# Define Available Layouts
layouts = [
    MonadTall(**layout_style),
    Max(**layout_style),
    TreeTab(**layout_style),
    Floating(**layout_style)
]

# Define Workspaces
groups = [
    Group("1", label="First",   layout="MonadTall", position=1),
    Group("2", label="Second",  layout="MonadTall", position=2),
    Group("3", label="Third",   layout="MonadTall", position=3),
    Group("4", label="Fourth",  layout="MonadTall", position=4),
    Group("5", label="Fifth",   layout="MonadTall", position=5),
    Group("6", label="Sixth",   layout="MonadTall", position=6),
    Group("7", label="Seventh", layout="MonadTall", position=7),
    Group("8", label="Eighth",  layout="MonadTall", position=8),
    Group("9", label="Nineth",  layout="MonadTall", position=9),
    ScratchPad("scratchpad", [
        DropDown("htop", "alacritty -e htop", **dropdown_style),
        DropDown("pavucontrol", "pavucontrol", **dropdown_style),
        DropDown("term", "alacritty", **dropdown_style)
    ])
]

# Bind Workspaces
dgroups_key_binder = simple_key_binder(mod)

# Define Keybinds
keys = [
    # Scratchpad Keybinds
    Key([], 'F10', lazy.group['scratchpad'].dropdown_toggle('pavucontrol')),
    Key([], 'F11', lazy.group['scratchpad'].dropdown_toggle('htop')),
    Key([], 'F12', lazy.group['scratchpad'].dropdown_toggle('term')),

    # Switch between windows
    Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(), desc="Move focus up"),
    # Key([mod], "space", lazy.layout.next(),
    #     desc="Move window focus to other window"),

    # Move windows between left/right columns or move up/down in current stack.
    # Moving out of range in Columns layout will create new column.
    Key([mod, "shift"], "h", lazy.layout.shuffle_left(),
        desc="Move window to the left"),
    Key([mod, "shift"], "l", lazy.layout.shuffle_right(),
        desc="Move window to the right"),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down(),
        desc="Move window down"),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),

    # Grow windows. If current window is on the edge of screen and direction
    # will be to screen edge - window would shrink.
    Key([mod, "control"], "h", lazy.layout.grow_left(),
        desc="Grow window to the left"),
    Key([mod, "control"], "l", lazy.layout.grow_right(),
        desc="Grow window to the right"),
    Key([mod, "control"], "j", lazy.layout.grow_down(),
        desc="Grow window down"),
    Key([mod, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"),
    Key([mod], "n", lazy.layout.normalize(), desc="Reset all window sizes"),

    # Toggle between split and unsplit sides of stack.
    # Split = all windows displayed
    # Unsplit = 1 window displayed, like Max layout, but still with
    # multiple stack panes
    Key([mod, "shift"], "Return", lazy.layout.toggle_split(),
        desc="Toggle between split and unsplit sides of stack"),
    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),

    # Toggle between different layouts as defined below
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "w", lazy.window.kill(), desc="Kill focused window"),

    Key([mod, "control"], "r", lazy.restart(), desc="Restart Qtile"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
    Key([mod], "r", lazy.spawncmd(),
        desc="Spawn a command using a prompt widget"),
    Key([mod], "space", lazy.spawn("rofi -show drun") )
]

# Bar Settings
screens = [
    Screen(
        top=Bar(
            [
                Sep(
                    **widget_style | dict(
                        linewidth = 0,
                    )
                ),
                Image(
                    **widget_style | dict(
                        background = colors[0],
                        filename = "~/.config/qtile/icons/python-white.png",
                        margin = 6,
                    )
                ),
                Sep(
                    **widget_style | dict(
                        linewidth = 0,
                    )
                ),
                GroupBox(
                    **widget_style | dict(
                        active = colors[2],
                        highlight_color = colors[1],
                        highlight_method = "block",
                    )
                ),
                CurrentLayoutIcon(
                    **widget_style | dict(
                        custom_icon_paths = [os.path.expanduser("~/.config/qtile/icons")],
                        scale = 0.6
                    )
                ),
                WindowName(
                    **widget_style | dict(
                        font = "Hack"
                    )
                ),
                Chord(
                    chords_colors={
                        'launch': ("#ff0000", "#ffffff"),
                    },
                    name_transform=lambda name: name.upper(),
                ),
                Systray(**widget_style),
                Clock(
                    **widget_style | dict(
                        format='%Y-%m-%d %a %I:%M %p'
                    )
                ),
                QuickExit(**widget_style),
            ],
            36,
        ),
    ),
]

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(),
         start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front())
]

dgroups_app_rules = []
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = Floating(float_rules=[
    # Run the utility of `xprop` to see the wm class and name of an X client.
    *Floating.default_float_rules,
    Match(wm_class='confirmreset'),  # gitk
    Match(wm_class='makebranch'),  # gitk
    Match(wm_class='maketag'),  # gitk
    Match(wm_class='ssh-askpass'),  # ssh-askpass
    Match(title='branchdialog'),  # gitk
    Match(title='pinentry'),  # GPG key password entry
])
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True

# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = True

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"

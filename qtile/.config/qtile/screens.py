# Import Libs
from os import path

# Import Qtile Objects
from libqtile.bar import Bar
from libqtile.config import Screen

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

# Import Settings
from colorschemes import DoomOne as colorscheme

# Default Widget Settings
widget_style = dict(
    font='sans',
    fontsize=16,
    padding=4,
    foreground = colorscheme.fg,
    background = colorscheme.bg,
)

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
                        background = colorscheme.bg,
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
                        active = colorscheme.fg,
                        highlight_method = "block",
                    )
                ),
                CurrentLayoutIcon(
                    **widget_style | dict(
                        custom_icon_paths = [path.expanduser("~/.config/qtile/icons")],
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
                        'launch': colorscheme.fg,
                    },
                    name_transform=lambda name: name.upper(),
                ),
                Systray(
                    **widget_style | dict(
                        padding = 10
                    )
                ),
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

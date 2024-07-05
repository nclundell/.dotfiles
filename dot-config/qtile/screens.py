# Import Libs
from os import path

# Import Qtile Objects
from libqtile.bar import Bar
from libqtile.config import Screen

# Import Widgets
from libqtile.widget.clock import Clock
from libqtile.widget.currentlayout import CurrentLayoutIcon
from libqtile.widget.groupbox import GroupBox
from libqtile.widget.sep import Sep
from libqtile.widget.systray import Systray
from libqtile.widget.textbox import TextBox
from libqtile.widget.volume import Volume
from libqtile.widget.windowname import WindowName

# Import Settings
from colorschemes import DoomOne as colorscheme

# Default Widget Settings
icon_style = dict(
    font='Hack Nerd Font Bold',
    fontsize=24,
    padding=4,
)

widget_style = dict(
    font='Hack Nerd Font Bold',
    fontsize=18,
    padding=4,
    foreground = colorscheme.fg,
    background = colorscheme.bg,
)

screens = [
    Screen(
        top=Bar(
            [
                CurrentLayoutIcon(
                    **widget_style | dict(
                        custom_icon_paths = [path.expanduser("~/.config/qtile/icons")],
                        padding = 0,
                        scale = 0.6
                    )
                ),
                GroupBox(
                    **widget_style | dict(
                        disable_drag = True,
                        hide_unused = True,
                        highlight_method = "block",
                        block_highlight_text_color = colorscheme.bg[0],
                        this_current_screen_border = colorscheme.magenta[0],
                        this_screen_border = colorscheme.bg[0],
                        urgent_alert_method = "block",
                        urgent_border = colorscheme.red[0],
                        urgent_text = colorscheme.bg[0],
                    )
                ),
                WindowName(
                    **widget_style | dict(
                    )
                ),
                Systray(
                    **widget_style | dict(
                        padding = 10
                    )
                ),
                TextBox(
                    text="\uE0BC",
                    background = colorscheme.yellow[0],
                    foreground = colorscheme.bg[0],
                    padding=0,
                    fontsize=36
                ),
                TextBox(
                    **icon_style | dict(
                        text="\uF028 ",
                        background = colorscheme.yellow[0],
                        foreground = colorscheme.bg[0],
                    )
                ),
                Volume(
                    **widget_style | dict(
                        background = colorscheme.yellow[0],
                        foreground = colorscheme.bg[0],
                    )
                ),
                TextBox(
                    text="\uE0BA",
                    background = colorscheme.yellow[0],
                    foreground = colorscheme.bg[0],
                    fontsize = 36,
                    padding = 0
                ),
                TextBox(
                    text="\uE0BC",
                    background = colorscheme.yellow[0],
                    foreground = colorscheme.bg[0],
                    fontsize = 36,
                    padding = 0
                ),
                TextBox(
                    **icon_style | dict(
                        text="\uF073 ",
                        background = colorscheme.yellow[0],
                        foreground = colorscheme.bg[0],
                    )
                ),
                Clock(
                    **widget_style | dict(
                        format='%A, %b. %-d',
                        background = colorscheme.yellow[0],
                        foreground = colorscheme.bg[0],
                    )
                ),
                TextBox(
                    text="\uE0BA",
                    background = colorscheme.yellow[0],
                    foreground = colorscheme.bg[0],
                    fontsize = 36,
                    padding = 0
                ),
                TextBox(
                    text="\uE0BC",
                    background = colorscheme.yellow[0],
                    foreground = colorscheme.bg[0],
                    fontsize = 36,
                    padding = 0
                ),
                TextBox(
                    **icon_style | dict(
                        text="\uF017 ",
                        background = colorscheme.yellow[0],
                        foreground = colorscheme.bg[0],
                    )
                ),
                Clock(
                    **widget_style | dict(
                        format='%l:%M %p',
                        background = colorscheme.yellow[0],
                        foreground = colorscheme.bg[0]
                    )
                ),
                Sep(
                    **widget_style | dict(
                        background = colorscheme.yellow[0],
                        linewidth = 0
                    )
                )
            ],
            36,
        ),
    ),
]

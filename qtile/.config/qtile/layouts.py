# Import Qtile Libs
from libqtile.config import Match

# Import Layouts
from libqtile.layout.floating import Floating
from libqtile.layout.max import Max
from libqtile.layout.xmonad import MonadTall
from libqtile.layout.tree import TreeTab

# Import Colorscheme
from colorschemes import DoomOne as colorscheme

layout_style = dict(
    border_focus = colorscheme.red[0],
    border_normal = colorscheme.bg[0],
    border_width = 4,
    margin = 20,
)

layouts = [
    MonadTall(**layout_style | dict(
        single_border_width = 0
    )),
    Max(**layout_style),
    TreeTab(**layout_style | dict(
        active_bg = colorscheme.yellow[0],
        active_fg = colorscheme.bg[0],
        inactive_bg = colorscheme.bg[0],
        inactive_fg = colorscheme.fg[0],
        
        bg_color = colorscheme.bg[0],
        border_width = 0,
        font = "Hack Nerd Font Bold",
        fontsize = 16,
        panel_width = 400,

        section_fg = colorscheme.fg[0],
        section_fontsize = 16,
    )),
]

floating_layout = Floating(
    **layout_style | dict(
        float_rules=[
            # Run the utility of `xprop` to see the wm class and name of an X client.
            *Floating.default_float_rules,
            Match(wm_class='confirmreset'),  # gitk
            Match(wm_class='makebranch'),  # gitk
            Match(wm_class='maketag'),  # gitk
            Match(wm_class='ssh-askpass'),  # ssh-askpass
            Match(title='branchdialog'),  # gitk
            Match(title='pinentry'),  # GPG key password entry
        ]
    )
)

# Import Qtile Libs
from libqtile.config import DropDown, Group, ScratchPad

# Import Style
from styles import dropdown_style

# Defaults
mod = "mod4"

groups = [
    Group("1", layout="MonadTall", position=1),
    Group("2", layout="MonadTall", position=2),
    Group("3", layout="MonadTall", position=3),
    Group("4", layout="MonadTall", position=4),
    Group("5", layout="MonadTall", position=5),
    Group("6", layout="MonadTall", position=6),
    Group("7", layout="MonadTall", position=7),
    Group("8", layout="MonadTall", position=8),
    Group("9", layout="MonadTall", position=9),
    ScratchPad("scratchpad", [
        DropDown("htop", "alacritty -e htop", **dropdown_style),
        DropDown("pavucontrol", "pavucontrol", **dropdown_style),
        DropDown("term", "alacritty", **dropdown_style)
    ])
]

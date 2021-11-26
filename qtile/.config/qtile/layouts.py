# Import Qtile Libs
from libqtile.config import Match

# Import Layouts
from libqtile.layout.floating import Floating
from libqtile.layout.max import Max
from libqtile.layout.xmonad import MonadTall
from libqtile.layout.tree import TreeTab

# Import Style
from styles import layout_style

layouts = [
    MonadTall(**layout_style),
    Max(**layout_style),
    TreeTab(**layout_style),
]


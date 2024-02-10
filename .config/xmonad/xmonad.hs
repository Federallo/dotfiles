import XMonad
import XMonad.Util.Ungrab
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.DynamicLog
import XMonad.Util.SpawnOnce (spawnOnce)--to launch programs
import XMonad.Layout.ThreeColumns
import XMonad.Hooks.ManageDocks --to make bar always appear
import XMonad.Util.EZConfig
import XMonad.Layout.Spacing --to add space around windows
import XMonad.Layout.NoBorders --to remove the red border around windows

--adding three columns layout
myLayoutHook = avoidStruts $ noBorders $ smartBorders $ ThreeColMid 1 (3/100) (1/2) --avodiStruts is to keep the bar alongside windows, smartBorders and noBorders to remove 
										    --highlighted windows

main::IO()
main = xmonad . ewmhFullscreen . docks . ewmh $ customConfig --dollar is used only to create aesthetical space between functions
	`additionalKeysP`
	[("M-p", spawn "rofi -show run -icon-theme'Papirus' -show-icons") --opens rofi run to exec programs
	]

customConfig = def 
	{ terminal = "alacritty"
	--to start programs only once
	, startupHook = myStartupHook
	--setting up windows layouts and window spaces
	, layoutHook = spacingWithEdge 10 $ myLayoutHook
	--changing alt to fn key
	, modMask = mod4Mask
	}


myStartupHook :: X ()
myStartupHook = do 
  spawn "feh --bg-fill ~/.wallpapers/malenia.png" --to add wallpaper
  spawn "~/.config/polybar/launch.sh" --to start the bar
  spawn "killall picom; picom -b" --to start picom

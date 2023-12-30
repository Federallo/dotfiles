import XMonad
import XMonad.Util.Ungrab
import XMonad.Hooks.EwmhDesktops
import XMonad.Hooks.DynamicLog
import XMonad.Util.SpawnOnce (spawnOnce)--to launch programs
import XMonad.Layout.ThreeColumns
import XMonad.Hooks.ManageDocks --to make bar always appear
import XMonad.Util.EZConfig

--adding three columns layout
myLayoutHook = avoidStruts $ ThreeCol 1 (3/100) (1/2) ||| ThreeColMid 1 (3/100) (1/2)

main::IO()
main = xmonad . ewmhFullscreen . docks . ewmh $ customConfig --dollar is used only to create aesthetical space between functions
	`additionalKeysP`
	[("M-p", spawn "rofi -show run") --opens rofi run to exec programs
	]

customConfig = def 
	{ terminal = "alacritty"
	--adding wallpaper and bar launch here to start them only once
	, startupHook = myStartupHook
	--setting up windows layouts
	, layoutHook = myLayoutHook
	--changing alt to fn key
	, modMask = mod4Mask
	}


myStartupHook :: X ()
myStartupHook = do 
  spawnOnce "feh --bg-fill ~/.wallpapers/malenia.png"
  spawnOnce "~/.config/polybar/launch.sh"

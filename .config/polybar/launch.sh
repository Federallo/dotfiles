# kill already running bar istances
killall -q polybar

# launch polybar using configs in .config/polybar/config.ini
polybar mybar 2>&1 | tee -a /tmp/polybar.log & disown

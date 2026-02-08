#!/usr/bin/env bash
# Animated ASCII for terminal
# Usage: ./scripts/villain_anim.sh 2.5 "Deploying..."  (seconds, optional message)

DURATION="${1:-2.5}"
MSG="${2:-"fufufu... ejecutando"}"

frames=(
'⡤⠲⡄
⠑⢲⠷⢤⣀   fufufu...
⠀⠸⡇⠀⠈⠙⠲⢤⣀
⠀⠀⡇⠀⠀⠀⠀⠀⠈⠙⣲⣀⠄⠤⠤⠤⠤⠤⠤⢴⠋
⠀⠀⢸⠀⠀⠀⣠⣾⠀⠀⠀⣂⡠⠤⢤⣤⠬⠤⢄⣰⠀
⠀⠀⠸⢦⣀⣼⠋⢏⢀⡜⠊⠁⢠⣾⣿⣿⣿⣦⠀⠈⠑
⠀⠀⠀⠀⢸⠃⠀⠀⠉⠀⠀⠀⠈⠛⠿⣿⠿⠛⠁
'
'⡤⠲⡄
⠑⢲⠷⢤⣀   fufufU...
⠀⠸⡇⠀⠈⠙⠲⢤⣀
⠀⠀⡇⠀⠀⠀⠀⠀⠈⠙⣲⣀⠄⠤⠤⠤⠤⠤⠤⢴⠋
⠀⠀⢸⠀⠀⠀⣠⣾⠀⠀⠀⣂⡠⠤⢤⣤⠬⠤⢄⣰⠀
⠀⠀⠸⢦⣀⣼⠋⢏⢀⡜⠊⠁⢠⣾⣿⣿⣿⣦⠀⠈⠑
⠀⠀⠀⠀⢸⠃⠀⠀⠉⠀⠀⠀⠈⠛⠿⣿⠿⠛⠁
'
'⡤⠲⡄
⠑⢲⠷⢤⣀   FUfufu...
⠀⠸⡇⠀⠈⠙⠲⢤⣀
⠀⠀⡇⠀⠀⠀⠀⠀⠈⠙⣲⣀⠄⠤⠤⠤⠤⠤⠤⢴⠋
⠀⠀⢸⠀⠀⠀⣠⣾⠀⠀⠀⣂⡠⠤⢤⣤⠬⠤⢄⣰⠀
⠀⠀⠸⢦⣀⣼⠋⢏⢀⡜⠊⠁⢠⣾⣿⣿⣿⣦⠀⠈⠑
⠀⠀⠀⠀⢸⠃⠀⠀⠉⠀⠀⠀⠈⠛⠿⣿⠿⠛⠁
'
)

clear_screen() { printf "\033[2J\033[H"; }

start=$(python - <<'PY'
import time
print(time.time())
PY
)

i=0
while :; do
  now=$(python - <<'PY'
import time
print(time.time())
PY
)
  elapsed=$(python - <<PY
print($now - $start)
PY
)
  keep_running=$(python - <<PY
print(1 if $elapsed < float("$DURATION") else 0)
PY
)
  if [ "$keep_running" -ne 1 ]; then
    break
  fi

  clear_screen
  printf "%s\n\n" "${frames[$((i % ${#frames[@]}))]}"
  printf "🖤 %s\n" "$MSG"
  sleep 0.12
  i=$((i + 1))
done

clear_screen
printf "✅ listo. (la villana aprueba)\n"

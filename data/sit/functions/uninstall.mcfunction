## by Tschipcraft

function sit:reset

scoreboard objectives remove sit_emptyHand
scoreboard objectives remove sit_timer
scoreboard objectives remove sit_destroy
scoreboard objectives remove sit_player_c

scoreboard objectives remove sit_pause
scoreboard objectives remove sit_welcome
scoreboard objectives remove sit_how_to_use
scoreboard objectives remove menu
team remove NoCollision

## From older versions
scoreboard objectives remove emptyHand
scoreboard objectives remove Timer
scoreboard objectives remove xdestc
scoreboard objectives remove ydestc
scoreboard objectives remove zdestc

datapack disable "file/sitonanyblock.zip"
datapack disable "file/sit_on_any_block-v1.1.2-mc1.18-datapack.zip"

say Data pack uninstalled by @s!

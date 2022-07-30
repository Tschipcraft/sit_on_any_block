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

scoreboard objectives remove tvc_ignore

## From older versions
scoreboard objectives remove emptyHand
scoreboard objectives remove Timer

datapack disable "file/sitonanyblock.zip"
datapack disable "file/sit_on_any_block-v1.2.2-mc1.19-datapack.zip"

say Data pack uninstalled by @s!

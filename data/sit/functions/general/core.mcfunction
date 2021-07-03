##by Tschipcraft


## emptyHand Detection
scoreboard players reset @s[scores={sit_emptyHand=1..}] sit_emptyHand
execute unless entity @s[scores={sit_pause=1..}] unless entity @s[nbt={SelectedItem:{}}] run scoreboard players set @s sit_emptyHand 1

scoreboard players reset @s[scores={sit_pause=1..}] sit_pause


## Detection for sitting on the floor
execute as @s[scores={sit_emptyHand=1},x_rotation=80..90] at @s positioned ~ ~1.65 ~ run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:[sit,sitcheck,sitcheck_floor]}
tp @e[type=minecraft:area_effect_cloud,tag=sitcheck] ~ ~1.65 ~ ~ ~
execute as @e[type=minecraft:area_effect_cloud,tag=sitcheck] run function sit:general/search

## Detection for sitting on a stair
execute as @s[scores={sit_emptyHand=1}] at @s positioned ~ ~1.65 ~ run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1,Tags:[sit,sitcheck]}
tp @e[type=minecraft:area_effect_cloud,tag=sitcheck] ~ ~1.65 ~ ~ ~
execute as @e[type=minecraft:area_effect_cloud,tag=sitcheck] run function sit:general/search

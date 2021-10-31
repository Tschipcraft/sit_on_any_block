##by Tschipcraft

execute if block ~ ~ ~ #sit:nonsolid run tp @s ^ ^ ^0.4
execute as @s[tag=!sitcheck_floor] align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #minecraft:stairs run function sit:general/chair_detect
execute as @s[tag=sitcheck_floor] align xyz positioned ~0.5 ~0.5 ~0.5 unless block ~ ~ ~ #sit:nonsolid unless block ~ ~ ~ #sit:fluids positioned ~ ~-2.75 ~ unless entity @e[type=minecraft:armor_stand,tag=sit,distance=..0.5] positioned ~ ~-2.5 ~ unless entity @e[type=minecraft:armor_stand,tag=sit,distance=..0.5] positioned ~ ~2.5 ~ positioned ~ ~2.75 ~ if block ~ ~1 ~ #sit:nonsolid if block ~ ~2 ~ #sit:nonsolid run function sit:general/spawnchair
execute as @s[tag=sitcheck_floor] align xyz positioned ~0.5 ~0.5 ~0.5 unless block ~ ~ ~ #sit:nonsolid unless block ~ ~ ~ #sit:fluids positioned ~ ~-2.75 ~ if entity @e[type=minecraft:armor_stand,tag=sit,distance=..0.5] run scoreboard players set @e[type=minecraft:armor_stand,tag=sit,distance=..0.5] sit_timer 3

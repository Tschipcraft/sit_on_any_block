##by Tschipcraft

execute if block ~ ~ ~ #sit:nonsolid run tp @s ^ ^ ^0.4
execute as @s[tag=!sitcheck_floor] align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #minecraft:stairs run function sit:general/chair_detect
execute as @s[tag=sitcheck_floor] align xyz positioned ~0.5 ~0.5 ~0.5 unless block ~ ~ ~ #sit:nonsolid unless block ~ ~ ~ #sit:fluids run function sit:general/spawnchair
execute as @s[tag=!sitcheck_floor] align xyz positioned ~0.5 ~0.5 ~0.5 unless block ~ ~ ~ #sit:nonsolid run kill @s

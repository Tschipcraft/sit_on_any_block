## by Tschipcraft

execute as @e[tag=chair] at @s run summon area_effect_cloud ~ ~ ~ {Tags:[clearItems],NoGravity:1b,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:5}

kill @e[tag=chair]

kill @e[tag=sitonGround]
kill @e[tag=chairisda]
kill @e[tag=sitcheck]

execute as @e[tag=clearItems] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:leather"}},distance=..3]
execute as @e[tag=clearItems] at @s run kill @e[type=item,nbt={Item:{id:"minecraft:slime_ball"}},distance=..3]
execute as @e[tag=clearItems] at @s run kill @e[type=minecraft:experience_orb,distance=..3]

say Data pack has been reset by @s!

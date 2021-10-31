## by Tschipcraft

execute as @s[type=horse] run summon area_effect_cloud ~ ~ ~ {Tags:[clearItems],NoGravity:1b,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:5}
execute positioned ~ ~0.85 ~ as @a[nbt={RootVehicle:{Entity:{Tags:[sit]}}},sort=nearest,limit=5,distance=..0.5] at @s run tp @s ~ ~1 ~
tp @s ~ -10 ~
scoreboard players add @s sit_destroy 1

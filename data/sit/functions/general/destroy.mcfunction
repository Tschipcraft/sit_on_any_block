## by Tschipcraft

execute as @s[type=horse] run summon area_effect_cloud ~ ~ ~ {Tags:[clearItems],NoGravity:1b,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:5}
execute as @s[type=horse] at @s positioned ~ ~0.85 ~ as @a[nbt={RootVehicle:{Entity:{Tags:[sit]}}},sort=nearest,limit=1,distance=..5.5] at @s run tp @s ~ ~1 ~
tp @s ~ -10 ~
scoreboard players add @s sit_destroy 1

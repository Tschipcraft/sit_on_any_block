## by Tschipcraft

execute as @s[type=horse] run summon area_effect_cloud ~ ~ ~ {Tags:[clearItems],NoGravity:1b,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:5}
tp @s ~ -10 ~
scoreboard players add @s sit_destroy 1

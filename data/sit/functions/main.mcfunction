## by Tschipcraft

# Detection
execute as @a[gamemode=!spectator] at @s run function sit:general/core


## Stairs

# Initalise
scoreboard players add @e[type=#sit:sit_work,tag=chair] sit_timer 1

execute as @e[type=armor_stand,tag=chair,scores={sit_timer=2}] at @s run tp @s ~ ~2.0 ~


# Kill entities
execute as @e[type=minecraft:armor_stand,tag=chair,scores={sit_timer=3..}] at @s if block ~ ~2.62 ~ #sit:nonsolid run kill @s
execute as @e[type=minecraft:armor_stand,tag=chair,scores={sit_timer=3..}] at @s unless entity @a[gamemode=!spectator,distance=..4] run kill @s


execute as @a[nbt={SelectedItem:{id:"minecraft:wooden_axe",Count:1b}}] at @s as @e[type=minecraft:armor_stand,tag=chair,distance=..5] run function sit:general/destroy
execute as @a[nbt={SelectedItem:{id:"minecraft:iron_axe",Count:1b}}] at @s as @e[type=minecraft:armor_stand,tag=chair,distance=..5] run function sit:general/destroy
execute as @a[nbt={SelectedItem:{id:"minecraft:golden_axe",Count:1b}}] at @s as @e[type=minecraft:armor_stand,tag=chair,distance=..5] run function sit:general/destroy
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_axe",Count:1b}}] at @s as @e[type=minecraft:armor_stand,tag=chair,distance=..5] run function sit:general/destroy
execute as @a[nbt={SelectedItem:{id:"minecraft:stone_axe",Count:1b}}] at @s as @e[type=minecraft:armor_stand,tag=chair,distance=..5] run function sit:general/destroy


## Clear Items

execute as @e[type=minecraft:area_effect_cloud,tag=clearItems] at @s run kill @e[type=minecraft:experience_orb,distance=..2]



# Cleanup
execute as @e[type=#sit:sit_work,scores={sit_destroy=3..}] run kill @s[type=!minecraft:player]
scoreboard players add @e[type=#sit:sit_work,scores={sit_destroy=1..}] sit_destroy 1
execute as @e[type=horse,tag=sit,scores={sit_timer=5..}] unless entity @s[scores={sit_destroy=1..}] at @s positioned ~ ~-2 ~ unless entity @e[type=armor_stand,tag=sit,distance=..1] at @s run function sit:general/destroy


## Any Block

effect give @e[type=#sit:sit_work,tag=sitonGround] minecraft:resistance 10 126 true
effect give @e[type=#sit:sit_work,tag=sitonGround] minecraft:regeneration 1 255 true
effect give @e[type=#sit:sit_work,tag=sitonGround] minecraft:fire_resistance 10 255 true
team join NoCollision @e[type=#sit:sit_work,tag=sitonGround]

scoreboard players add @e[type=#sit:sit_work,tag=sitonGround] sit_timer 1


# Cleanup horse
execute as @e[type=horse,tag=sitonGround,scores={sit_timer=5..}] unless entity @s[scores={sit_destroy=1..}] at @s positioned ~ ~-2 ~ unless entity @e[type=armor_stand,tag=sitonGround,distance=..1] run function sit:general/destroy

# Initalise
execute as @e[type=horse,tag=sitonGround,scores={sit_timer=1}] at @s rotated as @p run tp @s ~ ~ ~ ~ ~
execute as @e[type=armor_stand,tag=sitonGround,scores={sit_timer=2}] at @s run tp @s ~ ~2.5 ~


# Cleanup if no player around
execute as @e[type=armor_stand,tag=sitonGround,scores={sit_timer=5..}] at @s positioned ~ ~2.471 ~ unless entity @a[nbt={RootVehicle:{Entity:{Tags:[sitonGround]}}},distance=..0.5] positioned ~ ~1 ~ unless entity @a[scores={sit_emptyHand=1},x_rotation=80..90,distance=..1.5] unless entity @e[tag=sitcheck,distance=..1] positioned ~ ~1 ~ unless entity @a[scores={sit_emptyHand=1},x_rotation=80..90,distance=..1.5] positioned ~ ~1 ~ unless entity @a[scores={sit_emptyHand=1},x_rotation=80..90,distance=..1.5] run kill @s

# Refresh rotation
execute as @e[type=horse,tag=sitonGround] at @s positioned ~ ~0.85 ~ rotated as @a[nbt={RootVehicle:{Entity:{Tags:[sitonGround]}}},sort=nearest,limit=1] positioned ~ ~-0.85 ~ run tp @s ~ ~ ~ ~ ~

# Y Coordinate handling
execute as @e[type=armor_stand,tag=sitonGround,scores={sit_timer=3..}] at @s align xz positioned ~0.5 ~ ~0.5 if block ~ ~2.9 ~ #sit:nonsolid run tp @s ~ ~-0.5 ~

execute as @e[tag=sitonGround,type=armor_stand] at @s run function sit:general/custom_height

execute as @e[type=armor_stand,tag=sitonGround,scores={sit_timer=3..}] at @s align xz positioned ~0.5 ~ ~0.5 if block ~ ~2.9 ~ #sit:nonsolid if block ~ ~1.9 ~ #sit:nonsolid run kill @s


## General

effect give @e[type=horse,tag=Invisible] minecraft:invisibility 1 1 true

effect give @e[type=#sit:sit_work,tag=chair] minecraft:resistance 1 126 true
effect give @e[type=#sit:sit_work,tag=chair] minecraft:regeneration 1 255 true

team join NoCollision @e[type=#sit:sit_work,tag=chair]


# Prevent player stuck in blocks after dismount
scoreboard players set @a[nbt={RootVehicle:{Entity:{Tags:[sit]}}}] sit_player_c 2
execute as @a[scores={sit_player_c=1}] at @s unless block ~ ~1 ~ #sit:nonsolid run tp @s ~ ~2 ~
scoreboard players reset @a[scores={sit_player_c=1..}] sit_player_c
scoreboard players set @a[nbt={RootVehicle:{Entity:{Tags:[sit]}}}] sit_player_c 1


# welcome & Menu
scoreboard players add @a sit_welcome 0
execute as @a[scores={menu=1..60,sit_welcome=1}] run scoreboard players set @s sit_welcome 0
execute as @a[scores={sit_welcome=0}] run function sit:messages/welcome
execute as @a[scores={sit_how_to_use=1}] run function sit:messages/how_to_use

execute as @a[scores={menu=1..60,sit_welcome=1}] run scoreboard players set @s sit_welcome 2
execute as @a[scores={menu=61..}] run scoreboard players set @s sit_welcome 1
scoreboard players reset @a[scores={menu=122..}] menu
scoreboard players add @a[scores={menu=1..}] menu 1


## Nothing to see here

##execute as @e[tag=chair,type=minecraft:armor_stand] at @s if entity

##execute as @a[nbt={RootVehicle:{Entity:{Tags:[sitonGround]}}},x_rotation=80..90] at @s unless entity @e[tag=hitspeed,distance=..1] run summon slime ~ ~1 ~ {DeathTime:19s,Tags:[hitspeed,Invisible],Size:3,NoGravity:1,Silent:1,NoAI:1,Health:100.0f}
##execute as @e[tag=hitspeed] at @s run summon area_effect_cloud ~ ~ ~ {Tags:[clearItems],NoGravity:1b,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:10}

##execute as @e[tag=hitspeed,nbt={HurtByTimestamp:1..100}] at @s run say ooof

##execute as @e[tag=hitspeed] at @s unless entity @a[nbt={RootVehicle:{Entity:{Tags:[sitonGround]}}},distance=..2,x_rotation=80..90] run kill @s

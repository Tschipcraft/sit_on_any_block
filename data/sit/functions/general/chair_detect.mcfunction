## by Tschipcraft


execute if block ~ ~ ~ #minecraft:stairs[facing=north,half=bottom] if block ~ ~1 ~ #sit:nonsolid run execute positioned ~ ~-3 ~ unless entity @e[tag=sit,distance=..0.5] positioned ~ ~-2 ~ unless entity @e[tag=sit,distance=..0.5] run summon armor_stand ~ ~ ~ {NoBasePlate:1b,Invulnerable:1b,DisabledSlots:4144959,Invisible:1,NoGravity:1,Tags:[chair,sit],Passengers:[{id:"minecraft:horse",DeathTime:19,Equitment:[{},{},{},{},{}],Silent:1,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14b,Amplifier:1b,Duration:10,ShowParticles:0b}],Invulnerable:1,NoAI:1,NoGravity:1,Tags:[sit,chair,Invisible,exclude]}]}
execute if block ~ ~ ~ #minecraft:stairs[facing=west,half=bottom] if block ~ ~1 ~ #sit:nonsolid run execute positioned ~ ~-3 ~ unless entity @e[tag=sit,distance=..0.5] positioned ~ ~-2 ~ unless entity @e[tag=sit,distance=..0.5] run summon armor_stand ~ ~ ~ {NoBasePlate:1b,Invulnerable:1b,DisabledSlots:4144959,Invisible:1,NoGravity:1,Tags:[chair,sit],Passengers:[{id:"minecraft:horse",DeathTime:19,Equitment:[{},{},{},{},{}],Silent:1,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14b,Amplifier:1b,Duration:10,ShowParticles:0b}],Invulnerable:1,NoAI:1,NoGravity:1,Rotation:[-90f,0f],Tags:[sit,chair,Invisible,exclude]}]}
execute if block ~ ~ ~ #minecraft:stairs[facing=south,half=bottom] if block ~ ~1 ~ #sit:nonsolid run execute positioned ~ ~-3 ~ unless entity @e[tag=sit,distance=..0.5] positioned ~ ~-2 ~ unless entity @e[tag=sit,distance=..0.5] run summon armor_stand ~ ~ ~ {NoBasePlate:1b,Invulnerable:1b,DisabledSlots:4144959,Invisible:1,NoGravity:1,Tags:[chair,sit],Passengers:[{id:"minecraft:horse",DeathTime:19,Equitment:[{},{},{},{},{}],Silent:1,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14b,Amplifier:1b,Duration:10,ShowParticles:0b}],Invulnerable:1,NoAI:1,NoGravity:1,Rotation:[180f,0f],Tags:[sit,chair,Invisible,exclude]}]}
execute if block ~ ~ ~ #minecraft:stairs[facing=east,half=bottom] if block ~ ~1 ~ #sit:nonsolid run execute positioned ~ ~-3 ~ unless entity @e[tag=sit,distance=..0.5] positioned ~ ~-2 ~ unless entity @e[tag=sit,distance=..0.5] run summon armor_stand ~ ~ ~ {NoBasePlate:1b,Invulnerable:1b,DisabledSlots:4144959,Invisible:1,NoGravity:1,Tags:[sit,chair],Passengers:[{id:"minecraft:horse",DeathTime:19,Equitment:[{},{},{},{},{}],Silent:1,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14b,Amplifier:1b,Duration:10,ShowParticles:0b}],Invulnerable:1,NoAI:1,NoGravity:1,Rotation:[90f,0f],Tags:[sit,chair,Invisible,exclude]}]}

kill @s

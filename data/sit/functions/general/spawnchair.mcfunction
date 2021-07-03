## by Tschipcraft

execute if block ~ ~1 ~ #sit:nonsolid if block ~ ~2 ~ #sit:nonsolid positioned ~ ~-3 ~ unless entity @e[tag=sit,distance=..0.5] positioned ~ ~-2 ~ unless entity @e[tag=sit,distance=..0.5] run summon armor_stand ~ ~ ~ { Invisible:1,NoBasePlate:1b,Invulnerable:1b,DisabledSlots:4144959,NoGravity:1,Tags:[sit,sitonGround],Passengers:[{id:"minecraft:horse",DeathTime:19,Equitment:[{},{},{},{},{}],Silent:1,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14b,Amplifier:1b,Duration:10,ShowParticles:0b}],Invulnerable:1b,NoAI:1,NoGravity:1,Tags:[sit,Invisible,sitonGround,exclude]}]}

kill @s[type=!player]

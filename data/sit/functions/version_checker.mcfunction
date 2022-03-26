##by Tschipcraft

scoreboard objectives add ts_version dummy
execute store result score global ts_version run data get entity @r DataVersion

execute if score global ts_version matches 2976.. run tellraw @a [{"text":"[Sit on any Block] ","color":"gray"},{"text":"?","bold":true,"color":"gold"},{"text":" Minecraft version 1.19 or above detected! This data pack may not work correctly anymore! Please make sure to check for updates in the menu! (","color":"gold"},{"text":"/trigger menu","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger menu"},"hoverEvent":{"action":"show_text","contents":"Click here"}},{"text":")","color":"gold"}]
#execute if score global ts_version matches 2731..2975 run say 1.18 detected!
#execute if score global ts_version matches 2587..2730 run say 1.17 detected!
execute if score global ts_version matches 2231..2586 run tellraw @a [{"text":"[Sit on any block] ","color":"gray"},{"text":"\u26a0 Minecraft version ","color":"red"},{"text":"1.16","color":"red","bold":"true"},{"text":" detected! This edition of the data pack does not work in 1.16! Please use "},{"text": "1.17 or above","color":"red","underlined":"true"},{"text":" or use a different edition!","color":"red"}]
execute if score global ts_version matches 1977..2230 run tellraw @a [{"text":"[Sit on any block] ","color":"gray"},{"text":"\u26a0 Minecraft version ","color":"red"},{"text":"1.15","color":"red","bold":"true"},{"text":" detected! This edition of the data pack does not work in 1.15! Please use "},{"text": "1.17 or above","color":"red","underlined":"true"},{"text":" or use a different edition!","color":"red"}]
execute if score global ts_version matches 1632..1976 run tellraw @a [{"text":"[Sit on any block] ","color":"gray"},{"text":"\u26a0 Minecraft version ","color":"red"},{"text":"1.14","color":"red","bold":"true"},{"text":" detected! This edition of the data pack does not work in 1.14! Please use "},{"text": "1.17 or above","color":"red","underlined":"true"},{"text":" or use a different edition!","color":"red"}]
execute if score global ts_version matches 1343..1631 run tellraw @a [{"text":"[Sit on any block] ","color":"gray"},{"text":"\u26a0 Minecraft version ","color":"red"},{"text":"1.13","color":"red","bold": "true"},{"text":" detected! This data pack does not work in 1.13! Please use ","color":"red"},{"text": "1.17 or above","color":"red","underlined":"true"},{"text":" or use a legay edition for 1.14, 1.15 or 1.16!","color":"red"}]

execute if score global ts_version matches 0 run function sit:version_checker/try_again

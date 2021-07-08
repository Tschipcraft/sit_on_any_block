##by Tschipcraft

scoreboard objectives add ts_version dummy
execute store result score global ts_version run data get entity @r DataVersion
execute if score global ts_version matches 2731.. run tellraw @a [{"text":"[Sit on any Block] ","color":"gray"},{"text":"?","bold":true,"color":"gold"},{"text":" Minecraft version 1.18 or above detected! This data pack may not work correctly anymore! Please make sure to check for updates in the menu! (","color":"gold"},{"text":"/trigger menu","underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/trigger menu"},"hoverEvent":{"action":"show_text","contents":"Click here"}},{"text":")","color":"gold"}]
#execute if score global ts_version matches 2587..2730 run say 1.17 detected!
#execute if score global ts_version matches 2231..2586 run say 1.16 detected!
#execute if score global ts_version matches 1977..2230 run say 1.15 detected!
execute if score global ts_version matches 1632..1976 run tellraw @a [{"text":"[Sit on any block] ","color":"gray"},{"text":"\u26a0 Minecraft version ","color":"red"},{"text":"1.14","color":"red","bold":"true"},{"text":" detected! This edition of the data pack does not work in 1.14! Please use 1.15 or above or ","color":"red"},{"text":"consider installing this legacy edition for 1.14!","underlined":true,"color":"light_purple","clickEvent":{"action":"open_url","value":"https://drive.google.com/drive/folders/1GqGxqIZPX9-C_T55kG3sQ7KlAjy4vfej?usp=sharing"},"hoverEvent":{"action":"show_text","value":"Click here"}}]
#execute if score global ts_version matches 1632..1976 run say 1.14 detected!
execute if score global ts_version matches 1343..1631 run tellraw @a [{"text":"[Sit on any block] ","color":"gray"},{"text":"\u26a0 Minecraft version ","color":"red"},{"text":"1.13","color":"red","bold": "true"},{"text":" detected! This data pack does not work in 1.13! Please use ","color":"red"},{"text": "1.15 or above or use a legay version for 1.14", "color":"red","underlined":"true"},{"text":"!","color":"red"}]

execute if score global ts_version matches 0 run function sit:version_checker/try_again

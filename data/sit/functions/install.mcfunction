## by Tschipcraft

scoreboard objectives add sit_emptyHand dummy
scoreboard objectives add sit_timer dummy
scoreboard objectives add sit_destroy dummy

##scoreboard objectives add speed dummy

scoreboard objectives add menu trigger
scoreboard objectives add sit_welcome trigger
scoreboard objectives add sit_how_to_use trigger

scoreboard objectives add sit_pause minecraft.custom:minecraft.sneak_time

team add NoCollision
team modify NoCollision collisionRule never

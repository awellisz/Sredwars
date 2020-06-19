#####################################
#Executes when a player has just died
#####################################

#teleport and make into spectator the dead
tp @s 0 10 0
gamemode spectator @s

#Displays respawn message for those who can respawn
title @s times 0 60 10
title @s[scores={hasBed=1}] title {"text":"YOU DIED","color":"red"}
title @s[scores={hasBed=1}] subtitle [{"text":"You will respawn in ","color":"yellow"},{"text":"5 ","color":"red"},{"text":"seconds.","color":"yellow"}]

#Game over if no bed
title @s[scores={hasBed=0}] title {"text":"GAME OVER","color":"red"}



#kills dropped items besides gems and wool
kill @e[type=minecraft:item,nbt=!{Item:{id:"minecraft:iron_ingot"}},nbt=!{Item:{id:"minecraft:black_wool"}},nbt=!{Item:{id:"minecraft:white_wool"}},nbt=!{Item:{id:"minecraft:blue_wool"}},nbt=!{Item:{id:"minecraft:red_wool"}},nbt=!{Item:{id:"minecraft:gold_ingot"}},nbt=!{Item:{id:"minecraft:diamond"}},nbt=!{Item:{id:"minecraft:emerald"}}]

#Demotes tool tier
scoreboard players remove @s[scores={axeTier=2..}] axeTier 1
scoreboard players remove @s[scores={pickTier=2..}] pickTier 1

scoreboard players set @s[scores={hasBed=1}] respawnTime 5
scoreboard players set @s[scores={hasBed=0}] respawnTime -1
scoreboard players set @s justDied 2

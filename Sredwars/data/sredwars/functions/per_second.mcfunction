


#UPDATES RESPAWN MESSAGES
title @a times 0 100 20
title @a[scores={respawnTime=0..,hasBed=1}] title {"text":"YOU DIED!","color":"red"}


title @a[scores={respawnTime=5,hasBed=1}] subtitle [{"text":"Respawn in ","color":"yellow"},{"text":"5","color":"red"},{"text":" seconds!","color":"yellow"}]
title @a[scores={respawnTime=4,hasBed=1}] subtitle [{"text":"Respawn in ","color":"yellow"},{"text":"4","color":"red"},{"text":" seconds!","color":"yellow"}]
title @a[scores={respawnTime=3,hasBed=1}] subtitle [{"text":"Respawn in ","color":"yellow"},{"text":"3","color":"red"},{"text":" seconds!","color":"yellow"}]
title @a[scores={respawnTime=2,hasBed=1}] subtitle [{"text":"Respawn in ","color":"yellow"},{"text":"2","color":"red"},{"text":" seconds!","color":"yellow"}]
title @a[scores={respawnTime=1,hasBed=1}] subtitle [{"text":"Respawn in ","color":"yellow"},{"text":"1","color":"red"},{"text":" second!","color":"yellow"}]
title @a[scores={respawnTime=0,hasBed=1}] subtitle {"text":"Respawning now! ","color":"yellow"}
title @a[scores={respawnTime=-1}] clear

#RESPAWN PLAYERS WHOSE TIME IS UP
execute as @a[scores={hasBed=1,respawnTime=0}] run function sredwars:on_respawn

#DECREMENT RESPAWN TIMES
scoreboard players remove @a[scores={respawnTime=0..}] respawnTime 1



#DECREASE GENERATOR COUNTDOWNS
scoreboard players remove @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=1..}] emTimer 1
scoreboard players remove @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=1..}] diaTimer 1


#DROP RESPECTIVE ITEMS
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=0}] at @s run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:emerald",Count:1b}}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=0}] at @s run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:diamond",Count:1b}}

#RESET GENERATOR COOLDOWNS
#TO-DO: MODIFY RESET TIMES BASED ON GENERATOR TIER
scoreboard players set @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=0}] emTimer 45
scoreboard players set @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=0}] diaTimer 25
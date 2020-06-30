#Executed when a player clicks the custom buy sign
# /give @p minecraft:oak_sign{BlockEntityTag:{Text1:'{"text":"Buy Protection I","clickEvent":{"action":"run_command","value":"execute as @s run function sredwars:buy_prot"},"bold":true,"color":"aqua"}'},display:{Name:'{"text":"Custom Sign"}'}}

#Stores number of diamonds in inventory
execute store result score @s diamonds run clear @s minecraft:diamond 0

#Stop if your prot is maxxed
tellraw @s[scores={protTier=4}] {"text":"Upgrade already maxxed out!","color":"red"}
playsound entity.enderman.teleport master @s[scores={protTier=4}]

#stop if not enough for tier 4
tellraw @s[scores={diamonds=..29,protTier=3}] {"text":"You don't have enough diamonds!","color":"red"}
playsound entity.enderman.teleport master @s[scores={diamonds=..29,protTier=3}]

#stop if not enough for tier 3
tellraw @s[scores={diamonds=..19,protTier=2}] {"text":"You don't have enough diamonds!","color":"red"}
playsound entity.enderman.teleport master @s[scores={diamonds=..19,protTier=2}]

#etc for tier 2
tellraw @s[scores={diamonds=..9,protTier=1}] {"text":"You don't have enough diamonds!","color":"red"}
playsound entity.enderman.teleport master @s[scores={diamonds=..9,protTier=1}]

#etc for tier 1
tellraw @s[scores={diamonds=..4,protTier=0}] {"text":"You don't have enough diamonds!","color":"red"}
playsound entity.enderman.teleport master @s[scores={diamonds=..4,protTier=0}]

#clear diamonds if buying tier 4
execute if entity @s[team=Alban,scores={diamonds=30..,protTier=3}] run clear @s minecraft:diamond 30
#displays purchase message
execute if entity @s[team=Alban,scores={diamonds=30..,protTier=3}] run tellraw @a[team=Alban] [{"text":"Team purchased ","color":"green"},{"text":"Protection IV","color":"gold"}]
#plays purchase sound
execute if entity @s[team=Alban,scores={diamonds=30..,protTier=3}] run playsound entity.experience_orb.pickup master @a[team=Alban]
#sets protTier scoreboard
execute if entity @s[team=Alban,scores={diamonds=30..,protTier=3}] run scoreboard players set @a[team=Alban] protTier 4

#etc. for tier 3
execute if entity @s[team=Alban,scores={diamonds=20..,protTier=2}] run clear @s minecraft:diamond 20
execute if entity @s[team=Alban,scores={diamonds=20..,protTier=2}] run tellraw @a[team=Alban] [{"text":"Team purchased ","color":"green"},{"text":"Protection III","color":"gold"}]
execute if entity @s[team=Alban,scores={diamonds=20..,protTier=2}] run playsound entity.experience_orb.pickup master @a[team=Alban]
execute if entity @s[team=Alban,scores={diamonds=20..,protTier=2}] run scoreboard players set @a[team=Alban] protTier 3

#etc for tier 2
execute if entity @s[team=Alban,scores={diamonds=10..,protTier=1}] run clear @s minecraft:diamond 10
execute if entity @s[team=Alban,scores={diamonds=10..,protTier=1}] run tellraw @a[team=Alban] [{"text":"Team purchased ","color":"green"},{"text":"Protection II","color":"gold"}]
execute if entity @s[team=Alban,scores={diamonds=10..,protTier=1}] run playsound entity.experience_orb.pickup master @a[team=Alban]
execute if entity @s[team=Alban,scores={diamonds=10..,protTier=1}] run scoreboard players set @a[team=Alban] protTier 2

#etc for tier 1
execute if entity @s[team=Alban,scores={diamonds=5..,protTier=0}] run clear @s minecraft:diamond 5
execute if entity @s[team=Alban,scores={diamonds=5..,protTier=0}] run tellraw @a[team=Alban] [{"text":"Team purchased ","color":"green"},{"text":"Protection I","color":"gold"}]
execute if entity @s[team=Alban,scores={diamonds=5..,protTier=0}] run playsound entity.experience_orb.pickup master @a[team=Alban]
execute if entity @s[team=Alban,scores={diamonds=5..,protTier=0}] run scoreboard players set @a[team=Alban] protTier 1

##################
#etc for AUSTIN
##################

execute if entity @s[team=Austin,scores={diamonds=30..,protTier=3}] run clear @s minecraft:diamond 30
execute if entity @s[team=Austin,scores={diamonds=30..,protTier=3}] run tellraw @a[team=Austin] [{"text":"Team purchased ","color":"green"},{"text":"Protection IV","color":"gold"}]
execute if entity @s[team=Austin,scores={diamonds=30..,protTier=3}] run playsound entity.experience_orb.pickup master @a[team=Austin]
execute if entity @s[team=Austin,scores={diamonds=30..,protTier=3}] run scoreboard players set @a[team=Austin] protTier 4

execute if entity @s[team=Austin,scores={diamonds=20..,protTier=2}] run clear @s minecraft:diamond 20
execute if entity @s[team=Austin,scores={diamonds=20..,protTier=2}] run tellraw @a[team=Austin] [{"text":"Team purchased ","color":"green"},{"text":"Protection III","color":"gold"}]
execute if entity @s[team=Austin,scores={diamonds=20..,protTier=2}] run playsound entity.experience_orb.pickup master @a[team=Austin]
execute if entity @s[team=Austin,scores={diamonds=20..,protTier=2}] run scoreboard players set @a[team=Austin] protTier 3

execute if entity @s[team=Austin,scores={diamonds=10..,protTier=1}] run clear @s minecraft:diamond 10
execute if entity @s[team=Austin,scores={diamonds=10..,protTier=1}] run tellraw @a[team=Austin] [{"text":"Team purchased ","color":"green"},{"text":"Protection II","color":"gold"}]
execute if entity @s[team=Austin,scores={diamonds=10..,protTier=1}] run playsound entity.experience_orb.pickup master @a[team=Austin]
execute if entity @s[team=Austin,scores={diamonds=10..,protTier=1}] run scoreboard players set @a[team=Austin] protTier 2

execute if entity @s[team=Austin,scores={diamonds=5..,protTier=0}] run clear @s minecraft:diamond 5
execute if entity @s[team=Austin,scores={diamonds=5..,protTier=0}] run tellraw @a[team=Austin] [{"text":"Team purchased ","color":"green"},{"text":"Protection I","color":"gold"}]
execute if entity @s[team=Austin,scores={diamonds=5..,protTier=0}] run playsound entity.experience_orb.pickup master @a[team=Austin]
execute if entity @s[team=Austin,scores={diamonds=5..,protTier=0}] run scoreboard players set @a[team=Austin] protTier 1

######################
#etc for MAIN
######################

execute if entity @s[team=Main,scores={diamonds=30..,protTier=3}] run clear @s minecraft:diamond 30
execute if entity @s[team=Main,scores={diamonds=30..,protTier=3}] run tellraw @a[team=Main] [{"text":"Team purchased ","color":"green"},{"text":"Protection IV","color":"gold"}]
execute if entity @s[team=Main,scores={diamonds=30..,protTier=3}] run playsound entity.experience_orb.pickup master @a[team=Main]
execute if entity @s[team=Main,scores={diamonds=30..,protTier=3}] run scoreboard players set @a[team=Main] protTier 4

execute if entity @s[team=Main,scores={diamonds=20..,protTier=2}] run clear @s minecraft:diamond 20
execute if entity @s[team=Main,scores={diamonds=20..,protTier=2}] run tellraw @a[team=Main] [{"text":"Team purchased ","color":"green"},{"text":"Protection III","color":"gold"}]
execute if entity @s[team=Main,scores={diamonds=20..,protTier=2}] run playsound entity.experience_orb.pickup master @a[team=Main]
execute if entity @s[team=Main,scores={diamonds=20..,protTier=2}] run scoreboard players set @a[team=Main] protTier 3

execute if entity @s[team=Main,scores={diamonds=10..,protTier=1}] run clear @s minecraft:diamond 10
execute if entity @s[team=Main,scores={diamonds=10..,protTier=1}] run tellraw @a[team=Main] [{"text":"Team purchased ","color":"green"},{"text":"Protection II","color":"gold"}]
execute if entity @s[team=Main,scores={diamonds=10..,protTier=1}] run playsound entity.experience_orb.pickup master @a[team=Main]
execute if entity @s[team=Main,scores={diamonds=10..,protTier=1}] run scoreboard players set @a[team=Main] protTier 2

execute if entity @s[team=Main,scores={diamonds=5..,protTier=0}] run clear @s minecraft:diamond 5
execute if entity @s[team=Main,scores={diamonds=5..,protTier=0}] run tellraw @a[team=Main] [{"text":"Team purchased ","color":"green"},{"text":"Protection I","color":"gold"}]
execute if entity @s[team=Main,scores={diamonds=5..,protTier=0}] run playsound entity.experience_orb.pickup master @a[team=Main]
execute if entity @s[team=Main,scores={diamonds=5..,protTier=0}] run scoreboard players set @a[team=Main] protTier 1

###########################
#etc for MOORE
###########################

execute if entity @s[team=Moore,scores={diamonds=30..,protTier=3}] run clear @s minecraft:diamond 30
execute if entity @s[team=Moore,scores={diamonds=30..,protTier=3}] run tellraw @a[team=Moore] [{"text":"Team purchased ","color":"green"},{"text":"Protection IV","color":"gold"}]
execute if entity @s[team=Moore,scores={diamonds=30..,protTier=3}] run playsound entity.experience_orb.pickup master @a[team=Moore]
execute if entity @s[team=Moore,scores={diamonds=30..,protTier=3}] run scoreboard players set @a[team=Moore] protTier 4

execute if entity @s[team=Moore,scores={diamonds=20..,protTier=2}] run clear @s minecraft:diamond 20
execute if entity @s[team=Moore,scores={diamonds=20..,protTier=2}] run tellraw @a[team=Moore] [{"text":"Team purchased ","color":"green"},{"text":"Protection III","color":"gold"}]
execute if entity @s[team=Moore,scores={diamonds=20..,protTier=2}] run playsound entity.experience_orb.pickup master @a[team=Moore]
execute if entity @s[team=Moore,scores={diamonds=20..,protTier=2}] run scoreboard players set @a[team=Moore] protTier 3

execute if entity @s[team=Moore,scores={diamonds=10..,protTier=1}] run clear @s minecraft:diamond 10
execute if entity @s[team=Moore,scores={diamonds=10..,protTier=1}] run tellraw @a[team=Moore] [{"text":"Team purchased ","color":"green"},{"text":"Protection II","color":"gold"}]
execute if entity @s[team=Moore,scores={diamonds=10..,protTier=1}] run playsound entity.experience_orb.pickup master @a[team=Moore]
execute if entity @s[team=Moore,scores={diamonds=10..,protTier=1}] run scoreboard players set @a[team=Moore] protTier 2

execute if entity @s[team=Moore,scores={diamonds=5..,protTier=0}] run clear @s minecraft:diamond 5
execute if entity @s[team=Moore,scores={diamonds=5..,protTier=0}] run tellraw @a[team=Moore] [{"text":"Team purchased ","color":"green"},{"text":"Protection I","color":"gold"}]
execute if entity @s[team=Moore,scores={diamonds=5..,protTier=0}] run playsound entity.experience_orb.pickup master @a[team=Moore]
execute if entity @s[team=Moore,scores={diamonds=5..,protTier=0}] run scoreboard players set @a[team=Moore] protTier 1


#APPLY ARMOR CHANGES TO LIVING PLAYERS
function sredwars:update_armor


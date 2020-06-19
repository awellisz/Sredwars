#Executed when a player clicks the custom buy sign
# /give @p minecraft:oak_sign{BlockEntityTag:{Text1:'{"text":"Upgrade Haste","clickEvent":{"action":"run_command","value":"execute as @s run function sredwars:buy_haste"},"bold":true,"color":"yellow"}',Text2:'{"text":"4 - Haste I","color":"yellow"}',Text3:'{"text":"6 - Haste II","color":"yellow"}'},display:{Name:'{"text":"Custom Sign"}'}}

#Stores number of diamonds in inventory
execute store result score @s diamonds run clear @s minecraft:diamond 0

#Stop if your prot is maxxed
tellraw @s[scores={hasteTier=2}] {"text":"Upgrade already maxxed out!","color":"red"}
playsound entity.enderman.teleport master @s[scores={hasteTier=2}]

#etc for tier 2
tellraw @s[scores={diamonds=..5,hasteTier=1}] {"text":"You don't have enough diamonds!","color":"red"}
playsound entity.enderman.teleport master @s[scores={diamonds=..5,hasteTier=1}]

#etc for tier 1
tellraw @s[scores={diamonds=..3,hasteTier=0}] {"text":"You don't have enough diamonds!","color":"red"}
playsound entity.enderman.teleport master @s[scores={diamonds=..3,hasteTier=0}]

execute if entity @s[team=Alban,scores={diamonds=6..,hasteTier=1}] run clear @s minecraft:diamond 6
execute if entity @s[team=Alban,scores={diamonds=6..,hasteTier=1}] run tellraw @a[team=Alban] [{"text":"Team purchased ","color":"green"},{"text":"Haste II","color":"gold"}]
execute if entity @s[team=Alban,scores={diamonds=6..,hasteTier=1}] run effect give @a[team=Alban] haste 1000000 1 true
execute if entity @s[team=Alban,scores={diamonds=6..,hasteTier=1}] run playsound entity.experience_orb.pickup master @a[team=Alban]
execute if entity @s[team=Alban,scores={diamonds=6..,hasteTier=1}] run scoreboard players set @a[team=Alban] hasteTier 2

execute if entity @s[team=Alban,scores={diamonds=4..,hasteTier=0}] run clear @s minecraft:diamond 4
execute if entity @s[team=Alban,scores={diamonds=4..,hasteTier=0}] run tellraw @a[team=Alban] [{"text":"Team purchased ","color":"green"},{"text":"Haste I","color":"gold"}]
execute if entity @s[team=Alban,scores={diamonds=4..,hasteTier=0}] run effect give @a[team=Alban] haste 1000000 0 true
execute if entity @s[team=Alban,scores={diamonds=4..,hasteTier=0}] run playsound entity.experience_orb.pickup master @a[team=Alban]
execute if entity @s[team=Alban,scores={diamonds=4..,hasteTier=0}] run scoreboard players set @a[team=Alban] hasteTier 1



execute if entity @s[team=Austin,scores={diamonds=6..,hasteTier=1}] run clear @s minecraft:diamond 6
execute if entity @s[team=Austin,scores={diamonds=6..,hasteTier=1}] run tellraw @a[team=Austin] [{"text":"Team purchased ","color":"green"},{"text":"Haste II","color":"gold"}]
execute if entity @s[team=Austin,scores={diamonds=6..,hasteTier=1}] run effect give @a[team=Austin] haste 1000000 1 true
execute if entity @s[team=Austin,scores={diamonds=6..,hasteTier=1}] run playsound entity.experience_orb.pickup master @a[team=Austin]
execute if entity @s[team=Austin,scores={diamonds=6..,hasteTier=1}] run scoreboard players set @a[team=Austin] hasteTier 2

execute if entity @s[team=Austin,scores={diamonds=4..,hasteTier=0}] run clear @s minecraft:diamond 4
execute if entity @s[team=Austin,scores={diamonds=4..,hasteTier=0}] run tellraw @a[team=Austin] [{"text":"Team purchased ","color":"green"},{"text":"Haste I","color":"gold"}]
execute if entity @s[team=Austin,scores={diamonds=4..,hasteTier=0}] run effect give @a[team=Austin] haste 1000000 0 true
execute if entity @s[team=Austin,scores={diamonds=4..,hasteTier=0}] run playsound entity.experience_orb.pickup master @a[team=Austin]
execute if entity @s[team=Austin,scores={diamonds=4..,hasteTier=0}] run scoreboard players set @a[team=Austin] hasteTier 1



execute if entity @s[team=Main,scores={diamonds=6..,hasteTier=1}] run clear @s minecraft:diamond 6
execute if entity @s[team=Main,scores={diamonds=6..,hasteTier=1}] run tellraw @a[team=Main] [{"text":"Team purchased ","color":"green"},{"text":"Haste II","color":"gold"}]
execute if entity @s[team=Main,scores={diamonds=6..,hasteTier=1}] run effect give @a[team=Main] haste 1000000 1 true
execute if entity @s[team=Main,scores={diamonds=6..,hasteTier=1}] run playsound entity.experience_orb.pickup master @a[team=Main]
execute if entity @s[team=Main,scores={diamonds=6..,hasteTier=1}] run scoreboard players set @a[team=Main] hasteTier 2

execute if entity @s[team=Main,scores={diamonds=4..,hasteTier=0}] run clear @s minecraft:diamond 4
execute if entity @s[team=Main,scores={diamonds=4..,hasteTier=0}] run tellraw @a[team=Main] [{"text":"Team purchased ","color":"green"},{"text":"Haste I","color":"gold"}]
execute if entity @s[team=Main,scores={diamonds=4..,hasteTier=0}] run effect give @a[team=Main] haste 1000000 0 true
execute if entity @s[team=Main,scores={diamonds=4..,hasteTier=0}] run playsound entity.experience_orb.pickup master @a[team=Main]
execute if entity @s[team=Main,scores={diamonds=4..,hasteTier=0}] run scoreboard players set @a[team=Main] hasteTier 1



execute if entity @s[team=Moore,scores={diamonds=6..,hasteTier=1}] run clear @s minecraft:diamond 6
execute if entity @s[team=Moore,scores={diamonds=6..,hasteTier=1}] run tellraw @a[team=Moore] [{"text":"Team purchased ","color":"green"},{"text":"Haste II","color":"gold"}]
execute if entity @s[team=Moore,scores={diamonds=6..,hasteTier=1}] run effect give @a[team=Moore] haste 1000000 1 true
execute if entity @s[team=Moore,scores={diamonds=6..,hasteTier=1}] run playsound entity.experience_orb.pickup master @a[team=Moore]
execute if entity @s[team=Moore,scores={diamonds=6..,hasteTier=1}] run scoreboard players set @a[team=Moore] hasteTier 2

execute if entity @s[team=Moore,scores={diamonds=4..,hasteTier=0}] run clear @s minecraft:diamond 4
execute if entity @s[team=Moore,scores={diamonds=4..,hasteTier=0}] run tellraw @a[team=Moore] [{"text":"Team purchased ","color":"green"},{"text":"Haste I","color":"gold"}]
execute if entity @s[team=Moore,scores={diamonds=4..,hasteTier=0}] run effect give @a[team=Moore] haste 1000000 0 true
execute if entity @s[team=Moore,scores={diamonds=4..,hasteTier=0}] run playsound entity.experience_orb.pickup master @a[team=Moore]
execute if entity @s[team=Moore,scores={diamonds=4..,hasteTier=0}] run scoreboard players set @a[team=Moore] hasteTier 1

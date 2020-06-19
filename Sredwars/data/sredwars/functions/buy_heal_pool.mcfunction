#Executed when a player clicks the custom buy sign
#Buy sign code below
#/give @p minecraft:oak_sign{BlockEntityTag:{Text1:'{"text":"Heal Pool","clickEvent":{"action":"run_command","value":"execute as @s run function sredwars:buy_heal_pool"},"bold":true,"color":"dark_blue"}',Text2:'{"text":"3 diamonds","color":"aqua"}'},display:{Name:'{"text":"Custom Sign"}'}}

execute store result score @s diamonds run clear @s minecraft:diamond 0

tellraw @s[scores={hasHealPool=1}] {"text":"Upgrade already purchased!","color":"red"}
playsound entity.enderman.teleport master @s[scores={hasHealPool=1}]
tellraw @s[scores={diamonds=..2,hasHealPool=0}] {"text":"You don't have enough diamonds!","color":"red"}
playsound entity.enderman.teleport master @s[scores={diamonds=..2,hasHealPool=0}]

execute if entity @s[team=Alban,scores={diamonds=3..,hasHealPool=0}] run clear @s minecraft:diamond 3
execute if entity @s[team=Alban,scores={diamonds=3..,hasHealPool=0}] run tellraw @a[team=Alban] [{"text":"Team purchased ","color":"green"},{"text":"Heal Pool","color":"gold"}]
execute if entity @s[team=Alban,scores={diamonds=3..,hasHealPool=0}] run playsound entity.experience_orb.pickup master @a[team=Alban]
execute if entity @s[team=Alban,scores={diamonds=3..,hasHealPool=0}] run scoreboard players set @a[team=Alban] hasHealPool 1


execute if entity @s[team=Austin,scores={diamonds=3..,hasHealPool=0}] run clear @s minecraft:diamond 3
execute if entity @s[team=Austin,scores={diamonds=3..,hasHealPool=0}] run tellraw @a[team=Austin] [{"text":"Team purchased ","color":"green"},{"text":"Heal Pool","color":"gold"}]
execute if entity @s[team=Austin,scores={diamonds=3..,hasHealPool=0}] run playsound entity.experience_orb.pickup master @a[team=Austin]
execute if entity @s[team=Austin,scores={diamonds=3..,hasHealPool=0}] run scoreboard players set @a[team=Austin] hasHealPool 1


execute if entity @s[team=Main,scores={diamonds=3..,hasHealPool=0}] run clear @s minecraft:diamond 3
execute if entity @s[team=Main,scores={diamonds=3..,hasHealPool=0}] run tellraw @a[team=Main] [{"text":"Team purchased ","color":"green"},{"text":"Heal Pool","color":"gold"}]
execute if entity @s[team=Main,scores={diamonds=3..,hasHealPool=0}] run playsound entity.experience_orb.pickup master @a[team=Main]
execute if entity @s[team=Main,scores={diamonds=3..,hasHealPool=0}] run scoreboard players set @a[team=Main] hasHealPool 1


execute if entity @s[team=Moore,scores={diamonds=3..,hasHealPool=0}] run clear @s minecraft:diamond 3
execute if entity @s[team=Moore,scores={diamonds=3..,hasHealPool=0}] run tellraw @a[team=Moore] [{"text":"Team purchased ","color":"green"},{"text":"Heal Pool","color":"gold"}]
execute if entity @s[team=Moore,scores={diamonds=3..,hasHealPool=0}] run playsound entity.experience_orb.pickup master @a[team=Moore]
execute if entity @s[team=Moore,scores={diamonds=3..,hasHealPool=0}] run scoreboard players set @a[team=Moore] hasHealPool 1
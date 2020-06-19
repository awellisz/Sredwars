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

#UPDATES LOWER PIECES FOR PLAYERS WITH CHAIN ARMOR
replaceitem entity @a[scores={protTier=1,armorTier=1}] armor.legs chainmail_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[scores={protTier=1,armorTier=1}] armor.feet chainmail_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

replaceitem entity @a[scores={protTier=2,armorTier=1}] armor.legs chainmail_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[scores={protTier=2,armorTier=1}] armor.feet chainmail_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

replaceitem entity @a[scores={protTier=3,armorTier=1}] armor.legs chainmail_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[scores={protTier=3,armorTier=1}] armor.feet chainmail_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

replaceitem entity @a[scores={protTier=4,armorTier=1}] armor.legs chainmail_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[scores={protTier=4,armorTier=1}] armor.feet chainmail_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

#UPDATES LOWER PIECES FOR PLAYERS WITH IRON ARMOR
replaceitem entity @a[scores={protTier=1,armorTier=2}] armor.legs iron_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[scores={protTier=1,armorTier=2}] armor.feet iron_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

replaceitem entity @a[scores={protTier=2,armorTier=2}] armor.legs iron_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[scores={protTier=2,armorTier=2}] armor.feet iron_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

replaceitem entity @a[scores={protTier=3,armorTier=2}] armor.legs iron_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[scores={protTier=3,armorTier=2}] armor.feet iron_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

replaceitem entity @a[scores={protTier=4,armorTier=2}] armor.legs iron_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[scores={protTier=4,armorTier=2}] armor.feet iron_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

#UPDATES LOWER PIECES FOR PLAYERS WITH DIAMOND ARMOR
replaceitem entity @a[scores={protTier=1,armorTier=3}] armor.legs diamond_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[scores={protTier=1,armorTier=3}] armor.feet diamond_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

replaceitem entity @a[scores={protTier=2,armorTier=3}] armor.legs diamond_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[scores={protTier=2,armorTier=3}] armor.feet diamond_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

replaceitem entity @a[scores={protTier=3,armorTier=3}] armor.legs diamond_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[scores={protTier=3,armorTier=3}] armor.feet diamond_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

replaceitem entity @a[scores={protTier=4,armorTier=3}] armor.legs diamond_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[scores={protTier=4,armorTier=3}] armor.feet diamond_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

#############
#ALBAN LEATHER ARMOR
#############

#PROT ONE
replaceitem entity @a[team=Alban,scores={protTier=1}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @a[team=Alban,scores={protTier=1}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @a[team=Alban,scores={protTier=1,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @a[team=Alban,scores={protTier=1,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:1908001}}

#PROT TWO
replaceitem entity @a[team=Alban,scores={protTier=2}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @a[team=Alban,scores={protTier=2}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @a[team=Alban,scores={protTier=2,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @a[team=Alban,scores={protTier=2,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:1908001}}


#PROT THREE
replaceitem entity @a[team=Alban,scores={protTier=3}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @a[team=Alban,scores={protTier=3}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @a[team=Alban,scores={protTier=3,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @a[team=Alban,scores={protTier=3,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:1908001}}



#PROT FOUR
replaceitem entity @a[team=Alban,scores={protTier=4}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @a[team=Alban,scores={protTier=4}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @a[team=Alban,scores={protTier=4,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @a[team=Alban,scores={protTier=4,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:1908001}}



#############
#AUSTIN LEATHER ARMOR
#############

#PROT ONE
replaceitem entity @a[team=Austin,scores={protTier=1}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[team=Austin,scores={protTier=1}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[team=Austin,scores={protTier=1,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[team=Austin,scores={protTier=1,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

#PROT TWO
replaceitem entity @a[team=Austin,scores={protTier=2}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[team=Austin,scores={protTier=2}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[team=Austin,scores={protTier=2,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[team=Austin,scores={protTier=2,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:16383998}}


#PROT THREE
replaceitem entity @a[team=Austin,scores={protTier=3}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[team=Austin,scores={protTier=3}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[team=Austin,scores={protTier=3,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[team=Austin,scores={protTier=3,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:16383998}}



#PROT FOUR
replaceitem entity @a[team=Austin,scores={protTier=4}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[team=Austin,scores={protTier=4}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[team=Austin,scores={protTier=4,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[team=Austin,scores={protTier=4,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:16383998}}


#############
#Main LEATHER ARMOR
#############

#PROT ONE
replaceitem entity @a[team=Main,scores={protTier=1}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @a[team=Main,scores={protTier=1}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @a[team=Main,scores={protTier=1,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @a[team=Main,scores={protTier=1,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:3949738}}

#PROT TWO
replaceitem entity @a[team=Main,scores={protTier=2}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @a[team=Main,scores={protTier=2}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @a[team=Main,scores={protTier=2,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @a[team=Main,scores={protTier=2,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:3949738}}


#PROT THREE
replaceitem entity @a[team=Main,scores={protTier=3}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @a[team=Main,scores={protTier=3}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @a[team=Main,scores={protTier=3,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @a[team=Main,scores={protTier=3,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:3949738}}



#PROT FOUR
replaceitem entity @a[team=Main,scores={protTier=4}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @a[team=Main,scores={protTier=4}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @a[team=Main,scores={protTier=4,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @a[team=Main,scores={protTier=4,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:3949738}}


#############
#Moore LEATHER ARMOR
#############

#PROT ONE
replaceitem entity @a[team=Moore,scores={protTier=1}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @a[team=Moore,scores={protTier=1}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @a[team=Moore,scores={protTier=1,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @a[team=Moore,scores={protTier=1,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:11546150}}

#PROT TWO
replaceitem entity @a[team=Moore,scores={protTier=2}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @a[team=Moore,scores={protTier=2}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @a[team=Moore,scores={protTier=2,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @a[team=Moore,scores={protTier=2,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:11546150}}


#PROT THREE
replaceitem entity @a[team=Moore,scores={protTier=3}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @a[team=Moore,scores={protTier=3}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @a[team=Moore,scores={protTier=3,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @a[team=Moore,scores={protTier=3,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:11546150}}



#PROT FOUR
replaceitem entity @a[team=Moore,scores={protTier=4}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @a[team=Moore,scores={protTier=4}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @a[team=Moore,scores={protTier=4,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @a[team=Moore,scores={protTier=4,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
#ON RESPAWN
tell @s respawning!
gamemode adventure @s

title @s clear
scoreboard players set @s dead 0
scoreboard players set @s justDied 0

tp @s[team=Alban] @e[limit=1,tag=albanSpawn]
tp @s[team=Austin] @e[limit=1,tag=austinSpawn]
tp @s[team=Main] @e[limit=1,tag=mainSpawn]
tp @s[team=Moore] @e[limit=1,tag=mooreSpawn]

#Gives axes, picks based on appropriate tier
replaceitem entity @s[scores={axeTier=0}] container.3 minecraft:air
replaceitem entity @s[scores={axeTier=1}] container.3 minecraft:wooden_axe
replaceitem entity @s[scores={axeTier=2}] container.3 minecraft:stone_axe
replaceitem entity @s[scores={axeTier=3}] container.3 minecraft:iron_axe
replaceitem entity @s[scores={axeTier=4}] container.3 minecraft:diamond_axe
replaceitem entity @s[scores={axeTier=5}] container.3 minecraft:golden_axe

replaceitem entity @s[scores={pickTier=0}] container.2 minecraft:air
replaceitem entity @s[scores={pickTier=1}] container.2 minecraft:wooden_pickaxe
replaceitem entity @s[scores={pickTier=2}] container.2 minecraft:stone_pickaxe
replaceitem entity @s[scores={pickTier=3}] container.2 minecraft:iron_pickaxe
replaceitem entity @s[scores={pickTier=4}] container.2 minecraft:diamond_pickaxe
replaceitem entity @s[scores={pickTier=5}] container.2 minecraft:golden_pickaxe


#UPDATES LOWER PIECES FOR PLAYERS WITH CHAIN ARMOR
replaceitem entity @s[scores={protTier=1,armorTier=1}] armor.legs chainmail_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @s[scores={protTier=1,armorTier=1}] armor.feet chainmail_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

replaceitem entity @s[scores={protTier=2,armorTier=1}] armor.legs chainmail_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @s[scores={protTier=2,armorTier=1}] armor.feet chainmail_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

replaceitem entity @s[scores={protTier=3,armorTier=1}] armor.legs chainmail_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @s[scores={protTier=3,armorTier=1}] armor.feet chainmail_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

replaceitem entity @s[scores={protTier=4,armorTier=1}] armor.legs chainmail_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @s[scores={protTier=4,armorTier=1}] armor.feet chainmail_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

#UPDATES LOWER PIECES FOR PLAYERS WITH IRON ARMOR
replaceitem entity @s[scores={protTier=1,armorTier=2}] armor.legs iron_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @s[scores={protTier=1,armorTier=2}] armor.feet iron_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

replaceitem entity @s[scores={protTier=2,armorTier=2}] armor.legs iron_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @s[scores={protTier=2,armorTier=2}] armor.feet iron_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

replaceitem entity @s[scores={protTier=3,armorTier=2}] armor.legs iron_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @s[scores={protTier=3,armorTier=2}] armor.feet iron_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

replaceitem entity @s[scores={protTier=4,armorTier=2}] armor.legs iron_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @s[scores={protTier=4,armorTier=2}] armor.feet iron_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

#UPDATES LOWER PIECES FOR PLAYERS WITH DIAMOND ARMOR
replaceitem entity @s[scores={protTier=1,armorTier=3}] armor.legs diamond_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @s[scores={protTier=1,armorTier=3}] armor.feet diamond_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

replaceitem entity @s[scores={protTier=2,armorTier=3}] armor.legs diamond_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @s[scores={protTier=2,armorTier=3}] armor.feet diamond_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

replaceitem entity @s[scores={protTier=3,armorTier=3}] armor.legs diamond_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @s[scores={protTier=3,armorTier=3}] armor.feet diamond_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

replaceitem entity @s[scores={protTier=4,armorTier=3}] armor.legs diamond_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @s[scores={protTier=4,armorTier=3}] armor.feet diamond_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

#############
#ALBAN LEATHER ARMOR
#############

#PROT ONE
replaceitem entity @s[team=Alban,scores={protTier=1}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @s[team=Alban,scores={protTier=1}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @s[team=Alban,scores={protTier=1,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @s[team=Alban,scores={protTier=1,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:1908001}}

#PROT TWO
replaceitem entity @s[team=Alban,scores={protTier=2}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @s[team=Alban,scores={protTier=2}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @s[team=Alban,scores={protTier=2,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @s[team=Alban,scores={protTier=2,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:1908001}}


#PROT THREE
replaceitem entity @s[team=Alban,scores={protTier=3}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @s[team=Alban,scores={protTier=3}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @s[team=Alban,scores={protTier=3,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @s[team=Alban,scores={protTier=3,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:1908001}}



#PROT FOUR
replaceitem entity @s[team=Alban,scores={protTier=4}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @s[team=Alban,scores={protTier=4}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @s[team=Alban,scores={protTier=4,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @s[team=Alban,scores={protTier=4,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:1908001}}



#############
#AUSTIN LEATHER ARMOR
#############

#PROT ONE
replaceitem entity @s[team=Austin,scores={protTier=1}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @s[team=Austin,scores={protTier=1}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @s[team=Austin,scores={protTier=1,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @s[team=Austin,scores={protTier=1,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

#PROT TWO
replaceitem entity @s[team=Austin,scores={protTier=2}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @s[team=Austin,scores={protTier=2}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @s[team=Austin,scores={protTier=2,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @s[team=Austin,scores={protTier=2,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:16383998}}


#PROT THREE
replaceitem entity @s[team=Austin,scores={protTier=3}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @s[team=Austin,scores={protTier=3}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @s[team=Austin,scores={protTier=3,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @s[team=Austin,scores={protTier=3,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:16383998}}



#PROT FOUR
replaceitem entity @s[team=Austin,scores={protTier=4}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @s[team=Austin,scores={protTier=4}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @s[team=Austin,scores={protTier=4,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @s[team=Austin,scores={protTier=4,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:16383998}}


#############
#Main LEATHER ARMOR
#############

#PROT ONE
replaceitem entity @s[team=Main,scores={protTier=1}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @s[team=Main,scores={protTier=1}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @s[team=Main,scores={protTier=1,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @s[team=Main,scores={protTier=1,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:3949738}}

#PROT TWO
replaceitem entity @s[team=Main,scores={protTier=2}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @s[team=Main,scores={protTier=2}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @s[team=Main,scores={protTier=2,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @s[team=Main,scores={protTier=2,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:3949738}}


#PROT THREE
replaceitem entity @s[team=Main,scores={protTier=3}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @s[team=Main,scores={protTier=3}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @s[team=Main,scores={protTier=3,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @s[team=Main,scores={protTier=3,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:3949738}}



#PROT FOUR
replaceitem entity @s[team=Main,scores={protTier=4}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @s[team=Main,scores={protTier=4}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @s[team=Main,scores={protTier=4,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @s[team=Main,scores={protTier=4,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:3949738}}


#############
#Moore LEATHER ARMOR
#############

#PROT ONE
replaceitem entity @s[team=Moore,scores={protTier=1}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @s[team=Moore,scores={protTier=1}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @s[team=Moore,scores={protTier=1,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @s[team=Moore,scores={protTier=1,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:11546150}}

#PROT TWO
replaceitem entity @s[team=Moore,scores={protTier=2}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @s[team=Moore,scores={protTier=2}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @s[team=Moore,scores={protTier=2,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @s[team=Moore,scores={protTier=2,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:11546150}}


#PROT THREE
replaceitem entity @s[team=Moore,scores={protTier=3}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @s[team=Moore,scores={protTier=3}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @s[team=Moore,scores={protTier=3,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @s[team=Moore,scores={protTier=3,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:11546150}}



#PROT FOUR
replaceitem entity @s[team=Moore,scores={protTier=4}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @s[team=Moore,scores={protTier=4}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @s[team=Moore,scores={protTier=4,armorTier=0}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @s[team=Moore,scores={protTier=4,armorTier=0}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:11546150}}


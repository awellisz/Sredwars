#################################
### INVISIBILITY POTION LOGIC ###
#################################

scoreboard objectives add invis dummy

execute as @a[nbt={ActiveEffects:[{Id:14b}]}] at @s run replaceitem entity @s armor.head air
execute as @a[nbt={ActiveEffects:[{Id:14b}]}] at @s run replaceitem entity @s armor.chest air
execute as @a[nbt={ActiveEffects:[{Id:14b}]}] at @s run replaceitem entity @s armor.legs air
execute as @a[nbt={ActiveEffects:[{Id:14b}]}] at @s run replaceitem entity @s armor.feet air

execute as @a[nbt={ActiveEffects:[{Id:14b}]}] at @s run scoreboard players add @s invis 1

#############################################
### ADD ARMOR BACK IN ONCE INVIS RUNS OUT ###
#############################################

## stolen from on_respawn.mcfunction, basically, but with invis=600 added to scores={} in the selector

## UPDATES LOWER PIECES FOR PLAYERS WITH CHAIN ARMOR
replaceitem entity @a[scores={protTier=1,armorTier=1,invis=600}] armor.legs chainmail_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[scores={protTier=1,armorTier=1,invis=600}] armor.feet chainmail_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

replaceitem entity @a[scores={protTier=2,armorTier=1,invis=600}] armor.legs chainmail_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[scores={protTier=2,armorTier=1,invis=600}] armor.feet chainmail_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

replaceitem entity @a[scores={protTier=3,armorTier=1,invis=600}] armor.legs chainmail_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[scores={protTier=3,armorTier=1,invis=600}] armor.feet chainmail_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

replaceitem entity @a[scores={protTier=4,armorTier=1,invis=600}] armor.legs chainmail_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[scores={protTier=4,armorTier=1,invis=600}] armor.feet chainmail_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

## UPDATES LOWER PIECES FOR PLAYERS WITH IRON ARMOR
replaceitem entity @a[scores={protTier=1,armorTier=2,invis=600}] armor.legs iron_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[scores={protTier=1,armorTier=2,invis=600}] armor.feet iron_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

replaceitem entity @a[scores={protTier=2,armorTier=2,invis=600}] armor.legs iron_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[scores={protTier=2,armorTier=2,invis=600}] armor.feet iron_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

replaceitem entity @a[scores={protTier=3,armorTier=2,invis=600}] armor.legs iron_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[scores={protTier=3,armorTier=2,invis=600}] armor.feet iron_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

replaceitem entity @a[scores={protTier=4,armorTier=2,invis=600}] armor.legs iron_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[scores={protTier=4,armorTier=2,invis=600}] armor.feet iron_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

### UPDATES LOWER PIECES FOR PLAYERS WITH DIAMOND ARMOR
replaceitem entity @a[scores={protTier=1,armorTier=3,invis=600}] armor.legs diamond_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[scores={protTier=1,armorTier=3,invis=600}] armor.feet diamond_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

replaceitem entity @a[scores={protTier=2,armorTier=3,invis=600}] armor.legs diamond_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[scores={protTier=2,armorTier=3,invis=600}] armor.feet diamond_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

replaceitem entity @a[scores={protTier=3,armorTier=3,invis=600}] armor.legs diamond_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[scores={protTier=3,armorTier=3,invis=600}] armor.feet diamond_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

replaceitem entity @a[scores={protTier=4,armorTier=3,invis=600}] armor.legs diamond_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[scores={protTier=4,armorTier=3,invis=600}] armor.feet diamond_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

#######################
# ALBAN LEATHER ARMOR #
#######################

# PROT ONE
replaceitem entity @a[team=Alban,scores={protTier=1,invis=600}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @a[team=Alban,scores={protTier=1,invis=600}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @a[team=Alban,scores={protTier=1,armorTier=0,invis=600}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @a[team=Alban,scores={protTier=1,armorTier=0,invis=600}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:1908001}}

# PROT TWO
replaceitem entity @a[team=Alban,scores={protTier=2,invis=600}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @a[team=Alban,scores={protTier=2,invis=600}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @a[team=Alban,scores={protTier=2,armorTier=0,invis=600}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @a[team=Alban,scores={protTier=2,armorTier=0,invis=600}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:1908001}}


# PROT THREE
replaceitem entity @a[team=Alban,scores={protTier=3,invis=600}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @a[team=Alban,scores={protTier=3,invis=600}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @a[team=Alban,scores={protTier=3,armorTier=0,invis=600}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @a[team=Alban,scores={protTier=3,armorTier=0,invis=600}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:1908001}}



# PROT FOUR
replaceitem entity @a[team=Alban,scores={protTier=4,invis=600}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @a[team=Alban,scores={protTier=4,invis=600}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @a[team=Alban,scores={protTier=4,armorTier=0,invis=600}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:1908001}}
replaceitem entity @a[team=Alban,scores={protTier=4,armorTier=0,invis=600}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:1908001}}



########################
# AUSTIN LEATHER ARMOR #
########################

# PROT ONE
replaceitem entity @a[team=Austin,scores={protTier=1,invis=600}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[team=Austin,scores={protTier=1,invis=600}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[team=Austin,scores={protTier=1,armorTier=0,invis=600}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[team=Austin,scores={protTier=1,armorTier=0,invis=600}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:16383998}}

# PROT TWO
replaceitem entity @a[team=Austin,scores={protTier=2,invis=600}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[team=Austin,scores={protTier=2,invis=600}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[team=Austin,scores={protTier=2,armorTier=0,invis=600}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[team=Austin,scores={protTier=2,armorTier=0,invis=600}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:16383998}}


# PROT THREE
replaceitem entity @a[team=Austin,scores={protTier=3,invis=600}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[team=Austin,scores={protTier=3,invis=600}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[team=Austin,scores={protTier=3,armorTier=0,invis=600}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[team=Austin,scores={protTier=3,armorTier=0,invis=600}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:16383998}}



# PROT FOUR
replaceitem entity @a[team=Austin,scores={protTier=4,invis=600}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[team=Austin,scores={protTier=4,invis=600}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[team=Austin,scores={protTier=4,armorTier=0,invis=600}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:16383998}}
replaceitem entity @a[team=Austin,scores={protTier=4,armorTier=0,invis=600}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:16383998}}


######################
# MAIN LEATHER ARMOR #
######################

# PROT ONE
replaceitem entity @a[team=Main,scores={protTier=1,invis=600}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @a[team=Main,scores={protTier=1,invis=600}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @a[team=Main,scores={protTier=1,armorTier=0,invis=600}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @a[team=Main,scores={protTier=1,armorTier=0,invis=600}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:3949738}}

# PROT TWO
replaceitem entity @a[team=Main,scores={protTier=2,invis=600}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @a[team=Main,scores={protTier=2,invis=600}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @a[team=Main,scores={protTier=2,armorTier=0,invis=600}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @a[team=Main,scores={protTier=2,armorTier=0,invis=600}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:3949738}}

# PROT THREE
replaceitem entity @a[team=Main,scores={protTier=3,invis=600}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @a[team=Main,scores={protTier=3,invis=600}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @a[team=Main,scores={protTier=3,armorTier=0,invis=600}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @a[team=Main,scores={protTier=3,armorTier=0,invis=600}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:3949738}}

# PROT FOUR
replaceitem entity @a[team=Main,scores={protTier=4,invis=600}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @a[team=Main,scores={protTier=4,invis=600}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @a[team=Main,scores={protTier=4,armorTier=0,invis=600}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:3949738}}
replaceitem entity @a[team=Main,scores={protTier=4,armorTier=0,invis=600}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:3949738}}


#######################
# MOORE LEATHER ARMOR #
#######################

# PROT ONE
replaceitem entity @a[team=Moore,scores={protTier=1,invis=600}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @a[team=Moore,scores={protTier=1,invis=600}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @a[team=Moore,scores={protTier=1,armorTier=0,invis=600}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @a[team=Moore,scores={protTier=1,armorTier=0,invis=600}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:1}],Unbreakable:1,HideFlags:36,display:{color:11546150}}

# PROT TWO
replaceitem entity @a[team=Moore,scores={protTier=2,invis=600}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @a[team=Moore,scores={protTier=2,invis=600}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @a[team=Moore,scores={protTier=2,armorTier=0,invis=600}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @a[team=Moore,scores={protTier=2,armorTier=0,invis=600}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:2}],Unbreakable:1,HideFlags:36,display:{color:11546150}}


# PROT THREE
replaceitem entity @a[team=Moore,scores={protTier=3,invis=600}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @a[team=Moore,scores={protTier=3,invis=600}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @a[team=Moore,scores={protTier=3,armorTier=0,invis=600}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @a[team=Moore,scores={protTier=3,armorTier=0,invis=600}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:3}],Unbreakable:1,HideFlags:36,display:{color:11546150}}

# PROT FOUR
replaceitem entity @a[team=Moore,scores={protTier=4,invis=600}] armor.head leather_helmet{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @a[team=Moore,scores={protTier=4,invis=600}] armor.chest leather_chestplate{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @a[team=Moore,scores={protTier=4,armorTier=0,invis=600}] armor.legs leather_leggings{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:11546150}}
replaceitem entity @a[team=Moore,scores={protTier=4,armorTier=0,invis=600}] armor.feet leather_boots{Enchantments:[{id:blast_protection,lvl:4},{id:protection,lvl:4}],Unbreakable:1,HideFlags:36,display:{color:11546150}}

######################
# RESET INVIS SCORES #
######################

execute as @a[scores={invis=600..}] run effect clear @s
execute as @a[scores={invis=600..}] run scoreboard players reset @s invis

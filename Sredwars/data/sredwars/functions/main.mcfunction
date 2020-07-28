#############
### INVIS ###
#############

function sredwars:invis

####################
### ENDER PEARLS ###
####################

scoreboard players add @a[scores={pearled=1..}] pearlTimer 1
execute as @a[scores={pearlTimer=19..}] run gamerule fallDamage true

execute as @e[type=minecraft:ender_pearl] at @s unless block ^ ^ ^1 air run gamerule fallDamage false
execute as @e[type=minecraft:ender_pearl] at @s unless block ^ ^-1 ^1 air run gamerule fallDamage false
execute as @e[type=minecraft:ender_pearl] at @s unless block ^ ^-1 ^ air run gamerule fallDamage false

execute as @e[type=minecraft:ender_pearl] at @s unless block ^ ^ ^1 air run scoreboard players reset @a[scores={pearlTimer=20..}] pearlTimer
execute as @e[type=minecraft:ender_pearl] at @s unless block ^ ^-1 ^1 air run scoreboard players reset @a[scores={pearlTimer=20..}] pearlTimer
execute as @e[type=minecraft:ender_pearl] at @s unless block ^ ^-1 ^ air run scoreboard players reset @a[scores={pearlTimer=20..}] pearlTimer

###################
### BRIDGE EGGS ###
###################

### TAG EGGS BASED ON WHO THREW IT
execute as @e[type=egg] at @s if entity @a[team=Austin,distance=..2] run tag @s add austinEgg
execute as @e[type=egg] at @s if entity @a[team=Alban,distance=..2] run tag @s add albanEgg
execute as @e[type=egg] at @s if entity @a[team=Main,distance=..2] run tag @s add mainEgg
execute as @e[type=egg] at @s if entity @a[team=Moore,distance=..2] run tag @s add mooreEgg
### FILL BASED ON TEAM COLOR
execute as @e[type=egg,tag=austinEgg] at @s run fill ^1 ^-2 ^ ^ ^-2 ^1 white_wool replace air
execute as @e[type=egg,tag=albanEgg] at @s run fill ^1 ^-2 ^ ^ ^-2 ^1 black_wool replace air
execute as @e[type=egg,tag=mainEgg] at @s run fill ^1 ^-2 ^ ^ ^-2 ^1 blue_wool replace air
execute as @e[type=egg,tag=mooreEgg] at @s run fill ^1 ^-2 ^ ^ ^-2 ^1 red_wool replace air
### KILL EGGS AFTER A CERTAIN AMOUNT OF TIME
scoreboard players add @e[type=egg] flightTime 1
kill @e[type=egg,scores={flightTime=10..}]

################
### BED BUGS ###
################

execute as @e[type=minecraft:snowball,scores={flightTime=0..}] at @s unless blocks ~.75 ~.75 ~.75 ~-.75 ~-.75 ~-.75 ~ ~ ~ masked run summon minecraft:silverfish ~ ~ ~
execute as @e[type=minecraft:snowball,scores={flightTime=2..}] at @s unless blocks ~.75 ~.75 ~.75 ~-.75 ~-.75 ~-.75 ~ ~ ~ masked run kill @s
scoreboard players add @e[type=snowball] flightTime 1

##################
### GENERATORS ###
##################

### ROTATING GENERATOR BLOCKS
execute as @e[type=armor_stand,tag=emGen] at @s run tp @s ~ ~ ~ ~2 ~
execute as @e[type=armor_stand,tag=diaGen] at @s run tp @s ~ ~ ~ ~2 ~


#####################
### POP-UP TOWERS ###
#####################

# Remove chests when placed
execute as @a[scores={placedTower=1..}] at @s run fill ~-6 ~-5 ~-6 ~6 ~6 ~6 minecraft:air replace minecraft:trapped_chest

### ALBAN
# Facing SOUTH
execute as @a[team=Alban,y_rotation=315..45,scores={placedTower=1..}] at @s run function sredwars:south_alban
# WEST
execute as @a[team=Alban,y_rotation=45..135,scores={placedTower=1..}] at @s run function sredwars:west_alban
# NORTH
execute as @a[team=Alban,y_rotation=135..225,scores={placedTower=1..}] at @s run function sredwars:north_alban
# EAST
execute as @a[team=Alban,y_rotation=225..315,scores={placedTower=1..}] at @s run function sredwars:east_alban

### AUSTIN
# SOUTH
execute as @a[team=Austin,y_rotation=315..45,scores={placedTower=1..}] at @s run function sredwars:south_austin
# WEST
execute as @a[team=Austin,y_rotation=45..135,scores={placedTower=1..}] at @s run function sredwars:west_austin
# NORTH
execute as @a[team=Austin,y_rotation=135..225,scores={placedTower=1..}] at @s run function sredwars:north_austin
# EAST
execute as @a[team=Austin,y_rotation=225..315,scores={placedTower=1..}] at @s run function sredwars:east_austin

### MAIN
# SOUTH
execute as @a[team=Main,y_rotation=315..45,scores={placedTower=1..}] at @s run function sredwars:south_main
# WEST
execute as @a[team=Main,y_rotation=45..135,scores={placedTower=1..}] at @s run function sredwars:west_main
# NORTH
execute as @a[team=Main,y_rotation=135..225,scores={placedTower=1..}] at @s run function sredwars:north_main
# EAST
execute as @a[team=Main,y_rotation=225..315,scores={placedTower=1..}] at @s run function sredwars:east_main

### MOORE
# SOUTH
execute as @a[team=Moore,y_rotation=315..45,scores={placedTower=1..}] at @s run function sredwars:south_moore
# WEST
execute as @a[team=Moore,y_rotation=45..135,scores={placedTower=1..}] at @s run function sredwars:west_moore
# NORTH
execute as @a[team=Moore,y_rotation=135..225,scores={placedTower=1..}] at @s run function sredwars:north_moore
# EAST
execute as @a[team=Moore,y_rotation=225..315,scores={placedTower=1..}] at @s run function sredwars:east_moore

# Reset placedTower after all potential tower commands run
scoreboard players set @a placedTower 0


#####################
### MISCELLANEOUS ###
#####################

### Red particles if carrying TNT (in this case, either creeper egg or tnt)
execute as @a[gamemode=!spectator,nbt={Inventory:[{id:"minecraft:creeper_spawn_egg"}]}] at @s unless entity @s[nbt={ActiveEffects:[{Id:14b}]}] run particle dust 1.000 0.000 0.000 1 ~ ~2.3 ~ 0 0 0 1 0 normal
execute as @a[gamemode=!spectator,nbt={Inventory:[{id:"minecraft:tnt"}]}] at @s unless entity @s[nbt={ActiveEffects:[{Id:14b}]}] run particle dust 1.000 0.000 0.000 1 ~ ~2.3 ~ 0 0 0 1 0 normal

### Destroy empty buckets and empty glass bottles in player inventories
clear @a minecraft:bucket
clear @a minecraft:glass_bottle

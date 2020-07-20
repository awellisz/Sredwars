#################################
### INVISIBILITY POTION LOGIC ###
#################################

## Timer for invis time for armor
scoreboard objectives add invis dummy
## Temp health to detect if health has changed
scoreboard objectives add tempHealth dummy

execute as @a[nbt={ActiveEffects:[{Id:14b}]}] at @s run replaceitem entity @s armor.head air
execute as @a[nbt={ActiveEffects:[{Id:14b}]}] at @s run replaceitem entity @s armor.chest air
execute as @a[nbt={ActiveEffects:[{Id:14b}]}] at @s run replaceitem entity @s armor.legs air
execute as @a[nbt={ActiveEffects:[{Id:14b}]}] at @s run replaceitem entity @s armor.feet air

execute as @a[nbt={ActiveEffects:[{Id:14b}]}] at @s run scoreboard players add @s invis 1

#####################
### DETECT DAMAGE ###
#####################

execute as @a[nbt={ActiveEffects:[{Id:14b}]}] if score @s tempHealth > @s playerHealth run scoreboard players set @s invis 600
execute as @a[nbt={ActiveEffects:[{Id:14b}]}] run scoreboard players operation @s tempHealth = @s playerHealth

######################
# RESET INVIS SCORES #
######################

execute as @a[scores={invis=600..}] run effect clear @s
### In update_armor, armor is only updated if your invis score is -1
execute as @a[scores={invis=600..}] run scoreboard players set @s invis -1
execute as @a[scores={invis=600..}] run function sredwars:update_armor

#called at each game start

scoreboard players set @a dead 0
scoreboard players set @a respawnTime -1
scoreboard players set @a brokeWhiteBed 0
scoreboard players set @a brokeBlackBed 0
scoreboard players set @a brokeBlueBed 0
scoreboard players set @a brokeRedBed 0
scoreboard players set @a hasBed 1
scoreboard players set @a protTier 0
scoreboard players set @a armorTier 0
scoreboard players set @a hasteTier 0
scoreboard players set @a hasSharpness 0
scoreboard players set @a hasHealPool 0
scoreboard players set @a diamonds 0
scoreboard players set @a gold 0
scoreboard players set @a iron 0
scoreboard players set @a drankPotion 0
scoreboard players set @a pickTier 0
scoreboard players set @a axeTier 0
scoreboard players set @a invis -1

## Reset generators
kill @e[type=Item]

function sredwars:update_armor

tp @a[team=Alban] @e[tag=albanSpawn,type=armor_stand,limit=1]
tp @a[team=Austin] @e[tag=austinSpawn,type=armor_stand,limit=1]
tp @a[team=Main] @e[tag=mainSpawn,type=armor_stand,limit=1]
tp @a[team=Moore] @e[tag=mooreSpawn,type=armor_stand,limit=1]

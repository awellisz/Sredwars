#front wall
fill ~-1 ~ ~-2 ~1 ~4 ~-2 minecraft:black_wool replace minecraft:air
#doorway
fill ~ ~ ~-2 ~ ~1 ~-2 minecraft:air replace minecraft:black_wool
#side walls
fill ~-2 ~ ~-3 ~-2 ~4 ~-5 minecraft:black_wool replace minecraft:air
fill ~2 ~ ~-3 ~2 ~4 ~-5 minecraft:black_wool replace minecraft:air
#rear wall
fill ~-1 ~ ~-6 ~1 ~4 ~-6 minecraft:black_wool replace minecraft:air
#upper rings
fill ~2 ~5 ~-1 ~-2 ~5 ~-1 minecraft:black_wool replace minecraft:air
fill ~2 ~5 ~-7 ~-2 ~5 ~-7 minecraft:black_wool replace minecraft:air
fill ~-3 ~5 ~-2 ~-3 ~5 ~-6 minecraft:black_wool replace minecraft:air
fill ~3 ~5 ~-2 ~3 ~5 ~-6 minecraft:black_wool replace minecraft:air
#Crenellations
setblock ~2 ~6 ~-1 minecraft:black_wool keep
setblock ~2 ~4 ~-1 minecraft:black_wool keep
setblock ~-2 ~4 ~-1 minecraft:black_wool keep
setblock ~-2 ~6 ~-1 minecraft:black_wool keep
setblock ~ ~4 ~-1 minecraft:black_wool keep
setblock ~ ~6 ~-1 minecraft:black_wool keep
setblock ~2 ~6 ~-7 minecraft:black_wool keep
setblock ~2 ~4 ~-7 minecraft:black_wool keep
setblock ~-2 ~4 ~-7 minecraft:black_wool keep
setblock ~-2 ~6 ~-7 minecraft:black_wool keep
setblock ~ ~4 ~-7 minecraft:black_wool keep
setblock ~ ~6 ~-7 minecraft:black_wool keep
setblock ~3 ~4 ~-2 minecraft:black_wool keep
setblock ~3 ~6 ~-2 minecraft:black_wool keep
setblock ~3 ~6 ~-4 minecraft:black_wool keep
setblock ~3 ~4 ~-4 minecraft:black_wool keep
setblock ~3 ~6 ~-6 minecraft:black_wool keep
setblock ~3 ~4 ~-6 minecraft:black_wool keep
setblock ~-3 ~4 ~-2 minecraft:black_wool keep
setblock ~-3 ~6 ~-2 minecraft:black_wool keep
setblock ~-3 ~6 ~-4 minecraft:black_wool keep
setblock ~-3 ~4 ~-4 minecraft:black_wool keep
setblock ~-3 ~6 ~-6 minecraft:black_wool keep
setblock ~-3 ~4 ~-6 minecraft:black_wool keep
#ladders
fill ~ ~ ~-5 ~ ~4 ~-5 minecraft:ladder[facing=south] replace minecraft:air
#roof
fill ~2 ~4 ~-2 ~-2 ~4 ~-6 minecraft:black_wool replace minecraft:air
playsound minecraft:entity.chicken.egg player @a[sort=nearest,limit=3] ~ ~ ~
playsound minecraft:entity.chicken.egg player @a[sort=nearest,limit=3] ~ ~ ~
playsound minecraft:entity.chicken.egg player @a[sort=nearest,limit=3] ~ ~ ~
playsound minecraft:entity.chicken.egg player @a[sort=nearest,limit=3] ~ ~ ~
playsound minecraft:entity.chicken.egg player @a[sort=nearest,limit=3] ~ ~ ~
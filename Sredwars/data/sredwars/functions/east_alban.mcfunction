#front wall
fill ~2 ~ ~-1 ~2 ~4 ~1 minecraft:black_wool replace minecraft:air
#doorway
fill ~2 ~ ~ ~2 ~1 ~ minecraft:air replace minecraft:black_wool
#side walls
fill ~3 ~ ~-2 ~5 ~4 ~-2 minecraft:black_wool replace minecraft:air
fill ~3 ~ ~2 ~5 ~4 ~2 minecraft:black_wool replace minecraft:air
#rear wall
fill ~6 ~ ~-1 ~6 ~4 ~1 minecraft:black_wool replace minecraft:air
#upper rings
fill ~1 ~5 ~2 ~1 ~5 ~-2 minecraft:black_wool replace minecraft:air
fill ~7 ~5 ~2 ~7 ~5 ~-2 minecraft:black_wool replace minecraft:air
fill ~2 ~5 ~-3 ~6 ~5 ~-3 minecraft:black_wool replace minecraft:air
fill ~2 ~5 ~3 ~6 ~5 ~3 minecraft:black_wool replace minecraft:air
#crenellations
setblock ~1 ~6 ~2 minecraft:black_wool keep
setblock ~1 ~4 ~2 minecraft:black_wool keep
setblock ~1 ~4 ~-2 minecraft:black_wool keep
setblock ~1 ~6 ~-2 minecraft:black_wool keep
setblock ~1 ~4 ~ minecraft:black_wool keep
setblock ~1 ~6 ~ minecraft:black_wool keep
setblock ~7 ~6 ~2 minecraft:black_wool keep
setblock ~7 ~4 ~2 minecraft:black_wool keep
setblock ~7 ~4 ~-2 minecraft:black_wool keep
setblock ~7 ~6 ~-2 minecraft:black_wool keep
setblock ~7 ~4 ~ minecraft:black_wool keep
setblock ~7 ~6 ~ minecraft:black_wool keep
setblock ~2 ~4 ~3 minecraft:black_wool keep
setblock ~2 ~6 ~3 minecraft:black_wool keep
setblock ~4 ~6 ~3 minecraft:black_wool keep
setblock ~4 ~4 ~3 minecraft:black_wool keep
setblock ~6 ~6 ~3 minecraft:black_wool keep
setblock ~6 ~4 ~3 minecraft:black_wool keep
setblock ~2 ~4 ~-3 minecraft:black_wool keep
setblock ~2 ~6 ~-3 minecraft:black_wool keep
setblock ~4 ~6 ~-3 minecraft:black_wool keep
setblock ~4 ~4 ~-3 minecraft:black_wool keep
setblock ~6 ~6 ~-3 minecraft:black_wool keep
setblock ~6 ~4 ~-3 minecraft:black_wool keep
#ladders
fill ~5 ~ ~ ~5 ~4 ~ minecraft:ladder[facing=west] replace minecraft:air
#roof
fill ~2 ~4 ~2 ~6 ~4 ~-2 minecraft:black_wool replace minecraft:air

playsound minecraft:entity.chicken.egg player @a[sort=nearest,limit=3] ~ ~ ~
playsound minecraft:entity.chicken.egg player @a[sort=nearest,limit=3] ~ ~ ~
playsound minecraft:entity.chicken.egg player @a[sort=nearest,limit=3] ~ ~ ~
playsound minecraft:entity.chicken.egg player @a[sort=nearest,limit=3] ~ ~ ~
playsound minecraft:entity.chicken.egg player @a[sort=nearest,limit=3] ~ ~ ~
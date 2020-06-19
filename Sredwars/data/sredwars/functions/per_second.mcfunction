#DISPLAY RESPAWN COUNTDOWN TITLES
title @a[scores={hasBed=1,respawnTime=1}] subtitle [{"text":"You will respawn in ","color":"yellow"},{"text":"1 ","color":"red"},{"text":"seconds.","color":"yellow"}]
title @a[scores={hasBed=1,respawnTime=2}] subtitle [{"text":"You will respawn in ","color":"yellow"},{"text":"2 ","color":"red"},{"text":"seconds.","color":"yellow"}]
title @a[scores={hasBed=1,respawnTime=3}] subtitle [{"text":"You will respawn in ","color":"yellow"},{"text":"3 ","color":"red"},{"text":"seconds.","color":"yellow"}]
title @a[scores={hasBed=1,respawnTime=4}] subtitle [{"text":"You will respawn in ","color":"yellow"},{"text":"4 ","color":"red"},{"text":"seconds.","color":"yellow"}]
title @a[scores={hasBed=1,respawnTime=5}] subtitle [{"text":"You will respawn in ","color":"yellow"},{"text":"5 ","color":"red"},{"text":"seconds.","color":"yellow"}]


#DECREASE PLAYER RESPAWN TIME
scoreboard players remove @a[scores={hasBed=1,respawnTime=1..,dead=1..}] respawnTime 1

#DECREASE GENERATOR COUNTDOWNS
scoreboard players remove @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=1..}] emTimer 1
scoreboard players remove @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=1..}] diaTimer 1


#DROP RESPECTIVE ITEMS
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=0}] at @s run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:emerald",Count:1b}}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=0}] at @s run summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:diamond",Count:1b}}

#RESET GENERATOR COOLDOWNS
#TO-DO: MODIFY RESET TIMES BASED ON GENERATOR TIER
scoreboard players set @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=0}] emTimer 45
scoreboard players set @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=0}] diaTimer 25



#UPDATES EMERALD GENERATOR DISPLAYS
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=1}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 1","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=2}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 2","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=3}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 3","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=4}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 4","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=5}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 5","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=6}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 6","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=7}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 7","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=8}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 8","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=9}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 9","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=10}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 10","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=11}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 11","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=12}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 12","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=13}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 13","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=14}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 14","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=15}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 15","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=16}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 16","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=17}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 17","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=18}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 18","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=19}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 19","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=20}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 20","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=21}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 21","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=22}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 22","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=23}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 23","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=24}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 24","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=25}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 25","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=26}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 26","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=27}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 27","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=28}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 28","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=29}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 29","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=30}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 30","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=31}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 31","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=32}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 32","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=33}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 33","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=34}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 34","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=35}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 35","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=36}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 36","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=37}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 37","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=38}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 38","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=39}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 39","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=40}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 40","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=41}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 41","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=42}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 42","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=43}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 43","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=44}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 44","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=45}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 45","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=46}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 46","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=47}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 47","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=48}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 48","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=49}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 49","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=50}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 50","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=51}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 51","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=52}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 52","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=53}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 53","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=54}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 54","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=55}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 55","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=56}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 56","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=57}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 57","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=58}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 58","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=59}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 59","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=emGen,scores={emTimer=60}] run data modify entity @s CustomName set value {"text":"Emerald spawn in 60","color":"red"}

#UPDATES DIAMOND GENERATOR MESSAGES
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=1}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 1","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=2}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 2","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=3}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 3","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=4}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 4","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=5}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 5","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=6}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 6","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=7}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 7","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=8}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 8","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=9}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 9","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=10}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 10","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=11}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 11","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=12}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 12","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=13}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 13","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=14}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 14","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=15}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 15","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=16}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 16","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=17}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 17","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=18}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 18","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=19}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 19","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=20}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 20","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=21}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 21","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=22}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 22","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=23}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 23","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=24}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 24","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=25}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 25","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=26}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 26","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=27}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 27","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=28}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 28","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=29}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 29","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=30}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 30","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=31}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 31","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=32}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 32","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=33}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 33","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=34}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 34","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=35}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 35","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=36}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 36","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=37}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 37","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=38}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 38","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=39}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 39","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=40}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 40","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=41}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 41","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=42}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 42","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=43}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 43","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=44}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 44","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=45}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 45","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=46}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 46","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=47}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 47","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=48}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 48","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=49}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 49","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=50}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 50","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=51}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 51","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=52}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 52","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=53}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 53","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=54}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 54","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=55}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 55","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=56}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 56","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=57}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 57","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=58}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 58","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=59}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 59","color":"red"}
execute as @e[type=minecraft:armor_stand,tag=diaGen,scores={diaTimer=60}] run data modify entity @s CustomName set value {"text":"Diamond spawn in 60","color":"red"}


gamemode spectator @s


scoreboard players set @s dead 0
scoreboard players set @s respawnTime 5

title @s[scores={hasBed=0}] title {"text":"GAME OVER","color":"red","bold":"true"}

clear @s
function sredwars:update_armor

tp @s @e[tag=deathPoint,limit=1]

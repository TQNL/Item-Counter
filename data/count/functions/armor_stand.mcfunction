# check if an armor stand is for item counter
data modify storage ic:armor_stand Name set from entity @s CustomName
data modify storage ic:armor_stand Name set string storage ic:armor_stand Name 9 18
execute store success score #ic_test ic_test run data merge storage ic:armor_stand {Name:"itemcount"}
execute if score #ic_test ic_test matches 1 run return 0
scoreboard players reset #ic_test ic_test
data modify storage ic:armor_stand Name set from entity @s CustomName
data modify storage ic:armor_stand Name set string storage ic:armor_stand Name 18 -2

tag @s add ic_processed

# getting radius from name, fails if not a number
function count:item_counter_anchor with storage ic:armor_stand
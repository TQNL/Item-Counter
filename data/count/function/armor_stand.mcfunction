scoreboard players reset #ic_test ic_test

# check if an armor stand is for item counter
data merge storage ic:armor_stand {Name:"itemcount"}
execute store success score #ic_test ic_test run data modify storage ic:armor_stand Name set string entity @s CustomName 0 9
execute if score #ic_test ic_test matches 1 run return run data remove storage ic:armor_stand Name
data modify storage ic:armor_stand Name set string entity @s CustomName 9
tag @s add ic_processed

# getting radius from name, fails if not a number
function count:item_counter_anchor with storage ic:armor_stand
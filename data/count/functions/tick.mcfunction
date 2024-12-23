# reset item counting with /trigger
scoreboard players enable @a reset_count
execute as @a[scores={reset_count=1..}] at @s run scoreboard players reset * item_count
scoreboard players reset @a[scores={reset_count=1..}] reset_count

# count items around armorstand
execute as @e[type=armor_stand,tag=!ic_processed] run function count:armor_stand
execute as @e[tag=item_counter_anchor] at @s run function count:anchor1

# global item counter
scoreboard players enable @a global_item_counter
execute as @a[scores={global_item_counter=1..}] run function count:global_toggle

scoreboard players enable @a item_count_sidebar
execute as @a[scores={item_count_sidebar=1..}] run function count:sidebar

execute if score #global_toggle global_item_counter matches 1 as @e[type=item,tag=!ic_processed,sort=nearest,limit=1] at @s run function count:count with entity @s Item

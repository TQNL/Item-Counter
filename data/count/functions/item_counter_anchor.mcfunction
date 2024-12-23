$execute store success score #ic_test ic_test run scoreboard players set @s ic_radius $(Name)
$data merge entity @s {Small:1b,CustomNameVisible:1b,CustomName:'{"text": "item counter anchor | radius: $(Name)"}'}
data remove storage ic:armor_stand Name
tag @s add item_counter_anchor
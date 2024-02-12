$execute anchored eyes positioned ^ ^ ^$(Health) anchored feet run particle end_rod ~ ~ ~ 0.015625 0.015625 0.015625 0 1 force
tp @s ~ ~ ~ ~10 ~

# count items within radius
execute if score #global_toggle global_item_counter matches 1 run return 0

$execute at @e[type=item,tag=!ic_processed,sort=nearest,limit=1,distance=..$(Health)] run function count:anchor_items

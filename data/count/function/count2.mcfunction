$scoreboard players add $(thing) item_count $(count)
$scoreboard players add total_items item_count $(count)
execute if data entity @s Item.components."minecraft:container" run data merge entity @s {Fire:142}
execute if data entity @s Item.components."minecraft:bundle_contents" run data merge entity @s {Fire:142}
tag @s add ic_processed

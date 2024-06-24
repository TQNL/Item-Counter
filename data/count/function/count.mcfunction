data modify storage item:count thing set string entity @s Item.id 10
data modify storage item:count count set from entity @s Item.count
function count:count2 with storage item:count

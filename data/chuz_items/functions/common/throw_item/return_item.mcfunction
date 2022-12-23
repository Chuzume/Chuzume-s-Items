#> chuz_items:common/throw_item/return_item
#
# 投げたアイテムを返却
#
# @within function chuz_items:common/throw_item/start_reload

# ドロップできないアイテム
    data modify storage chuz:context Item merge from entity @s Item
    data modify storage chuz:context Item merge value {Slot:0b}
    data modify block 100001 0 100000 Items set value []
    data modify block 100001 0 100000 Items append from storage chuz:context Item
    loot spawn 100001 0 100000 mine 100001 0 100000 debug_stick

# 呼び出し
    execute positioned 100001 0 100000 as @e[type=item,sort=nearest,limit=1] run data modify entity @s PickupDelay set value 0
    execute positioned 100001 0 100000 as @e[type=item,sort=nearest,limit=1] at @p[tag=This] run tp @s ~ ~ ~

# キル
    kill @s
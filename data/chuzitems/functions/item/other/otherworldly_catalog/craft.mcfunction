#> chuzitems:item/otherworldly_catalog/craft
#
# 作成時
#
# @within advancement chuzitems:craft/otherworldly_catalog

# 演出
    execute anchored eyes positioned ^ ^ ^1.5 run playsound minecraft:block.wood.place player @a ~ ~ ~ 1 1
    execute anchored eyes positioned ^ ^ ^1.5 run playsound minecraft:ui.cartography_table.take_result player @a ~ ~ ~ 1 1

# 実行者の位置にアイテムを召喚
    execute at @s run loot spawn ~ ~ ~ loot chuzitems:item/otherworldly_catalog

# すぐに拾えるようにNBT変更
    data modify entity @e[type=item,sort=nearest,limit=1] PickupDelay set value 0

# クラフト時のダミー表示のチェストを削除
    clear @s chest 1

# 進捗消去
    advancement revoke @s only chuzitems:craft/otherworldly_catalog
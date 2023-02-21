#> chuzitems:entity/catalog/close
#
# 閉じる
#
# @within function chuzitems:entity/catalog/tick

# 使用中モード解除
    tag @s remove ChuzItems.Entity.Catalog.InUse

# モデル変更
    item replace entity @s armor.head with armor_stand{CustomModelData:1}

# トレーダーを片付ける
    execute positioned ~ ~-1 ~ as @e[type=wandering_trader,tag=ChuzItems.Entity.Catalog.Trader,sort=nearest,limit=1] run function chuzitems:entity/catalog/trader/kill

# 演出
    playsound minecraft:item.book.page_turn player @a ~ ~ ~ 1 1
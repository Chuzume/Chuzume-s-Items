#> chuzitems:entity/catalog/open
#
# 開く
#
# @within function chuzitems:entity/catalog/tick

# 使用中モードになる
    tag @s add ChuzItems.Entity.Catalog.InUse

# モデル変更
    item replace entity @s armor.head with armor_stand{CustomModelData:2}

# トレーダーを召喚
    function chuzitems:entity/catalog/trader/summon

# 演出
    playsound minecraft:item.book.page_turn player @a ~ ~ ~ 1 1
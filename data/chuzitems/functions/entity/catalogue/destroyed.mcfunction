#> chuzitems:entity/catalogue/destroyed
#
# 破壊時
#
# @within function chuzitems:entity/catalogue/tick

# アイテムを出す
    loot spawn ~ ~ ~ loot chuzitems:item/otherworldly_catalogue

# トレーダーを片付ける
    execute positioned ~ ~-1 ~ as @e[type=wandering_trader,tag=ChuzItems.Entity.Catalogue.Trader,sort=nearest,limit=1] run function chuzitems:entity/catalogue/trader/kill

# 演出
    playsound minecraft:item.book.page_turn player @a ~ ~ ~ 1 1
    playsound minecraft:entity.chicken.egg player @a ~ ~ ~ 1 1

# キル
    kill @s
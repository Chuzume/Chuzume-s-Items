#> chuzitems:item/photon_glaive/get
#
# 
#
# @within advancement chuzitems:trade/photon_glaive

# 実行者の位置にアイテムを召喚
    execute at @s run loot spawn ~ ~ ~ loot chuzitems:item/photon_glaive

# すぐに拾えるようにNBT変更
    data modify entity @e[type=item,sort=nearest,limit=1] PickupDelay set value 0

# 演出
    playsound chuzume:cash_register01_2 player @a ~ ~ ~ 1 1.2

# 商品サンプルを削除
    clear @s knowledge_book{ChuzData:{SellSample:1b}} 1

# 進捗消去
    advancement revoke @s only chuzitems:trade/photon_glaive
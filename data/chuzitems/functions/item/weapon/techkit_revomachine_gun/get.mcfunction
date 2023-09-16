#> chuzitems:item/weapon/techkit_revomachine_gun/get
#
# アイテムを入手
#
# @within advancement chuzitems:trade/techkit_revomachine_gun

# 実行者の位置にアイテムを召喚
    execute at @s run loot spawn ~ ~ ~ loot chuzitems:item/techkit_revomachine_gun/

# すぐに拾えるようにNBT変更
    data modify entity @e[type=item,sort=nearest,limit=1] PickupDelay set value 0

# 演出
    playsound chuzume:cash_register01_2 player @a ~ ~ ~ 1 1.2

# 商品サンプルを削除
    clear @s crossbow{ChuzData:{SellSample:1b}} 1

# 進捗消去
    advancement revoke @s only chuzitems:trade/techkit_revomachine_gun
#> chuzitems:item/otherworldly_catalogue/craft
#
# 作成時
#
# @within advancement chuzitems:craft/otherworldly_catalogue

# 実行者の位置にアイテムを召喚
    execute at @s run loot spawn ~ ~ ~ loot chuzitems:item/otherworldly_catalogue

# すぐに拾えるようにNBT変更
    data modify entity @e[type=item,sort=nearest,limit=1] PickupDelay set value 0

# 次回以降も実行するためにレシピ没収
    recipe take @s chuzitems:otherworldly_catalogue

# クラフト時のダミー表示のチェストを削除
    clear @s chest 1

# 進捗消去
    advancement revoke @s only chuzitems:craft/otherworldly_catalogue
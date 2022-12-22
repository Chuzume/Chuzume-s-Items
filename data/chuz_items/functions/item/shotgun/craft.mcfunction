#> chuz_items:item/shotgun/craft
#
# 
#
# @within advancement chuz_items:craft/shotgun

# 実行者の位置にアイテムを召喚
    execute at @s run loot spawn ~ ~ ~ loot chuz_items:item/shotgun

# すぐに拾えるようにNBT変更
    data modify entity @e[type=item,sort=nearest,limit=1] PickupDelay set value 0

# 次回以降も実行するためにレシピ没収
    recipe take @s chuz_items:shotgun

# クラフト時のダミー表示のチェストを削除
    clear @s chest 1

# 進捗消去
    advancement revoke @s only chuz_items:craft/shotgun
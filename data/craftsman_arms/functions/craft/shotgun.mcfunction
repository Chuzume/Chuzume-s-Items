#> craftsman_arms:craft/shotgun
#
# アイテム作ったときの処理
#
# @within advancement craftsman_arms:craft/shotgun

# まぁまずはアイテムが必要であろう
    execute at @s run loot spawn ~ ~ ~ loot craftsman_arms:item/shotgun

# すぐ拾いてえよ
    data modify entity @e[type=item,sort=nearest,limit=1] PickupDelay set value 0

# 次回以降も実行するためにレシピ没収
    recipe take @s craftsman_arms:shotgun

# なんだこのチェストは！消えてもらおう
    clear @s chest 1

# 進捗消去
    advancement revoke @s only craftsman_arms:craft/shotgun
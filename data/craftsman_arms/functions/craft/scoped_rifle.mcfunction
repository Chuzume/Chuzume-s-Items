#> craftsman_arms:craft/scoped_rifle
#
# アイテム作ったときの処理
#
# @within advancement craftsman_arms:craft/scoped_rifle

# まぁまずはアイテムが必要であろう
    execute at @s run loot spawn ~ ~ ~ loot craftsman_arms:item/scoped_rifle 

# すぐ拾いてえよ
    data modify entity @e[type=item,sort=nearest,limit=1] PickupDelay set value 0

# 次回以降も実行するためにレシピ没収
    recipe take @s craftsman_arms:scoped_rifle

# なんだこのチェストは！消えてもらおう
    clear @s chest 1

# 進捗消去
    advancement revoke @s only craftsman_arms:craft/scoped_rifle
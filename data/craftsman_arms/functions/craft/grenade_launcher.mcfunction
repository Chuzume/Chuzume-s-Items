#> craftsman_arms:craft/grenade_launcher
#
# アイテム作ったときの処理
#
# @within advancement craftsman_arms:craft/grenade_launcer

# まぁまずはアイテムが必要であろう
    execute at @s run loot spawn ~ ~ ~ loot craftsman_arms:item/grenade_launcher

# すぐ拾いてえよ
    data modify entity @e[type=item,sort=nearest,limit=1] PickupDelay set value 0

# 次回以降も実行するためにレシピ没収
    recipe take @s craftsman_arms:grenade_launcher

# なんだこのチェストは！消えてもらおう
    clear @s chest 1

# 進捗消去
    advancement revoke @s only craftsman_arms:craft/grenade_launcher
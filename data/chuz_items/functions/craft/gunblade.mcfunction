#> chuz_items:craft/gunblade
#
# アイテム作ったときの処理
#
# @within advancement chuz_items:craft/gunblade

# まぁまずはアイテムが必要であろう
    execute at @s run loot spawn ~ ~ ~ loot chuz_items:item/gunblade/ranged

# すぐ拾いてえよ
    data modify entity @e[type=item,sort=nearest,limit=1] PickupDelay set value 0

# 次回以降も実行するためにレシピ没収
    recipe take @s chuz_items:gunblade

# なんだこのチェストは！消えてもらおう
    clear @s chest 1

# 進捗消去
    advancement revoke @s only chuz_items:craft/gunblade
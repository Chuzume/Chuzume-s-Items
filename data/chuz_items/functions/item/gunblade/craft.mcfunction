#> chuz_items:item/gunblade/craft
#
# 作成
#
# @within advancement chuz_items:craft/gunblade

# 実行者の位置にアイテムを召喚
    execute at @s run loot spawn ~ ~ ~ loot chuz_items:item/gunblade/ranged

# すぐに拾えるようにNBT変更
    data modify entity @e[type=item,sort=nearest,limit=1] PickupDelay set value 0

# 次回以降も実行するためにレシピ没収
    recipe take @s chuz_items:gunblade

# クラフト時のダミー表示のチェストを削除
    clear @s chest 1

# 進捗消去
    advancement revoke @s only chuz_items:craft/gunblade
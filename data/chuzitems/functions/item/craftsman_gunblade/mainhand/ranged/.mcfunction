#> chuzitems:item/craftsman_gunblade/mainhand/ranged/
#
# 
#
# @within function chuzitems:player/macro/mainhand

# 発砲
    # 通常
        execute unless score @s[scores={ChuzItems.Crossbow=0..}] ChuzItems.Charge matches 30.. unless score @s ChuzItems.CoolTime matches 0.. run function chuzitems:item/craftsman_gunblade/mainhand/ranged/shot/charge0
    # チャージショット
        execute if score @s[scores={ChuzItems.Crossbow=0..}] ChuzItems.Charge matches 30.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function chuzitems:item/craftsman_gunblade/mainhand/ranged/shot/charge1
    # 弾の召喚部分
        execute unless score @s[scores={ChuzItems.BurstCount=1..}] ChuzItems.BurstRate matches 0.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} anchored eyes positioned ^ ^ ^ run function chuzitems:item/craftsman_gunblade/mainhand/ranged/shot/
    # 残弾0なら失敗
        execute unless score @s[scores={ChuzItems.BurstCount=1..}] ChuzItems.BurstRate matches 0.. if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} anchored eyes positioned ^ ^ ^ run function chuzitems:item/craftsman_gunblade/mainhand/ranged/shot/no_ammo

# バースト間隔の処理
    scoreboard players remove @s[scores={ChuzItems.BurstRate=1..}] ChuzItems.BurstRate 1
    # リセット
        scoreboard players reset @s[scores={ChuzItems.BurstRate=..0}] ChuzItems.BurstRate

# チャージ
    execute if score @s ChuzItems.Sneak matches 1.. run function chuzitems:item/craftsman_gunblade/common/charge

# 残弾0でエイムしてない場合はリロードをする
    execute unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:8} unless score @s ChuzItems.Sneak matches 0.. run scoreboard players add @s ChuzItems.Ready 1

# 弾がマックスになったらおしまい
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:8} run scoreboard players reset @s ChuzItems.Ready 

# リロード準備が整ったら弾を込めだす
    execute if score @s ChuzItems.Ready matches 30.. run function chuzitems:item/craftsman_gunblade/common/reloading

# チャージ値リセット
    execute unless score @s ChuzItems.Sneak matches 1.. run scoreboard players reset @s ChuzItems.Charge

# 更新
    execute in overworld run function chuzitems:item/replaceitem

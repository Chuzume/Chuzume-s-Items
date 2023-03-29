#> chuzitems:item/weapon/gunblade/gun/
#
# 所持時のメイン処理
#
# @within function chuzitems:item/weapon/gunblade/trigger

# 発砲
    # 通常
        execute unless score @s[scores={ChuzItems.Crossbow=0..}] ChuzItems.Charge matches 30.. unless score @s ChuzItems.CoolTime matches 0.. run function chuzitems:item/weapon/gunblade/gun/shot/charge0
    # 弾の召喚部分
        execute unless score @s[scores={ChuzItems.BurstCount=1..}] ChuzItems.BurstRate matches 0.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} anchored eyes positioned ^ ^ ^ run function chuzitems:item/weapon/gunblade/gun/shot/
    # 残弾0なら失敗
        execute unless score @s[scores={ChuzItems.BurstCount=1..}] ChuzItems.BurstRate matches 0.. if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} anchored eyes positioned ^ ^ ^ run function chuzitems:item/weapon/gunblade/gun/shot/no_ammo

# バースト間隔の処理
    scoreboard players remove @s[scores={ChuzItems.BurstRate=1..}] ChuzItems.BurstRate 1
    # リセット
        scoreboard players reset @s[scores={ChuzItems.BurstRate=..0}] ChuzItems.BurstRate

## 発砲
#    execute unless score @s[scores={ChuzItems.Crossbow=0..}] ChuzItems.Charge matches 30.. unless score @s ChuzItems.CoolTime matches 0.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} anchored eyes positioned ^ ^ ^ run function chuzitems:item/weapon/gunblade/ranged/fire/normal
#    # 残弾0なら失敗
#        execute if entity @s[scores={ChuzItems.Crossbow=0..}] if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function chuzitems:item/weapon/gunblade/gun/shot/no_ammo
#
## フルバースト
#    execute if entity @s[scores={ChuzItems.BurstCount=1..}] unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} anchored eyes positioned ^ ^ ^ run function chuzitems:item/weapon/gunblade/ranged/fire/normal
#    # 弾切れ時
#        execute if entity @s[scores={ChuzItems.BurstCount=1..}] if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function chuzitems:item/weapon/gunblade/ranged/fire/out_of_ammo
#

# チャージ
    execute if score @s ChuzItems.Sneak matches 1.. run function chuzitems:item/weapon/gunblade/charge
    # チャージショット
        execute if score @s[scores={ChuzItems.Crossbow=0..}] ChuzItems.Charge matches 30.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function chuzitems:item/weapon/gunblade/gun/shot/charge1
    # 弾切れ
        execute if score @s[scores={ChuzItems.Crossbow=0..}] ChuzItems.Charge matches 30.. if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function chuzitems:item/weapon/gunblade/ranged/fire/out_of_ammo

# 残弾0でエイムしてない場合はリロードをする
    execute unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:8} unless score @s ChuzItems.Sneak matches 0.. run scoreboard players add @s ChuzItems.Ready 1

# 弾がマックスになったらおしまい
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:8} run scoreboard players reset @s ChuzItems.Ready 

# リロード準備が整ったら弾を込めだす
    execute if score @s ChuzItems.Ready matches 30.. run function chuzitems:item/weapon/gunblade/reload/reloading

# チャージ値リセット
    execute unless score @s ChuzItems.Sneak matches 1.. run scoreboard players reset @s ChuzItems.Charge

# 更新
    execute in overworld run function chuzitems:item/replaceitem

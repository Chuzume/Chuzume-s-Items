#> chuzitems:item/craftsman_shotgun/mainhand/main
#
# 
#
# @within function chuzitems:item/craftsman_shotgun/mainhand/

# 発砲
    execute if entity @s[scores={ChuzItems.Crossbow=0..}] unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} anchored eyes positioned ^ ^ ^ run function chuzitems:item/craftsman_shotgun/mainhand/shot/

# 残弾0でエイムしてない場合はリロードをする
    execute unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:2} run scoreboard players add @s ChuzItems.Ready 1

# 弾がマックスになったらおしまい
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:2} run scoreboard players reset @s ChuzItems.Ready

# リロード準備が整ったら弾を込めだす
    execute if score @s ChuzItems.Ready matches 30.. run function chuzitems:item/craftsman_shotgun/mainhand/reload/reloading

# リロード
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function chuzitems:item/craftsman_shotgun/mainhand/reload/start
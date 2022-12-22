
# 発砲
    execute if entity @s[scores={S.Rif_Shot=0..}] unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function chuz_items:item/shotgun/fire/normal

# 残弾0なら失敗
    execute if entity @s[scores={S.Rif_Shot=0..}] if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function chuz_items:item/shotgun/fire/out_of_ammo

# 残弾0でエイムしてない場合はリロードをする
    execute unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:2} run scoreboard players add @s S.Rif_Ready 1

# 弾がマックスになったらおしまい
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:2} run scoreboard players reset @s S.Rif_Ready 
# リロード準備が整ったら弾を込めだす
    execute if score @s S.Rif_Ready matches 30.. run function chuz_items:item/shotgun/reload/reloading

# リロード
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function chuz_items:item/shotgun/reload/start
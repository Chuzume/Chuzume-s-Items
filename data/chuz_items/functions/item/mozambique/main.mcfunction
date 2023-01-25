#> chuz_items:item/mozambique/main
#
# 持ってる間の処理
#
# @within function chuz_items:player/tick

# 通常モード
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Mozambique,ItemMode:Standby} run function chuz_items:item/mozambique/gun/
  
# リロード
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Mozambique,ItemMode:Reloading} run function chuz_items:item/mozambique/reload/reloading
  
# リロード開始タグを付与されたらリロード開始
    execute if entity @s[tag=ChuzItems.ReloadStart] run function chuz_items:item/mozambique/reload/start
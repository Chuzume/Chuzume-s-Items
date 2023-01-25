#> chuz_items:item/wingman/main
#
# 持ってる間の処理
#
# @within function chuz_items:player/tick

# 通常モード
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Wingman,ItemMode:Standby} run function chuz_items:item/wingman/gun/
  
# リロード
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Wingman,ItemMode:Reloading} run function chuz_items:item/wingman/reload/reloading
  
# リロード開始タグを付与されたらリロード開始
    execute if entity @s[tag=ChuzItems.ReloadStart] run function chuz_items:item/wingman/reload/start
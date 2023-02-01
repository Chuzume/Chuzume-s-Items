#> chuzitems:item/wingman/main
#
# 持ってる間の処理
#
# @within function chuzitems:player/tick

# 通常モード
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Wingman,ItemMode:Standby} run function chuzitems:item/wingman/gun/
  
# リロード
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Wingman,ItemMode:Reloading} run function chuzitems:item/wingman/reload/reloading
  
# リロード開始タグを付与されたらリロード開始
    execute if entity @s[tag=ChuzItems.ReloadStart] run function chuzitems:item/wingman/reload/start
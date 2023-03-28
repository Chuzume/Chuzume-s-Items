#> chuzitems:item/weapon/wingman/main
#
# 持ってる間の処理
#
# @within function chuzitems:player/tick

# 通常モード
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Wingman,ItemMode:Standby} run function chuzitems:item/weapon/wingman/gun/
  
# リロード
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Wingman,ItemMode:Reloading} run function chuzitems:item/weapon/wingman/reload/reloading
#> chuzitems:item/weapon/mozambique/main
#
# 持ってる間の処理
#
# @within function chuzitems:player/tick

# 通常モード
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Mozambique,ItemMode:Standby} run function chuzitems:item/weapon/mozambique/gun/
  
# リロード
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Mozambique,ItemMode:Reloading} run function chuzitems:item/weapon/mozambique/reload/reloading

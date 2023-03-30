#> chuzitems:item/weapon/mozambique/trigger
#
# 
#
# @within tag/function chuzitems:item/tick

# 通常モード
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Mozambique,ItemMode:Standby} run function chuzitems:item/weapon/mozambique/gun/
  
# リロード
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Mozambique,ItemMode:Reloading} run function chuzitems:item/weapon/mozambique/reload/reloading

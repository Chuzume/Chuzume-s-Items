#> chuzitems:item/weapon/techkit_revomachine_gun/trigger
#
# 
#
# @within tag/function chuzitems:item/tick

# 通常モード
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:TechKit_Revomachine_Gun,ItemMode:Standby} run function chuzitems:item/weapon/techkit_revomachine_gun/gun/
  
# リロード
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:TechKit_Revomachine_Gun,ItemMode:Reloading} run function chuzitems:item/weapon/techkit_revomachine_gun/reload/reloading
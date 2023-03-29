#> chuzitems:item/weapon/grenade_launcher/trigger
#
# 
#
# @within tag/function chuzitems:item/tick

# データ確認
    execute if data storage chuz:context {ItemID:Craftsman_Grenade_Launcher} run function chuzitems:item/weapon/grenade_launcher/gun/
    execute if data storage chuz:context {ItemID:Craftsman_Grenade_Launcher_Reload} run function chuzitems:item/weapon/grenade_launcher/reload/main

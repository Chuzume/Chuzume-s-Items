#> chuzitems:item/old_items/
#
# 旧アイテムの交換処理
#
# @within function chuzitems:player/tick

execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Scoped_Rifle} run loot replace entity @s weapon.mainhand loot chuzitems:item/craftsman_scoped_rifle
execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Shotgun} run loot replace entity @s weapon.mainhand loot chuzitems:item/craftsman_shotgun/
execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Grenade_Launcher} run loot replace entity @s weapon.mainhand loot chuzitems:item/craftsman_launcher/
execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Gunblade} run loot replace entity @s weapon.mainhand loot chuzitems:item/craftsman_gunblade/ranged
execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Mozambique} run loot replace entity @s weapon.mainhand loot chuzitems:item/mozambique/
execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Wingman} run loot replace entity @s weapon.mainhand loot chuzitems:item/wingman/
execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:TechKit_Revomachine_Gun} run loot replace entity @s weapon.mainhand loot chuzitems:item/techkit_revomachine_gun/
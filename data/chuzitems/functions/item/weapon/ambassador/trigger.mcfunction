#> chuzitems:item/weapon/ambassador/trigger
#
# 
#
# @within tag/function chuzitems:item/tick

# 銃モード
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Ambassador,ItemMode:Assault} run function chuzitems:item/weapon/ambassador/assault/

# 剣モード
    #execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Gunblade,ItemMode:Melee} run function chuzitems:item/weapon/gunblade/melee/main

# オフハンドに入れると変形する
    #execute if data storage chuz:context Item.Inventory[{Slot:-106b}].tag.ChuzData{ItemID:Craftsman_Gunblade} in overworld run function chuzitems:item/weapon/gunblade/switch
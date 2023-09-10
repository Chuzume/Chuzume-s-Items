#> chuzitems:item/craftsman_grenade_launcher/mainhand/reload/start
#
# 
#
# @within function chuzitems:item/craftsman_grenade_launcher/mainhand/standby/

# アクションバーをまっさらに
    title @s actionbar {"text":""}

# 手持ち情報削除、アイテム入れ替え
    data remove storage chuz:context Item
    loot replace entity @s weapon.mainhand loot chuzitems:item/weapon/grenade_launcher/reload

# 演出
    playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 0.8 1
    playsound minecraft:block.iron_door.open player @a ~ ~ ~ 0.6 1.1
    playsound minecraft:block.piston.contract player @a ~ ~ ~ 0.8 2
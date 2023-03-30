#> chuzitems:item/weapon/mozambique/gun/shot/ads
#
# 
#
# @within function chuzitems:item/weapon/mozambique/gun/

# 演出
    execute positioned ^ ^-0.4 ^1.0 run function chuzitems:item/weapon/mozambique/gun/shot/sound

# タグ付与: ADS射撃
    tag @s add ChuzItems.Shot.ADS

# クールタイム設定
    scoreboard players set @s ChuzItems.CoolTime 7

# 弾を召喚
    # 上
        execute positioned ^ ^ ^ summon marker run function chuzitems:item/weapon/mozambique/gun/shot/init
        summon marker ^ ^0.25 ^10 {Tags:["SpreadMarker"]}

    # 下
        execute positioned ^ ^ ^ summon marker run function chuzitems:item/weapon/mozambique/gun/shot/init
        summon marker ^0.15 ^-0.15 ^10 {Tags:["SpreadMarker"]}

    # 下2
        execute positioned ^ ^ ^ summon marker run function chuzitems:item/weapon/mozambique/gun/shot/init
        summon marker ^-0.15 ^-0.15 ^10 {Tags:["SpreadMarker"]}

# 弾が減る
    execute in overworld run function chuzitems:item/consume_ammo


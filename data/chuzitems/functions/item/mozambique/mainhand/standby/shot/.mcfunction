#> chuzitems:item/mozambique/mainhand/standby/shot/
#
# 
#
# @within function chuzitems:item/mozambique/mainhand/standby/

# サウンド
    execute positioned ^ ^-0.4 ^1.0 run function chuzitems:item/mozambique/mainhand/standby/shot/sound

# タグ付与: 通常射撃
    tag @s add ChuzItems.Shot.Normal

# クールタイム設定
    scoreboard players set @s ChuzItems.CoolTime 7

# 弾を召喚
    # 上
        summon marker ^ ^0.25 ^10 {Tags:["SpreadMarker"]}
        execute positioned ^-0.25 ^ ^ summon marker run function chuzitems:item/mozambique/mainhand/standby/shot/init

    # 下
        summon marker ^0.25 ^-0.25 ^10 {Tags:["SpreadMarker"]}
        execute positioned ^-0.25 ^ ^ summon marker run function chuzitems:item/mozambique/mainhand/standby/shot/init

    # 下2
        summon marker ^-0.25 ^-0.25 ^10 {Tags:["SpreadMarker"]}
        execute positioned ^-0.25 ^ ^ summon marker run function chuzitems:item/mozambique/mainhand/standby/shot/init

# 弾が減る
    execute in overworld run function chuzitems:item/consume_ammo


#> chuzitems:item/wingman/mainhand/standby/shot/
#
# 
#
# @within function chuzitems:item/wingman/mainhand/standby/

# 俺が実行者だ
    tag @s add This

# 演出
    execute positioned ^ ^-0.4 ^1.0 run function chuzitems:item/wingman/mainhand/standby/shot/sound

# クールタイム設定
    scoreboard players set @s ChuzItems.CoolTime 7

# リコイル
    execute if score $Gamerule.Recoil Chuz.Rule matches 1 if entity @s[scores={ChuzItems.Recoil.Change=0..}] run data modify storage yv:gun Recoil set value {Magnitude:[0.0f,-1.17f],Smooth:5,WaitTick:4}
    execute if score $Gamerule.Recoil Chuz.Rule matches 1 unless entity @s[scores={ChuzItems.Recoil.Change=0..}] run data modify storage yv:gun Recoil set value {Magnitude:[1.85f,-3.325f],Smooth:5,WaitTick:4}
    execute if score $Gamerule.Recoil Chuz.Rule matches 1 run function yv_recoil:

# 真上リコイルに変更
    scoreboard players set @s ChuzItems.Recoil.Change 12

# 弾を召喚
    # 腰だめ
        execute if entity @s[tag=ChuzItems.Shot.Normal] unless score @s ChuzItems.Wingman.Spread matches 0.. run summon marker ^ ^ ^30 {Tags:["SpreadMarker"]}
        execute if entity @s[tag=ChuzItems.Shot.Normal] positioned ^-0.25 ^ ^ summon marker run function chuzitems:item/wingman/mainhand/standby/shot/init
    # ADS
        execute if entity @s[tag=ChuzItems.Shot.ADS] run summon marker ^ ^ ^10 {Tags:["SpreadMarker"]}
        execute if entity @s[tag=ChuzItems.Shot.ADS] positioned ^ ^ ^ summon marker run function chuzitems:item/wingman/mainhand/standby/shot/init

# 弾が減る
    execute in overworld run function chuzitems:item/consume_ammo

# タグ
    tag @s remove This
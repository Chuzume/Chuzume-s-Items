#> chuzitems:item/craftsman_scoped_rifle/mainhand/standby/shot/charge1/
#
# チャージ1
#
# @within function chuzitems:item/craftsman_scoped_rifle/mainhand/standby/

# 俺が実行者だ
    tag @s add This
    
# リコイル
    execute if score $Gamerule.Recoil Chuz.Rule matches 1 run data modify storage yv:gun Recoil set value {Magnitude:[0.0f,-1.5f],Smooth:5,WaitTick:0}
    execute if score $Gamerule.Recoil Chuz.Rule matches 1 run function yv_recoil:

# サウンド
    execute positioned ^ ^-0.2 ^1.0 run function chuzitems:item/craftsman_scoped_rifle/mainhand/standby/shot/charge1/sound

# 弾を召喚
    # 腰だめ
        execute if entity @s[tag=!Chuz.Using.Spyglass] run particle smoke ^-0.25 ^ ^0.7 0 0 0 0.05 5
        execute if entity @s[tag=!Chuz.Using.Spyglass] positioned ^-0.25 ^ ^ summon marker run function chuzitems:item/craftsman_scoped_rifle/mainhand/standby/shot/charge1/init
    # スコープ！
        execute if entity @s[tag=Chuz.Using.Spyglass] run particle smoke ^ ^ ^0.7 0 0 0 0.05 2
        execute if entity @s[tag=Chuz.Using.Spyglass] run summon marker ^ ^ ^10 {Tags:["SpreadMarker"]}
        execute if entity @s[tag=Chuz.Using.Spyglass] positioned ^ ^ ^ summon marker run function chuzitems:item/craftsman_scoped_rifle/mainhand/standby/shot/charge1/init

# 弾が減る
    execute in overworld run function chuzitems:item/consume_ammo

# もう実行者ではない
    tag @s remove This
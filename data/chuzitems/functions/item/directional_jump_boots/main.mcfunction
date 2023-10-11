#> chuzitems:item/directional_jump_boots/main
#
# 装備時のメイン処理
#
# @within function chuzitems:player/tick

# OnGround取得
    function chuzitems:get_data/on_ground

# Posをスコア化、1tick後との差を求める
    execute if entity @s[tag=!ChuzItems.JumpBoots.NoUse] run function chuzitems:item/directional_jump_boots/get_pos

# 落下を開始したら落下無敵
    execute unless score @s[tag=!ChuzItems.JumpBoots.TimeOut] ChuzItems.FallResistTime matches 0.. if data storage api: {OnGround:0b} run scoreboard players set @s ChuzItems.FallResistTime 40

# 落下無敵切れ
    execute if score @s ChuzItems.FallResistTime matches 0 run function chuzitems:item/directional_jump_boots/out_of_fallresist

# ジャンプ後のしばらくは落下無敵付与
    #execute if entity @s[tag=!ChuzItems.JumpBoots.TimeOut] if data storage api: {OnGround:0b} run function chuzitems:player/fall_resist

# 着地
    execute if data storage api: {OnGround:1b} run function chuzitems:item/directional_jump_boots/landing
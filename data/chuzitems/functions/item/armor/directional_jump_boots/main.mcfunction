#> chuzitems:item/armor/directional_jump_boots/main
#
# 装備時のメイン処理
#
# @within function chuzitems:player/tick

# OnGround取得
    function chuzitems:get_data/on_ground

# ジャンプ検知したら発動
    execute if score @s[predicate=chuzitems:sneak] ChuzItems.Jump matches 0.. run function chuzitems:item/armor/directional_jump_boots/jump

# 落下を開始したら無敵になる
    execute unless score @s[tag=!ChuzItems.JumpBoots.TimeOut] ChuzItems.FallResistTime matches 0.. if data storage api: {OnGround:0b} run scoreboard players set @s ChuzItems.FallResistTime 40

# 落下無敵を減らしていく
    scoreboard players remove @s[scores={ChuzItems.FallResistTime=1..}] ChuzItems.FallResistTime 1
    execute if score @s ChuzItems.FallResistTime matches 0 run function chuzitems:item/armor/directional_jump_boots/out_of_fallresist

# ジャンプ後のしばらくは落下無敵付与
    execute if entity @s[tag=!ChuzItems.JumpBoots.TimeOut] if data storage api: {OnGround:0b} run function chuzitems:player/fall_resist

# 着地
    execute if data storage api: {OnGround:1b} run function chuzitems:item/armor/directional_jump_boots/landing
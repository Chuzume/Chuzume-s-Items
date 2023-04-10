#> chuzitems:entity/beam_emitter/shoot
#
# 
#
# @within function chuzitems:entity/beam_emitter/spread_pos

# 使用者です
    tag @s add This

# 演出
    execute positioned ~ ~ ~ run function chuzitems:entity/beam_emitter/sound

# ビーム
    execute summon item_display run function chuzitems:entity/beam_emitter/init

# タグ解除
    tag @s remove This
#> chuzitems:entity/beam_emitter/normal/shoot
#
# 
#
# @within function chuzitems:entity/beam_emitter/normal/spread

# 使用者です
    tag @s add This

# 演出
    execute positioned ~ ~ ~ run function chuzitems:entity/beam_emitter/normal/sound

# ビーム
    execute summon item_display run function chuzitems:entity/beam_emitter/normal/init

# タグ解除
    tag @s remove This
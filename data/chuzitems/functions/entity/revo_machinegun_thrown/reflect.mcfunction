#> chuzitems:entity/revo_machinegun_thrown/reflect
#
# 壁ヒット時に向きを変える処理
#
# @within function chuzitems:entity/revo_machinegun_thrown/tick

# これで向きを変える
    tp @s ~ ~ ~ ~ ~

# 演出
    playsound minecraft:block.note_block.bit neutral @a ~ ~ ~ 2 1
    particle crit ~ ~0.5 ~ 0 0 0 0.5 10

# すぐさま移動しないようにタグ付与
    tag @s add ChuzItems.Reflected
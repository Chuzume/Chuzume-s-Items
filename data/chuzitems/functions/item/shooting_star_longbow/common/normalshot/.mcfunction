#> chuzitems:item/shooting_star_longbow/common/normalshot/
#
# 
#

# 俺が実行者だ
    tag @s add This

# 召喚
    execute positioned ^ ^ ^ summon marker run function chuzitems:item/shooting_star_longbow/common/normalshot/init

# サウンド
    playsound minecraft:block.amethyst_block.break player @a ~ ~ ~ 1.5 1.5
    playsound minecraft:entity.arrow.shoot player @a ^ ^ ^1 1.5 1


# 実行者解除
    tag @s remove This

# リセット
    data remove storage chuz:context arrow
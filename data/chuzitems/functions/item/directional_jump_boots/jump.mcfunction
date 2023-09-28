#> chuzitems:item/directional_jump_boots/jump
#
# Deltaデータパックを用いた跳躍
#
# @within function chuzitems:item/directional_jump_boots/get_pos

# 飛ばす
    scoreboard players set $strength delta.api.launch 10000
    execute positioned ~ ~ ~ run function delta:api/launch_looking

# サウンド
    playsound minecraft:entity.zombie.infect player @a ~ ~ ~ 1.5 2
    playsound minecraft:entity.goat.long_jump player @a ~ ~ ~ 1.5 1
    #playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1.5 1

# パーティクル
    particle minecraft:poof ~ ~0.1 ~ 0.3 0 0.3 0.2 10
    particle minecraft:crit ~ ~0.3 ~ 0.3 0 0.3 0.5 10

# 着地まで使えないようにタグを付与
    tag @s add ChuzItems.JumpBoots.NoUse

# リセット
    scoreboard players reset $Y Chuz.Temporary
    scoreboard players reset @s Chuz.PosDiffY
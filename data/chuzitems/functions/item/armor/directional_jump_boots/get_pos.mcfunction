#> chuzitems:item/armor/directional_jump_boots/get_pos
#
# この処理重そうだな…。
#
# @within function chuzitems:item/armor/directional_jump_boots/main

# 1tick前の座標を記録
    execute store result score $Y Chuz.Temporary run scoreboard players get $Y_Save Chuz.Temporary

# いまのを記録
    execute store result score @s Chuz.PosDiffY run data get entity @s Pos[1] 100

# 1tick後に保存しておく
    execute store result score $Y_Save Chuz.Temporary run data get entity @s Pos[1] 100

# 計算結果が34、41、51以上なら跳躍
    scoreboard players operation @s Chuz.PosDiffY -= $Y Chuz.Temporary
    execute if score @s Chuz.PosDiffY matches 34 run function chuzitems:item/armor/directional_jump_boots/jump
    execute if score @s Chuz.PosDiffY matches 41 run function chuzitems:item/armor/directional_jump_boots/jump
    execute if score @s Chuz.PosDiffY matches 51.. run function chuzitems:item/armor/directional_jump_boots/jump
    tellraw @a [{"text":"score: "},{"score":{"objective":"Chuz.PosDiffY","name":"@s"}}]

# リセット
    scoreboard players reset $Y Chuz.Temporary
    scoreboard players reset @s Chuz.PosDiffY
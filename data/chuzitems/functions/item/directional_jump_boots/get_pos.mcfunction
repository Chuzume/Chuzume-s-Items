#> chuzitems:item/directional_jump_boots/get_pos
#
# この処理重そうだな…。
#
# @within function chuzitems:item/directional_jump_boots/main

# 1tick前の座標を記録
    execute store result score $Y Chuz.Temporary run scoreboard players get $Y_Save Chuz.Temporary

# いまのを記録
    execute store result score @s Chuz.PosDiffY run data get entity @s Pos[1] 100

# 1tick後に保存しておく
    execute store result score $Y_Save Chuz.Temporary run data get entity @s Pos[1] 100

# 計算結果が341以上で地上に立ってないなら跳躍
    scoreboard players operation @s Chuz.PosDiffY -= $Y Chuz.Temporary
    execute if score @s[tag=!ChuzItems.JumpBoots.NoUse,nbt={OnGround:0b},predicate=chuzitems:sneak] Chuz.PosDiffY matches 34.. run function chuzitems:item/directional_jump_boots/jump

# リセット
    scoreboard players reset $Y Chuz.Temporary
    scoreboard players reset @s Chuz.PosDiffY
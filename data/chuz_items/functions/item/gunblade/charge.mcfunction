
# スコア加算
    scoreboard players add @s S.Rif_Charge 1

# 演出
    execute if score @s S.Rif_Charge matches 10..20 run particle minecraft:smoke ~ ~0.75 ~ 0.25 0.5 0.25 0 1
    execute if score @s S.Rif_Charge matches 10 run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 1
    execute if score @s S.Rif_Charge matches 10 run playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 1.2
    execute if score @s S.Rif_Charge matches 20..29 run particle minecraft:flame ~ ~0.75 ~ 0.25 0.5 0.25 0 1
    execute if score @s S.Rif_Charge matches 20 run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 1.5
    execute if score @s S.Rif_Charge matches 20 run playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 1.5

# 覚悟はいいか…？(チャージ完了)
    execute if score @s S.Rif_Charge matches 30 run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 1
    execute if score @s S.Rif_Charge matches 30 run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
    execute if score @s S.Rif_Charge matches 30 run playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 2
    execute if score @s S.Rif_Charge matches 30 run particle minecraft:flame ~ ~0.75 ~ 0.0 0.0 0.0 0.05 10
    execute if score @s S.Rif_Charge matches 30.. run particle minecraft:dust 0.5 0.0 0.0 1.0 ~ ~0.75 ~ 0.25 0.5 0.25 0 1
    execute if score @s S.Rif_Charge matches 30.. run particle minecraft:dust 1.0 0.0 0.0 0.75 ~ ~0.75 ~ 0.25 0.5 0.25 0 1
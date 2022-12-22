
# スコア加算
    scoreboard players add @s S.Rif_Sound 1

# 音を鳴らす
    execute if score @s[scores={S.Rif_Sound=1}] Chuz.Range matches 31..60 run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 0.7 1.5
    execute if score @s[scores={S.Rif_Sound=1}] Chuz.Range matches ..30 run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 0.7 2

# リセット
    scoreboard players reset @s[scores={S.Rif_Sound=2..}] S.Rif_Sound
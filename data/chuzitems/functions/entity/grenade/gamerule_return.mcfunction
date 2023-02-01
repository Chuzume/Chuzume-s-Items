# スコアの値に応じてゲームルールもどす
    execute if score $Temp Chuz.Temporary matches 0 run gamerule mobGriefing false
    execute if score $Temp Chuz.Temporary matches 1 run gamerule mobGriefing true
    scoreboard players reset $Temp 

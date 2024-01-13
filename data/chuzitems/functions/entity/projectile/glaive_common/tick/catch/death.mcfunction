#> chuzitems:entity/photon_glaive/tick/catch/death
#
# 持ち主の死亡時にドロップする 
#
# @within function chuzitems:entity/photon_glaive/tick/

# 現在のゲームルールをチェック
    execute store result score $Result Chuz.Temporary run gamerule keepInventory

# 死亡時ドロップがオンならその場に落ちる
    execute if score $Result Chuz.Temporary matches 0 run function chuzitems:entity/photon_glaive/tick/catch/drop

# 死亡時ドロップがオフなら強制的に持ち主に返ってくる
    execute if score $Result Chuz.Temporary matches 1 run function chuzitems:entity/photon_glaive/tick/catch/

# リセット
    scoreboard players reset $Result Chuz.Temporary

# キル
    function chuzitems:entity/photon_glaive/tick/kill
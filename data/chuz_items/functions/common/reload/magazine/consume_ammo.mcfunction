#> chuz_items:common/reload/magazine/consume_ammo
#
# 再帰で弾薬を吸い込む
#
# @within function
#   chuz_items:common/reload/magazine/
#   chuz_items:common/reload/magazine/consume_ammo

# 弾薬消費ONなら弾を一個減らす。減らすのに成功したら装填カウントを1増やす
    execute if score $Gamerule.AmmoRequire Chuz.Rule matches 1 store success score $ConsumeSuccess Chuz.Temporary run function chuz_items:common/reload/check_ammo_type
    execute if score $ConsumeSuccess Chuz.Temporary matches 1 run scoreboard players add $AmmoAddition Chuz.Temporary 1
    scoreboard players reset $ConsumeSuccess Chuz.Temporary

# 再帰カウンターを減らす
    scoreboard players remove $AmmoConsume Chuz.Temporary 1

# 最大弾薬のぶんだけ再帰
    execute if score $AmmoConsume Chuz.Temporary matches 1.. run function chuz_items:common/reload/magazine/consume_ammo
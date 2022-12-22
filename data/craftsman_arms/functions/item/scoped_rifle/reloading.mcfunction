
# 弾チェックして持ってたスコア加算
    execute if score $S.Rif_Setting1 Chuz.Rule matches 1 store success score @s Chuz.Temporary run clear @s chain_command_block{ChuzData:{ItemID:Heavy_Bullet}} 0
    execute if score @s Chuz.Temporary matches 1.. run scoreboard players add @s S.Rif_Reload 1

# 弾いらないモードなら常に増える
    execute if score $S.Rif_Setting1 Chuz.Rule matches 0 run scoreboard players add @s S.Rif_Reload 1

# ざくざくと弾を込める
    execute if score @s S.Rif_Reload matches 8 run playsound minecraft:block.piston.extend player @a ~ ~ ~ 1 2
    execute if score @s S.Rif_Reload matches 10.. run playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 2
    # ルールが弾使うモードなら弾を減らす
        execute if score @s S.Rif_Reload matches 10.. if score $S.Rif_Setting1 Chuz.Rule matches 1 run clear @s chain_command_block{ChuzData:{ItemID:Heavy_Bullet}} 1
    # 弾を増やす
        execute if score @s S.Rif_Reload matches 10.. in overworld run function craftsman_arms:item/add_ammo

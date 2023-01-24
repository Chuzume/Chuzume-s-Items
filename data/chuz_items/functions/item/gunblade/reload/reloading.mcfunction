
# 弾チェックして持ってたスコア加算
    execute if score $Gamerule.AmmoRequire Chuz.Rule matches 1 store success score @s Chuz.Temporary run clear @s chain_command_block{ChuzData:{ItemID:Light_Bullet}} 0
    execute if score @s Chuz.Temporary matches 1.. run scoreboard players add @s ChuzItems.Reload 1

# 弾いらないモードなら常に増える
    execute if score $Gamerule.AmmoRequire Chuz.Rule matches 0 run scoreboard players add @s ChuzItems.Reload 1

# ざくざくと弾を込める
    execute if score @s ChuzItems.Reload matches 1 run playsound minecraft:block.piston.extend player @a ~ ~ ~ 1 2
    execute if score @s ChuzItems.Reload matches 3.. run playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 2
    # ルールが弾使うモードなら弾を減らす
        execute if score @s ChuzItems.Reload matches 3.. if score $Gamerule.AmmoRequire Chuz.Rule matches 1 run clear @s chain_command_block{ChuzData:{ItemID:Light_Bullet}} 1
    # 弾を増やす
        execute if score @s ChuzItems.Reload matches 3.. in overworld run function chuz_items:item/add_ammo

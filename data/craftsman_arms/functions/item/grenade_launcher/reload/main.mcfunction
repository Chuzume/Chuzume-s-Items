


# 弾チェックして持ってたスコア加算
    execute if score $S.Rif_Setting1 Chuz.Rule matches 1 store success score @s Chuz.Temporary run clear @s chain_command_block{ChuzData:{ItemID:Explosive_Cartridge}} 0
    execute if score @s Chuz.Temporary matches 1.. run scoreboard players add @s S.Rif_Reload 1

# 弾いらないモードなら常に増える
    execute if score $S.Rif_Setting1 Chuz.Rule matches 0 run scoreboard players add @s S.Rif_Reload 1

# ざくざくと弾を込める
    execute if score @s S.Rif_Reload matches 30 run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
    execute if score @s S.Rif_Reload matches 31 run playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 2
    execute if score @s S.Rif_Reload matches 40.. in overworld run function craftsman_arms:item/grenade_launcher/reload/finish
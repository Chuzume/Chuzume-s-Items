
# 弾チェックして持ってたスコア加算
    execute if score $S.Rif_Setting1 Chuz.Rule matches 1 store success score @s Chuz.Temporary run clear @s chain_command_block{ChuzData:{ItemID:Shotshell}} 0
    execute if score @s Chuz.Temporary matches 1.. run scoreboard players add @s S.Rif_Reload 1

# 弾いらないモードなら常に増える
    execute if score $S.Rif_Setting1 Chuz.Rule matches 0 run scoreboard players add @s S.Rif_Reload 1

# ざくざくと弾を込める
    execute if score @s S.Rif_Reload matches 14 run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
    execute if score @s S.Rif_Reload matches 15 run playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 2
    execute if score @s S.Rif_Reload matches 20 run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
    execute if score @s S.Rif_Reload matches 21 run playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 2
    execute if score @s S.Rif_Reload matches 30.. in overworld run function chuz_items:item/shotgun/reload/finish

# ここがチャンス！
    execute if score @s[tag=!S.Rif_ReloadFailed] S.Rif_Reload matches 9..10 run title @s actionbar {"text":"| Just Reload |","color":"white"}
    execute unless score @s[tag=!S.Rif_ReloadFailed,scores={S.Rif_Reload=..20}] S.Rif_Reload matches 9..10 run title @s actionbar {"text":"| Just Reload |","color":"gray"}

# ジャストリロード失敗
    execute unless score @s[tag=!S.Rif_ReloadFailed,scores={S.Rif_RClick=0..}] S.Rif_Reload matches 9..10 run function chuz_items:item/shotgun/reload/justreload_failed

# ジャストリロード
    execute if score @s[tag=!S.Rif_ReloadFailed,scores={S.Rif_RClick=0..}] S.Rif_Reload matches 9..10 run function chuz_items:item/shotgun/reload/justreload_success
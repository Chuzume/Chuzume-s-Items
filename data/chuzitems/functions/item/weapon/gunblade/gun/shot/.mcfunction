#> chuzitems:item/weapon/gunblade/gun/shot/
#
# 発砲処理
#
# @within function chuzitems:item/weapon/gunblade/gun/

# 俺が実行者だ
    tag @s add This

# 発砲
    execute positioned ^ ^-0.4 ^1.0 run playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 4 0.5
    execute positioned ^ ^-0.4 ^1.0 run playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 3 2
    execute positioned ^ ^-0.4 ^1.0 run playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 2 1.5
    execute positioned ^ ^-0.4 ^1.0 run playsound chuzume:sniper_shot player @a ~ ~ ~ 4 0.8
    execute positioned ^ ^-0.4 ^1.0 run playsound minecraft:block.chain.break player @a ~ ~ ~ 2 2

# バーストレートを設定
    scoreboard players set @s ChuzItems.BurstRate 1

# バースト数をへらす
    scoreboard players remove @s ChuzItems.BurstCount 1

# リコイル開始
    execute if score $Gamerule.Recoil Chuz.Rule matches 1 run data modify storage yv:gun Recoil set value {Magnitude:[0.0f,-1.5f],Smooth:5,WaitTick:0}
    execute if score $Gamerule.Recoil Chuz.Rule matches 1 run function yv_recoil:

# 弾を召喚
    execute if entity @s[tag=ChuzItems.Gunblade.NormalShot] positioned ^-0.25 ^ ^ summon marker run function chuzitems:item/weapon/gunblade/gun/shot/init/charge0
    execute if entity @s[tag=ChuzItems.Gunblade.FullBurst] positioned ^-0.25 ^ ^ summon marker run function chuzitems:item/weapon/gunblade/gun/shot/init/charge1

# 弾が減る
    execute in overworld run function chuzitems:item/consume_ammo

# リロードを中断
    scoreboard players reset @s ChuzItems.Ready
    scoreboard players reset @s ChuzItems.Reload

# タグ
    tag @s remove This
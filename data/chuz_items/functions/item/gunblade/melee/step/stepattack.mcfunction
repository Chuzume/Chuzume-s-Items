
# 実行者にタグ付与
    tag @s add This
    tag @s add Chuz.PlayerAttack
    tag @s add ChuzItems.NoStepAttack

 # 音
     playsound minecraft:entity.witch.throw player @a ~ ~ ~ 2 1
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 2 1
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 3 0.5
    playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 2 1.5
    playsound chuzume:sniper_shot player @a ~ ~ ~ 4 0.8

# パーティクル
    execute anchored eyes positioned ^ ^ ^2 run particle sweep_attack ~ ~ ~ 0 0 0 0 1
    execute anchored eyes positioned ^ ^ ^2 run particle minecraft:lava ~ ~ ~ 0.0 0.0 0.0 0.1 3

# 火薬パワーでなんか吹っ飛ばす
    execute positioned ^ ^ ^2 as @e[type=!#chuz_items:unhurtable,tag=!This,nbt=!{Invulnerable:1b},distance=..2] at @s rotated 0 ~ facing entity @p[tag=This] feet run function chuz_items:item/gunblade/melee/charge_smash/hit

# リセットと残弾消費
    execute in overworld run function chuz_items:item/consume_ammo
    scoreboard players reset @s ChuzItems.Charge
    tag @s remove This
    tag @s remove Chuz.PlayerAttack

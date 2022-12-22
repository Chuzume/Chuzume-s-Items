
# 実行者にタグ付与
    tag @s add Chuz.This
    tag @s add Chuz.PlayerAttack

 # 音
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 2 0
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 3 0.5
    playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 2 1.5
    playsound chuzume:sniper_shot player @a ~ ~ ~ 4 0.8

# パーティクル
    execute anchored eyes rotated ~ ~90 positioned ^ ^2 ^ run function chuz_items:item/gunblade/melee/charge_smash/shape
    execute anchored eyes rotated ~ ~90 positioned ^ ^4 ^ run function chuz_items:item/gunblade/melee/charge_smash/shape
    execute anchored eyes rotated ~ ~90 positioned ^ ^6 ^ run function chuz_items:item/gunblade/melee/charge_smash/shape

# 火薬パワーでなんか吹っ飛ばす
    execute positioned ^ ^ ^2.5 as @e[type=!#chuz_items:unhurtable,tag=!Chuz.This,nbt=!{Invulnerable:1b},distance=..2] at @s facing entity @p[tag=Chuz.This] feet run function chuz_items:item/gunblade/melee/charge_smash/hit
    execute positioned ^ ^ ^6 as @e[type=!#chuz_items:unhurtable,tag=!Chuz.This,nbt=!{Invulnerable:1b},distance=..2] at @s facing entity @p[tag=Chuz.This] feet run function chuz_items:item/gunblade/melee/charge_smash/hit

# リセットと残弾消費
    execute in overworld run function chuz_items:item/consume_ammo
    scoreboard players reset @s S.Rif_Charge
    tag @s remove Chuz.This
    tag @s remove Chuz.PlayerAttack

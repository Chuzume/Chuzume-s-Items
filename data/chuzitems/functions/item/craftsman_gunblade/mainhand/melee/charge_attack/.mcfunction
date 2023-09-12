#> chuzitems:item/craftsman_gunblade/mainhand/melee/charge_attack/
#
# 
#
# @within function chuzitems:item/craftsman_gunblade/mainhand/melee/

# 実行者にタグ付与
    tag @s add This
    tag @s add Chuz.PlayerAttack

 # 音
    playsound minecraft:item.trident.throw player @a ~ ~ ~ 2 0
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 3 0.5
    playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 2 1.5
    playsound chuzume:sniper_shot player @a ~ ~ ~ 4 0.8

# パーティクル
    execute anchored eyes rotated ~ ~90 positioned ^ ^2 ^ run function chuzitems:item/craftsman_gunblade/mainhand/melee/charge_attack/shape
    execute anchored eyes rotated ~ ~90 positioned ^ ^4 ^ run function chuzitems:item/craftsman_gunblade/mainhand/melee/charge_attack/shape
    execute anchored eyes rotated ~ ~90 positioned ^ ^6 ^ run function chuzitems:item/craftsman_gunblade/mainhand/melee/charge_attack/shape

# 火薬パワーでなんか吹っ飛ばす
    execute positioned ^ ^ ^2.5 as @e[type=!#chuzitems:unhurtable,tag=!Chuz.PlayerShouldInvulnerable,tag=!Chuz.Uninterferable,tag=!This,nbt=!{Invulnerable:1b},distance=..2] at @s facing entity @p[tag=This] feet run function chuzitems:item/craftsman_gunblade/mainhand/melee/charge_attack/hit
    execute positioned ^ ^ ^6 as @e[type=!#chuzitems:unhurtable,tag=!Chuz.PlayerShouldInvulnerable,tag=!Chuz.Uninterferable,tag=!This,nbt=!{Invulnerable:1b},distance=..2] at @s facing entity @p[tag=This] feet run function chuzitems:item/craftsman_gunblade/mainhand/melee/charge_attack/hit

# リセットと残弾消費
    execute in overworld run function chuzitems:item/consume_ammo
    scoreboard players reset @s ChuzItems.Charge
    tag @s remove This
    tag @s remove Chuz.PlayerAttack
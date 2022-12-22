
# タグ付与
    tag @s add Chuz.This
    tag @s add S.Rif_Swinging

# 前の剣削除
    execute as @e[type=armor_stand,tag=S.Rif_GreatSword,sort=nearest,limit=1] run function craftsman_arms:entity/great_sword/combo_kill

# 剣召喚
    summon area_effect_cloud ~ ~-0.5 ~ {Duration:-1,Age:-2147483648,WaitTime:-2147483648,Tags:["Mover","MoverInit"],Passengers:[{id:"minecraft:armor_stand",Invisible:1b,Tags:["S.Rif_Projectile","Chuz_UUIDAttack","Chuz.Projectile_Init","S.Rif_GreatSword"],Pose:{Head:[0.1f,0.1f,0.1f]},DisabledSlots:4144959},{id:"minecraft:armor_stand",Marker:1b,Invisible:1b,Tags:["S.Rif_SweepInit"]}]}

# エフェクト
    effect give @s minecraft:mining_fatigue 1 10 true
    effect give @s minecraft:slowness 1 1 true

#   
    scoreboard players reset @s[scores={S.Rif_Combo=3..}] S.Rif_Combo

# コンボ
    execute unless entity @s[scores={S.Rif_Combo=0..}] run tag @e[type=armor_stand,tag=Chuz.Projectile_Init,limit=1] add S.Rif_GreatSwordCombo1
    execute if entity @s[scores={S.Rif_Combo=1}] run tag @e[type=armor_stand,tag=Chuz.Projectile_Init,limit=1] add S.Rif_GreatSwordCombo2
    execute if entity @s[scores={S.Rif_Combo=2}] run tag @e[type=armor_stand,tag=Chuz.Projectile_Init,limit=1] add S.Rif_GreatSwordCombo3

# Init処理
    execute as @e[type=armor_stand,tag=Chuz.Projectile_Init,limit=1] at @s run function craftsman_arms:entity/great_sword/init

# Init処理
    execute as @e[type=armor_stand,tag=S.Rif_SweepInit,limit=1] at @s run function craftsman_arms:entity/great_sword/sweep/init

# 下のAECに処理
    execute as @e[type=area_effect_cloud,tag=MoverInit,limit=1] at @s run function craftsman_arms:entity/great_sword/init_mover

# 数を指定して当たり判定用のスライムをぶつける
    execute if entity @s[scores={S.Rif_Combo=2}] run scoreboard players set @s S.Rif_Recursive 70
    execute if entity @s[scores={S.Rif_Combo=2}] at @s rotated ~ 0 positioned ^ ^ ^-0.2 run function craftsman_arms:item/gunblade/summon_recursive

# 手持ち変更
    item replace entity @s weapon.mainhand with air
    loot replace entity @s weapon.mainhand loot craftsman_arms:item/greatsword/used

# スコアセット
    scoreboard players add @s S.Rif_Combo 1
    scoreboard players set @s S.Rif_ComboWait 20

# リセット
    tag @s remove Chuz.This
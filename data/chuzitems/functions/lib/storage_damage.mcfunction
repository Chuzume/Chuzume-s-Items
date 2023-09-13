#> chuzitems:lib/storage_damage
#
# lib: Damageをダメージとして扱う
#
# @within function chuzitems:**

# 死亡ログ非表示
    gamerule showDeathMessages false

# ノックバックを無効に
    attribute @s minecraft:generic.knockback_resistance modifier add 0-0-8-2-8 "Temp_Resist" 1 add

# 射撃者特定
    execute as @e[tag=Chuz.Projectile,sort=nearest,limit=1] at @a if score @s Chuz.EntityID = @p Chuz.PlayerID run tag @p add This

# lib: Damageのぶんだけダメージ
    $damage @s $(Damage) $(DamageType) by @p[tag=This]

# 計算時に1以上だったら、射撃者の攻撃として0ダメージを与える
    execute if score $SubtractedHealth ScoreDamageCore matches 1.. run damage @s 0 minecraft:player_attack by @p[tag=This]

# 死亡ログ
    execute if entity @s[scores={Chuz.Death=1..}] run function chuzitems:lib/death_message

# リセット
    gamerule showDeathMessages true
    data remove storage lib: Damage
    data remove storage lib: DamageType
    tag @a[tag=This] remove This
    attribute @s minecraft:generic.knockback_resistance modifier remove 0-0-8-2-8
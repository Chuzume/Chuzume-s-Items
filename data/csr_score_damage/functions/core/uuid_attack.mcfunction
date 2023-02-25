#> csr_score_damage:core/uuid_attack
#
# ダメージコマンドを使って敵対を奪う
#
# @within function csr_score_damage:core/health_subtract


# ノックバックを無効に
    attribute @s minecraft:generic.knockback_resistance modifier add 0-0-8-2-8 "Temp_Resist" 1 add

# 射撃者特定
    execute as @e[tag=Chuz.Projectile,sort=nearest,limit=1] at @a if score @s Chuz.EntityID = @p Chuz.PlayerID run tag @p add This

# 計算時に1以上だったら、射撃者の攻撃として0ダメージを与える
    execute if score $SubtractedHealth ScoreDamageCore matches 1.. run damage @s 0 minecraft:player_attack by @p[tag=This]

# 計算時に0を下回ったら、射撃者の攻撃としてトドメを刺す
    execute if score $SubtractedHealth ScoreDamageCore matches ..0 run damage @s 9999 minecraft:player_attack by @p[tag=This]

# リセット
    tag @a[tag=This] remove This
    attribute @s minecraft:generic.knockback_resistance modifier remove 0-0-8-2-8
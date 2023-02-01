#> chuzitems:message/death
#
# 
#
# @within function csr_score_damage:core/health_subtract

# まずバニラのメッセージを非表示に
    gamerule showDeathMessages false

# 射撃者特定
    execute as @e[tag=Chuz.Projectile,sort=nearest,limit=1] at @a if score @s Chuz.EntityID = @p Chuz.PlayerID run tag @p add This

# 射撃者の手持ちを特定
    # お願いOhMyDat!
        execute as @p[tag=This] run function oh_my_dat:please
    # キラーの手持ちのRawNameを取る
        data modify storage chuz:context KillerItem.HoldItem set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.Mainhand.tag.ChuzData.RawName

# メッセージ
    tellraw @a {"storage": "chuz:context", "nbt": "DeathMessage", "interpret": true}

# 死ぬ
    kill @s

# リセット
    tag @a[tag=This] remove This
    data remove storage chuz:context DeathMessage
    data remove storage chuz:context KillerItem.HoldItem
    gamerule showDeathMessages true
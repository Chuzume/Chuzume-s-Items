#> chuzitems:item/wingman/mainhand/standby/shot/init
#
# 
#
# @within function chuzitems:item/wingman/mainhand/standby/shot/

## タグ設定
    tag @s add Chuz.Projectile
    tag @s add ChuzItems.RecursiveBullet
    tag @s add ChuzItems.Projectile.Wingman
    tag @s add Chuz.UUIDAttack

## お願いOhMyDat!
    function oh_my_dat:please

## 弾のステータスを設定
    # ダメージ(ボディ)
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.BodyDamage set value 8.0
    # ダメージ(ヘッド)
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.HeadDamage set value 16.0
    # 弾速
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Speed set value 45
    # 飛距離
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Range set value 400
    # どれほど遠くから拡散するか
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Distance set value 1.0f
    # 拡散の大きさ
        # 腰だめ
            execute if entity @p[tag=This,tag=ChuzItems.Shot.Normal] unless score @p[tag=This] ChuzItems.Wingman.Spread matches 0.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Spread set value 0.0f
            execute if entity @p[tag=This,tag=ChuzItems.Shot.Normal] if score @p[tag=This] ChuzItems.Wingman.Spread matches 0.. run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Spread set value 0.5f
            execute if entity @p[tag=This,tag=ChuzItems.Shot.Normal] run scoreboard players set @p[tag=This] ChuzItems.Wingman.Spread 15
        # ADS
            execute if entity @p[tag=This,tag=ChuzItems.Shot.ADS] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Spread set value 0.0f
    # ダメージタイプ(胴体)
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.DamageType.Body set value "chuzitems:bullet"
    # ダメージタイプ(頭)
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.DamageType.Head set value "chuzitems:bullet_headshot"

# これらの設定を反映する
    function chuzitems:entity/projectile/recursive_bullet/init

# 全部終わってから位置を下げる
    tp @s ~ ~-0.15 ~
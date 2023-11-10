#> chuzitems:item/techkit_revomachine_gun/mainhand/standby/shot/init
#
# 
#
# @within function chuzitems:item/techkit_revomachine_gun/mainhand/standby/shot/

## タグ設定
    tag @s add Chuz.Projectile
    tag @s add ChuzItems.RecursiveBullet
    tag @s add ChuzItems.Projectile.RevoBullet
    tag @s add Chuz.UUIDAttack

## お願いOhMyDat!
    function oh_my_dat:please

## 弾のステータスを設定
    # ダメージ(ボディ)
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.BodyDamage set value 4.0
    # ダメージ(ヘッド)
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.HeadDamage set value 5.0
    # 弾速
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Speed set value 20
    # 飛距離
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Range set value 400
    # どれほど遠くから拡散するか
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Distance set value 3.0f
    # 拡散の大きさ
        # 腰だめ
            execute if entity @p[tag=This,tag=ChuzItems.Shot.Normal] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Spread set value 0.2f
        # ADS
            execute if entity @p[tag=This,tag=ChuzItems.Shot.ADS] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Spread set value 0.01f
    # ダメージタイプ(胴体)
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.DamageType.Body set value "chuzitems:bullet"
    # ダメージタイプ(頭)
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.DamageType.Head set value "chuzitems:bullet_headshot"
# これらの設定を反映する
    function chuzitems:entity/projectile/recursive_bullet/init

# 全部終わってから位置を下げる
    tp @s ~ ~-0.12 ~
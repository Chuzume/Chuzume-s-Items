#> chuzitems:item/craftsman_scoped_rifle/mainhand/standby/shot/charge1/init
#
# 
#
# @within function chuzitems:item/craftsman_scoped_rifle/mainhand/standby/shot/charge1/

## タグ設定
    tag @s add Chuz.Projectile
    tag @s add ChuzItems.RecursiveBullet
    tag @s add ChuzItems.Projectile.Sharpshoot
    tag @s add Chuz.UUIDAttack

## お願いOhMyDat!
    function oh_my_dat:please

## 弾のステータスを設定
    # ダメージ(ボディ)
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.BodyDamage set value 9.0
    # ダメージ(ヘッド)
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.HeadDamage set value 26.0
    # 弾速
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Speed set value 90
    # 飛距離
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Range set value 800
    # どれほど遠くから拡散するか
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Distance set value 10.0f
    # ダメージタイプ(胴体)
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.DamageType.Body set value "chuzitems:bullet"
    # ダメージタイプ(頭)
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.DamageType.Head set value "chuzitems:bullet_headshot"
    # 拡散の大きさ
        # 腰だめ
            execute if entity @p[tag=This,tag=!Chuz.Using.Spyglass] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Spread set value 1.0f
        # スコープ
            execute if entity @p[tag=This,tag=Chuz.Using.Spyglass] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Spread set value 0.0f

# これらの設定を反映する
    function chuzitems:entity/projectile/recursive_bullet/init

# 全部終わってから位置を下げる
    tp @s ~ ~-0.3 ~
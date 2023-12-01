#> chuzitems:item/shooting_star_longbow/common/shoot
#
# 
#
# @within function chuzitems:item/shooting_star_longbow/common/main


# サウンドを停止
    stopsound @s player minecraft:entity.arrow.shoot

# フレイムかどうか取得
    execute if data entity @e[type=arrow,sort=nearest,limit=1] {Fire:2000s} run data modify storage chuz:context arrow.flame set value 1b

# 最寄りの矢のダメージを保存
    data modify storage chuz:context arrow.damage set from entity @e[type=arrow,sort=nearest,limit=1] damage

# ノーチャージ
    execute if score @s ChuzItems.Bow.Charge matches ..18 anchored eyes positioned ^ ^ ^ run function chuzitems:item/shooting_star_longbow/common/normalshot/

# チャージ
    execute if score @s ChuzItems.Bow.Charge matches 19.. anchored eyes positioned ^ ^ ^ run function chuzitems:item/shooting_star_longbow/common/chargeshot/

# 矢を削除
    kill @e[type=arrow,sort=nearest,limit=1]
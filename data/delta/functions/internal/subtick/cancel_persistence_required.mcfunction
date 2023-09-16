#> delta:internal/subtick/cancel_persistence_required
#
# 
#
# @within function delta:internal/subtick/post_explosion_trigger

# デスポーンしないようにする
    data modify entity @s PersistenceRequired set value 0b

# タグつけとく
    tag @s remove delta.nodespawn
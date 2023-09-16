#> delta:internal/subtick/prevention_despawn
#
# 
#
# @within function delta:internal/subtick/begin_launch_context

# デスポーンしないようにする
    data modify entity @s PersistenceRequired set value 1b

# タグつけとく
    tag @s add delta.nodespawn
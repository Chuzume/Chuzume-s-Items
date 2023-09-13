#> chuzitems:lib/player_motion/summon_recursive
#
# 
#
# @within function
#   chuzitems:lib/player_motion/
#   chuzitems:lib/player_motion/summon_recursive

# クリーパー召喚
    summon creeper ~ ~ ~ {Fuse:0s,ExplosionRadius:1b,PersistenceRequired:1b}

# スコア減算
    scoreboard players remove $Power Chuz.Motion.Power 1

# 再帰
    execute if score $Power Chuz.Motion.Power matches 0.. run function chuzitems:lib/player_motion/summon_recursive
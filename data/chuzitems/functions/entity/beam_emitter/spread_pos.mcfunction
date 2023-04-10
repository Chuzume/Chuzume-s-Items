#> chuzitems:entity/beam_emitter/spread_pos
#
# 
#
# @within function chuzitems:entity/beam_emitter/tick

#> ビームPos
# @private
    #declare tag BeamPos

# 拡散させてそこからビーム撃つ
    summon marker ~ ~ ~ {Tags:["BeamPos"]}
    spreadplayers ~ ~ 10 10 true @e[type=marker,tag=BeamPos,sort=nearest,limit=1]
    execute at @e[type=marker,tag=BeamPos,sort=nearest,limit=1] positioned ~ ~20 ~ run function chuzitems:entity/beam_emitter/shoot 
    kill @e[type=marker,tag=BeamPos,sort=nearest,limit=1]
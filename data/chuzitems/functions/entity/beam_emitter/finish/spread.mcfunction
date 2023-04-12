#> chuzitems:entity/beam_emitter/finish/spread
#
# 
#
# @within function chuzitems:entity/beam_emitter/tick

#> ビームPos
# @private
    #declare tag BeamPos

# 拡散させてそこからビーム撃つ
    summon marker ~ ~ ~ {Tags:["BeamPos"]}
    spreadplayers ~ ~ 90 90 true @e[type=marker,tag=BeamPos,sort=nearest,limit=1]
    execute at @e[type=marker,tag=BeamPos,sort=nearest,limit=1] positioned ~ ~60 ~ run function chuzitems:entity/beam_emitter/finish/shoot 
    kill @e[type=marker,tag=BeamPos,sort=nearest,limit=1]
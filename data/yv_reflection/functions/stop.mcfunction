#> yv_reflection:stop

# タグ付け
    tag @s add YvBounce.Stop

# SFX
    #playsound entity.experience_orb.pickup neutral @a ~ ~ ~ 2 2
    #execute if block ~ ~ ~ cauldron run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;48127]}]}}}}

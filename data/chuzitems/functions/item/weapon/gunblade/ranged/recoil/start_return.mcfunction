#> chuzitems:item/weapon/gunblade/ranged/recoil/start_return
#
# 反動が上がりきったときの処理
#
# @within function chuzitems:item/weapon/gunblade/ranged/recoil/main

# 上がりきった時点での角度を記録  
    execute store result score @s ChuzItems.RecoilSaveY run data get entity @s Rotation[0] 10000
    execute store result score @s ChuzItems.RecoilSaveX run data get entity @s Rotation[1] 10000
    tellraw @a [{"text":"リコイル開始時の角度: "},{"score":{"objective":"ChuzItems.RecoilSaveX","name":"@s"}}]

# 反動を記録、リコイル開始
    data modify storage chuz:context RecoilSize set value [0.0f,-5.1f]
    tag @s add yavu

# ヤブリコイルシステムを起動
    function chuzitems:common/recoil/yavu_recoil_start

# リセット
    tag @s remove ChuzItems.ActiveRecoil
    scoreboard players reset @s ChuzItems.Recoil.Gunblade
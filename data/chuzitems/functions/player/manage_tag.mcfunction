#> chuzitems:player/manage_tag
#
# タグ管理
#
# @within function chuzitems:player/tick

# Chuz.PlayerShouldInvulnerable: 無敵かどうか
    tag @s[tag=Chuz.PlayerShouldInvulnerable] remove Chuz.PlayerShouldInvulnerable
    tag @s[gamemode=!adventure,gamemode=!survival] add Chuz.PlayerShouldInvulnerable
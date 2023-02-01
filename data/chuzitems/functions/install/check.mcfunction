#> chuzitems:install/check
#
# インストールチェック
#
# @within advancement chuzitems:entered_world


execute unless data storage chuz:storage ChuzItems.Install run function chuzitems:install/main
data modify storage chuz:storage ChuzItems.Install set value 1
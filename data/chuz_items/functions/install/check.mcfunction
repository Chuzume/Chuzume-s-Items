#> chuz_items:install/check
#
# インストールチェック
#
# @within advancement chuz_items:entered_world


execute unless data storage chuz:storage ChuzItems.Install run function chuz_items:install/main
data modify storage chuz:storage ChuzItems.Install set value 1
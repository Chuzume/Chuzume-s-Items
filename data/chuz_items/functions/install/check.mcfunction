#> chuz_items:install/check
#
# インストールチェック
#
# @within advancement chuz_items:entered_world


execute unless data storage chuz:storage S.Rif_Install run function chuz_items:install/main
data modify storage chuz:storage S.Rif_Install set value 1
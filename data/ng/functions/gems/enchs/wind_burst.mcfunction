execute store result score #ench_lvl_origin ng run data get storage ng:tmp offhand.components."minecraft:enchantments".levels."minecraft:wind_burst"
execute store result score #ench_lvl_update ng run data get storage ng:tmp mainhand.components."minecraft:custom_data".enchantments."minecraft:wind_burst"
execute if score #ench_lvl_origin ng > #ench_lvl_update ng run return -1
execute if score #ench_lvl_origin ng = #ench_lvl_update ng store result storage ng:tmp offhand.components."minecraft:enchantments".levels."minecraft:wind_burst" int 1 run scoreboard players add #ench_lvl_update ng 1
execute if score #ench_lvl_origin ng < #ench_lvl_update ng store result storage ng:tmp offhand.components."minecraft:enchantments".levels."minecraft:wind_burst" int 1 run scoreboard players get #ench_lvl_update ng
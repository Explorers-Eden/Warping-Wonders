execute if items entity @s weapon.* minecraft:recovery_compass if data entity @s LastDeathLocation run function wawo:recovery_compass/modify/weapon/init
execute if items entity @s inventory.* minecraft:recovery_compass if data entity @s LastDeathLocation run function wawo:recovery_compass/modify/inventory/init
execute if items entity @s hotbar.* minecraft:recovery_compass if data entity @s LastDeathLocation run function wawo:recovery_compass/modify/hotbar/init

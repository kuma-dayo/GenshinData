-- 地图配置
scene_config = {
	begin_pos = { x = -1024.0, z = -1024.0 },
	size = { x = 2048.0, z = 2048.0 },
	born_pos = { x = 0.000, y = -6.558, z = 93.000 },
	born_rot = { x = 0.000, y = 180.000, z = 0.000 },
	born_point_list = {
		{ pos = { x = -0.209, y = -6.837, z = 89.840 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
		{ pos = { x = 4.297, y = -6.837, z = 93.382 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
		{ pos = { x = -4.482, y = -6.837, z = 93.452 }, rot = { x = 0.000, y = 180.000, z = 0.000 } },
		{ pos = { x = 0.099, y = -6.837, z = 97.465 }, rot = { x = 0.000, y = 180.000, z = 0.000 } }
	},
	die_y = -20
}

-- 所有的区块
blocks = { 40403 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = -1024.0, z = -1024.0 }, max = { x = 1024.0, z = 1024.0 } }
}

-- Dummy Points
dummy_points = { }

-- Routes
routes_config = { "routes" }
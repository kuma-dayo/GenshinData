-- 地图配置
scene_config = {
	begin_pos = { x = -200.0, z = -200.0 },
	size = { x = 400.0, z = 400.0 },
	born_pos = { x = 0.000, y = 6.000, z = -4.000 },
	born_rot = { x = 0.000, y = 0.000, z = 0.000 },
	born_point_list = {
		{ pos = { x = 0.000, y = 6.000, z = -4.000 }, rot = { x = 0.000, y = 0.000, z = 0.000 } }
	},
	die_y = -30
}

-- 所有的区块
blocks = { 1035 }

-- 所有的区块范围坐标
block_rects = {
	{ min = { x = -200.0, z = -200.0 }, max = { x = 200.0, z = 200.0 } }
}

-- Dummy Points
dummy_points = { "dummy_points" }

-- Routes
routes_config = { }
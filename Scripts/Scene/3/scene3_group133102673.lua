--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 673003, monster_id = 28010301, pos = { x = 1327.359, y = 200.278, z = 926.384 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 5 },
	{ config_id = 673004, monster_id = 28010301, pos = { x = 1335.617, y = 200.006, z = 928.788 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 5 },
	{ config_id = 673005, monster_id = 28010301, pos = { x = 1331.052, y = 200.400, z = 933.746 }, rot = { x = 0.000, y = 203.333, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
}

-- 区域
regions = {
}

-- 触发器
triggers = {
}

-- 变量
variables = {
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 0,
	rand_suite = false
}

--================================================================
-- 
-- 小组配置
-- 
--================================================================

suites = {
	{
		-- suite_id = 1,
		-- description = ,
		monsters = { 673003, 673004, 673005 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================
--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 309002, monster_id = 28010302, pos = { x = 604.576, y = 204.476, z = 907.718 }, rot = { x = 0.000, y = 256.073, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 6 },
	{ config_id = 309003, monster_id = 28010301, pos = { x = 601.076, y = 204.476, z = 909.143 }, rot = { x = 0.000, y = 96.485, z = 0.000 }, level = 19, drop_tag = "采集动物", area_id = 6 }
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
		monsters = { 309002, 309003 },
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
--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 343001, monster_id = 28050101, pos = { x = 1409.963, y = 286.288, z = -1815.145 }, rot = { x = 0.312, y = 79.546, z = 1.691 }, level = 15, drop_tag = "魔法生物", area_id = 2 },
	{ config_id = 343002, monster_id = 28050101, pos = { x = 1410.021, y = 285.995, z = -1813.971 }, rot = { x = 0.000, y = 117.421, z = 0.000 }, level = 15, drop_tag = "魔法生物", area_id = 2 },
	{ config_id = 343003, monster_id = 20010401, pos = { x = 1411.909, y = 286.235, z = -1814.792 }, rot = { x = 0.000, y = 273.735, z = 0.000 }, level = 18, drop_tag = "大史莱姆", area_id = 2 }
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
		monsters = { 343001, 343002, 343003 },
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
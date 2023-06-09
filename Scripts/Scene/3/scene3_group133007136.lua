--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 214, monster_id = 28010202, pos = { x = 2955.969, y = 207.028, z = 106.907 }, rot = { x = 0.000, y = 39.491, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 4 },
	{ config_id = 215, monster_id = 28010202, pos = { x = 2957.484, y = 207.078, z = 107.342 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 4 },
	{ config_id = 216, monster_id = 28010202, pos = { x = 2956.350, y = 207.087, z = 109.202 }, rot = { x = 0.000, y = 108.086, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 4 },
	{ config_id = 217, monster_id = 28010202, pos = { x = 2957.733, y = 207.138, z = 110.311 }, rot = { x = 0.000, y = 197.680, z = 0.000 }, level = 1, drop_tag = "采集动物", area_id = 4 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 464, gadget_id = 70211101, pos = { x = 2957.491, y = 207.101, z = 108.676 }, rot = { x = 0.000, y = 207.405, z = 0.000 }, level = 21, drop_tag = "解谜低级蒙德", isOneoff = true, persistent = true, explore = { name = "chest", exp = 1 }, area_id = 4 }
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
	rand_suite = true
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
		monsters = { 214, 215, 216, 217 },
		gadgets = { 464 },
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
--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 278, monster_id = 28040101, pos = { x = 1777.119, y = 210.700, z = 589.899 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, drop_tag = "水族", area_id = 5 },
	{ config_id = 279, monster_id = 28040101, pos = { x = 1780.809, y = 210.700, z = 592.130 }, rot = { x = 0.000, y = 193.491, z = 0.000 }, level = 18, drop_tag = "水族", area_id = 5 },
	{ config_id = 280, monster_id = 28040102, pos = { x = 1785.441, y = 210.700, z = 590.979 }, rot = { x = 0.000, y = 193.491, z = 0.000 }, level = 18, drop_tag = "水族", area_id = 5 },
	{ config_id = 281, monster_id = 28040102, pos = { x = 1773.049, y = 210.700, z = 588.958 }, rot = { x = 0.000, y = 275.318, z = 0.000 }, level = 18, drop_tag = "水族", area_id = 5 },
	{ config_id = 282, monster_id = 28040103, pos = { x = 1801.136, y = 210.700, z = 602.147 }, rot = { x = 0.000, y = 275.318, z = 0.000 }, level = 18, drop_tag = "水族", area_id = 5 },
	{ config_id = 283, monster_id = 28040102, pos = { x = 1811.866, y = 210.700, z = 603.297 }, rot = { x = 0.000, y = 171.956, z = 0.000 }, level = 18, drop_tag = "水族", area_id = 5 },
	{ config_id = 284, monster_id = 28040102, pos = { x = 1798.715, y = 210.700, z = 600.693 }, rot = { x = 0.000, y = 171.956, z = 0.000 }, level = 18, drop_tag = "水族", area_id = 5 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 156001, gadget_id = 70360046, pos = { x = 1811.200, y = 209.626, z = 600.741 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 18, area_id = 5 }
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
		monsters = { },
		gadgets = { 156001 },
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
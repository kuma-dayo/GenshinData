--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 730001, gadget_id = 70700005, pos = { x = 2147.886, y = 236.274, z = -1662.095 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 19, area_id = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1730002, name = "GROUP_LOAD_730002", event = EventType.EVENT_GROUP_LOAD, source = "", condition = "", action = "action_EVENT_GROUP_LOAD_730002", trigger_count = 0 }
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
		gadgets = { 730001 },
		regions = { },
		triggers = { "GROUP_LOAD_730002" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GROUP_LOAD_730002(context, evt)
	-- 需要在group创建时调用，该函数会通过context的groupid读取HuntingData表，来创建entity填充points
	    if 0~= ScriptLib.RefreshHuntingClueGroup(context) then
	    	ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_hunting_clue_group")
	    	return -1
		end
	
	return 0
end
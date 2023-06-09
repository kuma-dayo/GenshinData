--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 58008, monster_id = 20010801, pos = { x = 2355.156, y = 283.898, z = -1749.917 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 50, drop_tag = "史莱姆" },
	{ config_id = 58009, monster_id = 20010801, pos = { x = 2347.777, y = 283.898, z = -1746.373 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 50, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 58001, gadget_id = 70360002, pos = { x = 2353.324, y = 283.743, z = -1736.626 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 58006, gadget_id = 70220013, pos = { x = 2354.636, y = 283.898, z = -1725.431 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 58007, gadget_id = 70220013, pos = { x = 2346.874, y = 283.898, z = -1727.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1058002, name = "GADGET_CREATE_58002", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_58002", action = "action_EVENT_GADGET_CREATE_58002", trigger_count = 0 },
	{ config_id = 1058003, name = "SELECT_OPTION_58003", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_58003", action = "action_EVENT_SELECT_OPTION_58003", trigger_count = 0 },
	{ config_id = 1058004, name = "CHALLENGE_FAIL_58004", event = EventType.EVENT_CHALLENGE_FAIL, source = "", condition = "", action = "action_EVENT_CHALLENGE_FAIL_58004", trigger_count = 0 },
	{ config_id = 1058005, name = "CHALLENGE_SUCCESS_58005", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_58005", trigger_count = 0 },
	{ config_id = 1058010, name = "ANY_GADGET_DIE_58010", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_58010", trigger_count = 0, tag = "9003" },
	{ config_id = 1058011, name = "ANY_MONSTER_DIE_58011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "", action = "action_EVENT_ANY_MONSTER_DIE_58011", trigger_count = 0, tag = "9002" }
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
	suite = 2,
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
		monsters = { 58008, 58009 },
		gadgets = { 58001, 58006, 58007 },
		regions = { },
		triggers = { "GADGET_CREATE_58002", "SELECT_OPTION_58003", "CHALLENGE_FAIL_58004", "CHALLENGE_SUCCESS_58005", "ANY_GADGET_DIE_58010", "ANY_MONSTER_DIE_58011" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
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

-- 触发条件
function condition_EVENT_GADGET_CREATE_58002(context, evt)
	if 58001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_58002(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101058, 58001, {7}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_58003(context, evt)
	-- 判断是gadgetid 58001 option_id 7
	if 58001 ~= evt.param1 then
		return false	
	end
	
	if 7 ~= evt.param2 then
		return false
	end
	
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_58003(context, evt)
	ScriptLib.CreateFatherChallenge(context, 9001, 9001, 300, {success = 6, fail = 4})
	ScriptLib.AttachChildChallenge(context, 9001, 9002, 9002, {300,1,9002,1},{},{success=6,fail=2})
	ScriptLib.AttachChildChallenge(context, 9001, 9003, 9003, {300,2,9002,5},{},{success=2,fail=2})
	ScriptLib.StartFatherChallenge(context, 9001)
	ScriptLib.DelWorktopOptionByGroupId(context, 111101058, 58001, 7)
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_58004(context, evt)
		if evt.source_name == "9001" then
			-- 恢复suite
			ScriptLib.SetWorktopOptionsByGroupId(context, 111101058, 58001, {7})
			return 0
		end
		return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_58005(context, evt)
		if evt.source_name == "9001" then
			ScriptLib.SetWorktopOptionsByGroupId(context, 111101058, 58001, {7})
			return 0
		end
		
		if evt.source_name == "9003" then
			ScriptLib.AttachChildChallenge(context, 9001, 9004, 9004, {111101058,1,5},{},{success=3,fail=3})
		end
		
		return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_58010(context, evt)
	ScriptLib.CreateGadget(context, {config_id = evt.param1})
	return 0
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_58011(context, evt)
	-- 创建id为0的gadget
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = evt.param1, delay_time = 0 }) then
	  return -1
	end
	
	return 0
end
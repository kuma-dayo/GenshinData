-- Trigger变量
local defs = {
	group_id = 111101001,
	gadget_target_1S = 1002,
	gadget_target_1E = 1005,
	gadget_target_2S = 1003,
	gadget_target_2E = 1006,
	gadget_target_3S = 1004,
	gadget_target_3E = 1007
}

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
	{ config_id = 1001, gadget_id = 70360008, pos = { x = 2533.962, y = 212.140, z = -1360.861 }, rot = { x = 0.000, y = 268.800, z = 0.000 }, level = 1 },
	{ config_id = 1002, gadget_id = 70360011, pos = { x = 2527.262, y = 217.835, z = -1359.861 }, rot = { x = 0.000, y = 302.600, z = 0.000 }, level = 1 },
	{ config_id = 1003, gadget_id = 70360012, pos = { x = 2537.362, y = 217.959, z = -1360.761 }, rot = { x = 0.000, y = 240.700, z = 0.000 }, level = 1 },
	{ config_id = 1004, gadget_id = 70360013, pos = { x = 2538.862, y = 217.918, z = -1364.461 }, rot = { x = 0.000, y = 136.900, z = 0.000 }, level = 1 },
	{ config_id = 1005, gadget_id = 70360014, pos = { x = 2527.262, y = 217.835, z = -1359.861 }, rot = { x = 0.000, y = 187.800, z = 0.000 }, level = 1, route_id = 110100001 },
	{ config_id = 1006, gadget_id = 70360014, pos = { x = 2537.362, y = 217.959, z = -1360.661 }, rot = { x = 0.000, y = 287.700, z = 0.000 }, level = 1, route_id = 110100002 },
	{ config_id = 1007, gadget_id = 70360014, pos = { x = 2538.862, y = 217.918, z = -1364.461 }, rot = { x = 0.000, y = 299.100, z = 0.000 }, level = 1, route_id = 110100003 },
	{ config_id = 1008, gadget_id = 70211111, pos = { x = 2533.929, y = 212.276, z = -1362.295 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1001009, name = "GADGET_STATE_CHANGE_1009", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "", action = "action_EVENT_GADGET_STATE_CHANGE_1009", trigger_count = 0 },
	{ config_id = 1001010, name = "GADGET_STATE_CHANGE_1010", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1010", action = "action_EVENT_GADGET_STATE_CHANGE_1010" },
	{ config_id = 1001011, name = "VARIABLE_CHANGE_1011", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_1011", action = "action_EVENT_VARIABLE_CHANGE_1011" },
	{ config_id = 1001012, name = "GADGET_STATE_CHANGE_1012", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_1012", action = "action_EVENT_GADGET_STATE_CHANGE_1012", trigger_count = 0 },
	{ config_id = 1001013, name = "GADGET_CREATE_1013", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1013", action = "action_EVENT_GADGET_CREATE_1013", trigger_count = 0 },
	{ config_id = 1001014, name = "SELECT_OPTION_1014", event = EventType.EVENT_SELECT_OPTION, source = "", condition = "condition_EVENT_SELECT_OPTION_1014", action = "action_EVENT_SELECT_OPTION_1014", trigger_count = 0, forbid_guest = false },
	{ config_id = 1001015, name = "GROUP_REFRESH_1015", event = EventType.EVENT_GROUP_REFRESH, source = "", condition = "", action = "action_EVENT_GROUP_REFRESH_1015" },
	{ config_id = 1001016, name = "ANY_GADGET_DIE_1016", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "", action = "action_EVENT_ANY_GADGET_DIE_1016", trigger_count = 0 },
	{ config_id = 1001017, name = "GADGET_CREATE_1017", event = EventType.EVENT_GADGET_CREATE, source = "", condition = "condition_EVENT_GADGET_CREATE_1017", action = "action_EVENT_GADGET_CREATE_1017", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "count", value = 0, no_refresh = false }
}

--================================================================
-- 
-- 初始化配置
-- 
--================================================================

-- 初始化时创建
init_config = {
	suite = 1,
	end_suite = 2,
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 1001, 1002, 1003, 1004 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_1009", "GADGET_STATE_CHANGE_1010", "VARIABLE_CHANGE_1011", "GADGET_STATE_CHANGE_1012", "GADGET_CREATE_1013", "SELECT_OPTION_1014", "GROUP_REFRESH_1015", "ANY_GADGET_DIE_1016" },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = suite_2,
		monsters = { },
		gadgets = { 1001, 1008 },
		regions = { },
		triggers = { "GADGET_CREATE_1017" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1009(context, evt)
	if evt.param1 == GadgetState.GearStart and evt.param3 == GadgetState.Default then
		
	if evt.param2 == defs.gadget_target_1S  then
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_target_1E }) 
	
	elseif evt.param2 == defs.gadget_target_2S then
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_target_2E }) 
	
	elseif evt.param2 == defs.gadget_target_3S then
	ScriptLib.CreateGadget(context, { config_id = defs.gadget_target_3E }) 
	
	end
		
	return 0
	else return -1
		
	end
		
	return false
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1010(context, evt)
	if 1001 ~= evt.param2 or GadgetState.Action01 ~= evt.param1 then
	return false
	end
		
	if 0 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_target_1S)  then 
	return true
	end
		
	if 0 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_target_2S)  then 
	return true
	end
		
	if 0 == ScriptLib.GetGadgetStateByConfigId(context, defs.group_id, defs.gadget_target_3S)  then 
	return true
	end
		
	return false
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1010(context, evt)
		-- 重新生成指定group，指定suite
		if 0 ~= ScriptLib.RefreshGroup(context, { group_id = 111101001, suite = 1 }) then
	    ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : refresh_group_to_suite")
			return -1
		end
	
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_1011(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	-- 判断变量"count"为3
	if ScriptLib.GetGroupVariableValue(context, "count") ~= 3 then
			return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_1011(context, evt)
	-- 将configid为 1001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 111101001, 2) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 3, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_1012(context, evt)
	if 1001 ~= evt.param2 or GadgetState.GearStart ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_1012(context, evt)
	-- 运营数据埋点，匹配LD定义的规则使用
	    if 0 ~= ScriptLib.MarkPlayerAction(context, 2008, 1, 1) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : mark_playerAction")
	      return -1
	    end
	
	-- 删除指定group： 111101001 ；指定config：1001；物件身上指定option：171；
	if 0 ~= ScriptLib.DelWorktopOptionByGroupId(context, 111101001, 1001, 171) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : del_work_options_by_group_configId")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_1013(context, evt)
	if 1001 ~= evt.param1 or GadgetState.Default ~= ScriptLib.GetGadgetStateByConfigId(context, 0, evt.param1) then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1013(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101001, 1001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_SELECT_OPTION_1014(context, evt)
	if 1001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_SELECT_OPTION_1014(context, evt)
	-- 将configid为 1001 的物件更改为状态 GadgetState.GearStart
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.GearStart) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end

-- 触发操作
function action_EVENT_GROUP_REFRESH_1015(context, evt)
	-- 设置操作台选项
	if 0 ~= ScriptLib.SetWorktopOptionsByGroupId(context, 111101001, 1001, {171}) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_wok_options_by_configid")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_1016(context, evt)
	if evt.param1 == defs.gadget_target_1E or evt.param1 == defs.gadget_target_2E or evt.param1 == defs.gadget_target_3E then
	ScriptLib.ChangeGroupVariableValue(context, "count", 1)
	end
		
	return 0
end

-- 触发条件
function condition_EVENT_GADGET_CREATE_1017(context, evt)
	if 1001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_GADGET_CREATE_1017(context, evt)
	-- 将configid为 1001 的物件更改为状态 GadgetState.GearStop
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 1001, GadgetState.GearStop) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_configId")
			return -1
		end 
	
	return 0
end
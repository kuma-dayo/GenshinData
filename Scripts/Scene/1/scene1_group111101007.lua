-- Trigger变量
local defs = {
	max_gear = 4,
	timer = 10,
	group_id = 111101007,
	gadget_1 = 7001,
	gadget_2 = 7002,
	gadget_3 = 7003,
	gadget_4 = 7005,
	gadget_chest = 7004
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
	{ config_id = 7001, gadget_id = 70900008, pos = { x = 2585.001, y = 211.480, z = -1303.740 }, rot = { x = 0.000, y = 330.800, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 7002, gadget_id = 70900008, pos = { x = 2595.301, y = 213.434, z = -1298.940 }, rot = { x = 0.000, y = 329.000, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 7003, gadget_id = 70900008, pos = { x = 2588.101, y = 212.840, z = -1296.738 }, rot = { x = 0.000, y = 59.100, z = 0.000 }, level = 1, persistent = true },
	{ config_id = 7004, gadget_id = 70211111, pos = { x = 2590.302, y = 212.518, z = -1301.040 }, rot = { x = 0.000, y = 330.500, z = 0.000 }, level = 1, drop_tag = "解谜中级蒙德", showcutscene = true, isOneoff = true, persistent = true },
	{ config_id = 7005, gadget_id = 70900008, pos = { x = 2592.101, y = 212.608, z = -1305.640 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, persistent = true }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1007006, name = "GADGET_STATE_CHANGE_7006", event = EventType.EVENT_GADGET_STATE_CHANGE, source = "", condition = "condition_EVENT_GADGET_STATE_CHANGE_7006", action = "action_EVENT_GADGET_STATE_CHANGE_7006", trigger_count = 0 },
	{ config_id = 1007007, name = "TIMER_EVENT_7007", event = EventType.EVENT_TIMER_EVENT, source = "", condition = "condition_EVENT_TIMER_EVENT_7007", action = "action_EVENT_TIMER_EVENT_7007", trigger_count = 0 },
	{ config_id = 1007008, name = "VARIABLE_CHANGE_7008", event = EventType.EVENT_VARIABLE_CHANGE, source = "", condition = "condition_EVENT_VARIABLE_CHANGE_7008", action = "action_EVENT_VARIABLE_CHANGE_7008", trigger_count = 0 }
}

-- 变量
variables = {
	{ name = "active_count", value = 0, no_refresh = false }
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
		-- description = suite_1,
		monsters = { },
		gadgets = { 7001, 7002, 7003, 7005 },
		regions = { },
		triggers = { "GADGET_STATE_CHANGE_7006", "TIMER_EVENT_7007", "VARIABLE_CHANGE_7008" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_GADGET_STATE_CHANGE_7006(context, evt)
	if defs.gadget_1 ~= evt.param2 and defs.gadget_2 ~= evt.param2 and defs.gadget_3 ~= evt.param2 and defs.gadget_4 ~= evt.param2 then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_GADGET_STATE_CHANGE_7006(context, evt)
	if 0 == ScriptLib.GetGroupVariableValue(context, "active_count") then
	ScriptLib.MarkPlayerAction(context, 1001, 1, 1)
	end
	if evt.param1 == GadgetState.Default then
	ScriptLib.ChangeGroupVariableValue(context, "active_count", -1)
	elseif evt.param1 == GadgetState.GearStart then
	ScriptLib.ChangeGroupVariableValue(context, "active_count", 1)
	ScriptLib.CreateGroupTimerEvent(context, defs.group_id, tostring(evt.param2), defs.timer)
	else
	return -1
	end
	return 0
end

-- 触发条件
function condition_EVENT_TIMER_EVENT_7007(context, evt)
	if evt.source_name ~= tostring(defs.gadget_1) and evt.source_name ~= tostring(defs.gadget_2) and evt.source_name ~= tostring(defs.gadget_3) and evt.source_name ~= tostring(defs.gadget_4) then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_TIMER_EVENT_7007(context, evt)
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, tonumber(evt.source_name), GadgetState.Default) then
	return -1
	end 
	return 0
end

-- 触发条件
function condition_EVENT_VARIABLE_CHANGE_7008(context, evt)
	if evt.param1 == evt.param2 then return false end
	
	if evt.param1 == -1 then
	ScriptLib.MarkPlayerAction(context, 1001, 4, 1)
	end
	if evt.param1 ~= defs.max_gear then
	return false
	end
	return true
end

-- 触发操作
function action_EVENT_VARIABLE_CHANGE_7008(context, evt)
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_1))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_2))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_3))
	ScriptLib.CancelGroupTimerEvent(context, defs.group_id, tostring(defs.gadget_4))
	if ScriptLib.CreateGadget(context, { config_id = defs.gadget_chest }) ~= 0 then
	return -1
	end
	ScriptLib.MarkPlayerAction(context, 1001, 3, 1)
	return 0
end
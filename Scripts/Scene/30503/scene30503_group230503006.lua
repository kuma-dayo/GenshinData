--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 6001, monster_id = 20011301, pos = { x = 6.236, y = 0.034, z = -4.897 }, rot = { x = 0.000, y = 346.531, z = 0.000 }, level = 1 },
	{ config_id = 6002, monster_id = 20011301, pos = { x = -7.039, y = 0.034, z = -4.910 }, rot = { x = 0.000, y = 21.465, z = 0.000 }, level = 1 },
	{ config_id = 6003, monster_id = 20010601, pos = { x = -6.620, y = 0.034, z = -9.820 }, rot = { x = 0.000, y = 18.562, z = 0.000 }, level = 1 },
	{ config_id = 6004, monster_id = 20010701, pos = { x = -0.086, y = 0.034, z = -11.414 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6005, monster_id = 20011301, pos = { x = 7.795, y = 0.034, z = -11.615 }, rot = { x = 0.000, y = 343.731, z = 0.000 }, level = 1, affix = { 1028 } },
	{ config_id = 6006, monster_id = 20011301, pos = { x = -11.289, y = 0.034, z = -1.014 }, rot = { x = 0.000, y = 64.828, z = 0.000 }, level = 1 },
	{ config_id = 6007, monster_id = 20010601, pos = { x = 11.788, y = 0.034, z = -0.716 }, rot = { x = 0.000, y = 270.084, z = 0.000 }, level = 1 },
	{ config_id = 6008, monster_id = 20010701, pos = { x = 1.378, y = 0.034, z = 9.969 }, rot = { x = 0.000, y = 182.789, z = 0.000 }, level = 1 },
	{ config_id = 6009, monster_id = 21020101, pos = { x = 4.389, y = 0.034, z = -7.207 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6010, monster_id = 21020201, pos = { x = -5.875, y = 0.034, z = -7.533 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 6020, monster_id = 21020201, pos = { x = 0.125, y = 0.034, z = -7.881 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, affix = { 1028 } },
	{ config_id = 6021, monster_id = 21011002, pos = { x = -15.201, y = 0.034, z = -2.465 }, rot = { x = 0.000, y = 54.941, z = 0.000 }, level = 1, pose_id = 32 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 6024, gadget_id = 70900205, pos = { x = 6.234, y = -1.425, z = 3.286 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 }
}

-- 区域
regions = {
}

-- 触发器
triggers = {
	{ config_id = 1006025, name = "MONSTER_TIDE_OVER_6025", event = EventType.EVENT_MONSTER_TIDE_OVER, source = "1", condition = "", action = "action_EVENT_MONSTER_TIDE_OVER_6025" },
	{ config_id = 1006026, name = "ANY_MONSTER_LIVE_6026", event = EventType.EVENT_ANY_MONSTER_LIVE, source = "", condition = "condition_EVENT_ANY_MONSTER_LIVE_6026", action = "action_EVENT_ANY_MONSTER_LIVE_6026" },
	{ config_id = 1006027, name = "CHALLENGE_SUCCESS_6027", event = EventType.EVENT_CHALLENGE_SUCCESS, source = "1", condition = "", action = "action_EVENT_CHALLENGE_SUCCESS_6027" },
	{ config_id = 1006028, name = "CHALLENGE_FAIL_6028", event = EventType.EVENT_CHALLENGE_FAIL, source = "1", condition = "", action = "action_EVENT_CHALLENGE_FAIL_6028" }
}

-- 变量
variables = {
	{ name = "monster_wave", value = 0, no_refresh = false }
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
		gadgets = { 6024 },
		regions = { },
		triggers = { "MONSTER_TIDE_OVER_6025", "ANY_MONSTER_LIVE_6026", "CHALLENGE_SUCCESS_6027", "CHALLENGE_FAIL_6028" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发操作
function action_EVENT_MONSTER_TIDE_OVER_6025(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6020, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 6021, delay_time = 0 }) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_monster")
	  return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_LIVE_6026(context, evt)
	if 6001 ~= evt.param1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_LIVE_6026(context, evt)
	-- 创建编号为1（该挑战的识别id),挑战内容为1043的区域挑战，具体参数填写方式，见DungeonChallengeData表中的注释，所有填写的值都必须是int类型
	if 0 ~= ScriptLib.ActiveChallenge(context, 1, 1043, 300, 230503006, 12, 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : active_challenge")
		return -1
	end
	
	-- 针对当前group内变量名为 "monster_wave" 的变量，进行修改，变化值为 1
	if 0 ~= ScriptLib.ChangeGroupVariableValue(context, "monster_wave", 1) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : change_GroupVariable")
	  return -1
	end
	
	-- 爬塔三星计时（is_stop:  0:开始计时、1:暂停计时）
	if 0 ~= ScriptLib.TowerCountTimeStatus(context, 0) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_time_status")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_SUCCESS_6027(context, evt)
	-- 改变指定group组230503004中， configid为4002的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 230503004, 4002, GadgetState.GearStart) then
	      ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : set_gadget_state_by_GroupId_ConfigId")
			return -1
		end 
	
	-- 爬塔三星计时（is_stop:  0:开始计时、1:暂停计时）
	if 0 ~= ScriptLib.TowerCountTimeStatus(context, 1) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : tower_time_status")
		return -1
	end
	
	return 0
end

-- 触发操作
function action_EVENT_CHALLENGE_FAIL_6028(context, evt)
	-- 通知任务系统完成条件类型"LUA通知"，复杂参数为quest_param的进度+1
		ScriptLib.GoBackGroupSuite(context, 230503006)
	
	-- 地城失败结算
	if 0 ~= ScriptLib.CauseDungeonFail(context) then
		ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : cause_dungeonfail")
		return -1
	end
	
	return 0
end
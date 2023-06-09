--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 71004, monster_id = 21010301, pos = { x = 2638.850, y = 381.125, z = -1730.274 }, rot = { x = 0.000, y = 14.880, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 71005, monster_id = 21010301, pos = { x = 2637.591, y = 380.783, z = -1729.575 }, rot = { x = 0.000, y = 28.592, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 71006, monster_id = 21010101, pos = { x = 2635.859, y = 380.431, z = -1729.764 }, rot = { x = 0.000, y = 72.068, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 71007, monster_id = 21010101, pos = { x = 2635.296, y = 379.875, z = -1726.780 }, rot = { x = 0.000, y = 95.347, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 71008, monster_id = 21010101, pos = { x = 2639.870, y = 381.306, z = -1731.572 }, rot = { x = 0.000, y = 356.304, z = 0.000 }, level = 1, drop_tag = "丘丘人" },
	{ config_id = 71009, monster_id = 21010101, pos = { x = 2641.899, y = 381.682, z = -1731.151 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, drop_tag = "丘丘人" }
}

-- NPC
npcs = {
	{ config_id = 71001, npc_id = 10045, pos = { x = 2639.752, y = 381.183, z = -1728.017 }, rot = { x = 0.000, y = 207.600, z = 0.000 } },
	{ config_id = 71002, npc_id = 1001, pos = { x = 2639.433, y = 381.134, z = -1727.500 }, rot = { x = 0.000, y = 202.640, z = 0.000 } },
	{ config_id = 71003, npc_id = 1008, pos = { x = 2638.723, y = 380.915, z = -1727.417 }, rot = { x = 0.000, y = 189.379, z = 0.000 } }
}

-- 装置
gadgets = {
	{ config_id = 71012, gadget_id = 70360014, pos = { x = 2639.379, y = 381.154, z = -1728.790 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, route_id = 110100020 },
	{ config_id = 71015, gadget_id = 70220013, pos = { x = 2602.721, y = 368.309, z = -1712.043 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 71016, gadget_id = 70220013, pos = { x = 2601.479, y = 367.580, z = -1709.983 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 71020, gadget_id = 70220013, pos = { x = 2599.853, y = 367.057, z = -1709.891 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 71021, gadget_id = 70220013, pos = { x = 2603.281, y = 368.133, z = -1709.950 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1 },
	{ config_id = 71022, gadget_id = 70211001, pos = { x = 2601.276, y = 368.390, z = -1715.153 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 6, drop_tag = "战斗低级蒙德", showcutscene = true, isOneoff = true, persistent = true }
}

-- 区域
regions = {
	{ config_id = 71010, shape = RegionShape.SPHERE, radius = 7.8, pos = { x = 2636.096, y = 380.685, z = -1731.195 } }
}

-- 触发器
triggers = {
	{ config_id = 1071010, name = "ENTER_REGION_71010", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_71010", action = "action_EVENT_ENTER_REGION_71010" },
	{ config_id = 1071011, name = "ANY_MONSTER_DIE_71011", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_71011", action = "action_EVENT_ANY_MONSTER_DIE_71011" },
	{ config_id = 1071013, name = "ANY_GADGET_DIE_71013", event = EventType.EVENT_ANY_GADGET_DIE, source = "", condition = "condition_EVENT_ANY_GADGET_DIE_71013", action = "action_EVENT_ANY_GADGET_DIE_71013" },
	{ config_id = 1071023, name = "AVATAR_NEAR_PLATFORM_71023", event = EventType.EVENT_AVATAR_NEAR_PLATFORM, source = "", condition = "condition_EVENT_AVATAR_NEAR_PLATFORM_71023", action = "action_EVENT_AVATAR_NEAR_PLATFORM_71023" },
	{ config_id = 1071024, name = "PLATFORM_REACH_POINT_71024", event = EventType.EVENT_PLATFORM_REACH_POINT, source = "", condition = "condition_EVENT_PLATFORM_REACH_POINT_71024", action = "action_EVENT_PLATFORM_REACH_POINT_71024" }
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
		gadgets = { },
		regions = { 71010 },
		triggers = { "ENTER_REGION_71010", "ANY_MONSTER_DIE_71011", "ANY_GADGET_DIE_71013", "AVATAR_NEAR_PLATFORM_71023", "PLATFORM_REACH_POINT_71024" },
		npcs = { 71001, 71002, 71003 },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { 71004, 71005, 71006, 71007, 71008, 71009 },
		gadgets = { },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = ,
		monsters = { },
		gadgets = { 71012, 71015, 71016, 71020, 71021 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = ,
		monsters = { },
		gadgets = { 71022 },
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
function condition_EVENT_ENTER_REGION_71010(context, evt)
	if evt.param1 ~= 71010 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ENTER_REGION_71010(context, evt)
	-- 添加suite2的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101071, 2)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_71011(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 111101071) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_71011(context, evt)
	-- 添加suite3的新内容
	    ScriptLib.AddExtraGroupSuite(context, 111101071, 3)
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_GADGET_DIE_71013(context, evt)
	local num = 0
	if evt.param1 == 70220013 then
		num = num+1
	end
	if 3== num then
		return true	
	end 
	
	if 3~= num then
		return false
	end
end

-- 触发操作
function action_EVENT_ANY_GADGET_DIE_71013(context, evt)
	-- group调整group进度,只对非randSuite有效
	if 0 ~= ScriptLib.GoToGroupSuite(context, 111101071, 4) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : goto_groupSuite")
		return -1
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_AVATAR_NEAR_PLATFORM_71023(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	return true
	
end

-- 触发操作
function action_EVENT_AVATAR_NEAR_PLATFORM_71023(context, evt)
	if 0 ~= ScriptLib.StartPlatform(context, 71012) then
	return -1
	end
	
	-- 运营数据埋点，匹配LD定义的规则使用
	if 0 ~= evt.param3 then
	ScriptLib.MarkPlayerAction(context, 2005, 2, evt.param3 + 1)
	end
	
	return 0
end

-- 触发条件
function condition_EVENT_PLATFORM_REACH_POINT_71024(context, evt)
	if defs.gadget_seelie ~= evt.param1 then
	return false
	end
	
	if defs.route_2 ~= evt.param2 then
	return false
	end
	
	if defs.final_point == evt.param3 then
	return false
	end
	
	return true
	
end

-- 触发操作
function action_EVENT_PLATFORM_REACH_POINT_71024(context, evt)
	-- 停止移动平台
	if 0 ~= ScriptLib.StopPlatform(context, 71012) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : stop_platform")
	  return -1
	end
	
	-- 在当前group下创建新的变量，名称为 ""，初始值为0，整形，如果已经存在，返回-1
	if 0 ~= ScriptLib.CreateGroupVariable(context, "", 0) then
	  ScriptLib.PrintContextLog(context, "@@ LUA_WARNING : create_GroupVariable")
	  return -1
	end
	
	return 0
end
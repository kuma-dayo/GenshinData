--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 154, monster_id = 20011001, pos = { x = 2060.503, y = 268.599, z = -377.370 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, drop_tag = "史莱姆" },
	{ config_id = 155, monster_id = 20011001, pos = { x = 2061.159, y = 270.379, z = -378.904 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, drop_tag = "史莱姆" },
	{ config_id = 156, monster_id = 20011001, pos = { x = 2065.364, y = 270.667, z = -382.918 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 13, drop_tag = "史莱姆" }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 199, gadget_id = 70211102, pos = { x = 2062.183, y = 265.704, z = -380.574 }, rot = { x = 11.717, y = 153.570, z = 11.818 }, level = 15, drop_tag = "解谜低级蒙德", isOneoff = true }
}

-- 区域
regions = {
	{ config_id = 47, shape = RegionShape.SPHERE, radius = 5, pos = { x = 2062.377, y = 265.358, z = -386.913 } }
}

-- 触发器
triggers = {
	{ name = "ENTER_REGION_47", event = EventType.EVENT_ENTER_REGION, source = "", condition = "", action = "action_EVENT_ENTER_REGION_47" },
	{ name = "ANY_MONSTER_DIE_55", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_55", action = "action_EVENT_ANY_MONSTER_DIE_55" }
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
		monsters = { },
		gadgets = { 199 },
		regions = { 47 },
		triggers = { "ENTER_REGION_47", "ANY_MONSTER_DIE_55" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件

-- 触发操作
function action_EVENT_ENTER_REGION_47(context, evt)
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 154, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 155, delay_time = 0 }) then
	  return -1
	end
	
	-- 延迟0秒刷怪
	if 0 ~= ScriptLib.CreateMonster(context, { config_id = 156, delay_time = 0 }) then
	  return -1
	end
	
	-- 将configid为 199 的物件更改为状态 GadgetState.ChestLocked
	if 0 ~= ScriptLib.SetGadgetStateByConfigId(context, 199, GadgetState.ChestLocked) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_55(context, evt)
	-- 判断指定group组剩余怪物数量是否是0 
	if ScriptLib.GetGroupMonsterCountByGroupId(context, 133004040) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_55(context, evt)
	-- 解锁目标199
	if 0 ~= ScriptLib.ChangeGroupGadget(context, { config_id = 199, state = GadgetState.Default }) then
		return -1
	end
	
	return 0
end

--================================================================
-- 
-- 配置
-- 
--================================================================

-- 怪物
monsters = {
	{ config_id = 35, monster_id = 21010401, pos = { x = 2883.549, y = 212.849, z = -59.090 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", pose_id = 402 },
	{ config_id = 36, monster_id = 21010401, pos = { x = 2889.828, y = 212.909, z = -48.989 }, rot = { x = 0.000, y = 279.978, z = 0.000 }, level = 30, drop_tag = "远程丘丘人", pose_id = 402 },
	{ config_id = 37, monster_id = 21020101, pos = { x = 2883.175, y = 208.986, z = -50.100 }, rot = { x = 0.000, y = 316.068, z = 0.000 }, level = 30, drop_tag = "丘丘暴徒", disableWander = true, pose_id = 0 }
}

-- NPC
npcs = {
}

-- 装置
gadgets = {
	{ config_id = 622, gadget_id = 70310001, pos = { x = 2882.712, y = 208.502, z = -56.922 }, rot = { x = 0.000, y = 241.393, z = 0.000 }, level = 23, state = GadgetState.GearStart },
	{ config_id = 623, gadget_id = 70310001, pos = { x = 2888.660, y = 209.207, z = -50.513 }, rot = { x = 0.000, y = 134.440, z = 0.000 }, level = 23, state = GadgetState.GearStart }
}

-- 区域
regions = {
	{ config_id = 273, shape = RegionShape.SPHERE, radius = 10, pos = { x = 2885.679, y = 209.169, z = -52.675 } }
}

-- 触发器
triggers = {
	{ name = "ANY_MONSTER_DIE_86", event = EventType.EVENT_ANY_MONSTER_DIE, source = "", condition = "condition_EVENT_ANY_MONSTER_DIE_86", action = "action_EVENT_ANY_MONSTER_DIE_86", tlog_tag = "风龙_17_边缘夹道怪物_成功" },
	{ name = "ENTER_REGION_273", event = EventType.EVENT_ENTER_REGION, source = "", condition = "condition_EVENT_ENTER_REGION_273", action = "", tlog_tag = "风龙_17_营地_触发" }
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
		monsters = { 35, 36, 37 },
		gadgets = { 622, 623 },
		regions = { 273 },
		triggers = { "ANY_MONSTER_DIE_86", "ENTER_REGION_273" },
		rand_weight = 100
	}
}

--================================================================
-- 
-- 触发器
-- 
--================================================================

-- 触发条件
function condition_EVENT_ANY_MONSTER_DIE_86(context, evt)
	-- 判断剩余怪物数量是否是0
	if ScriptLib.GetGroupMonsterCount(context) ~= 0 then
		return false
	end
	
	return true
end

-- 触发操作
function action_EVENT_ANY_MONSTER_DIE_86(context, evt)
	-- 改变指定group组133007182中， configid为589的gadget的state
	if 0 ~= ScriptLib.SetGroupGadgetStateByConfigId(context, 133007182, 589, GadgetState.Default) then
			return -1
		end 
	
	return 0
end

-- 触发条件
function condition_EVENT_ENTER_REGION_273(context, evt)
	if evt.param1 ~= 273 then return false end
	
	-- 判断角色数量不少于1
	if ScriptLib.GetRegionEntityCount(context, { region_eid = evt.source_eid, entity_type = EntityType.AVATAR }) < 1 then
		return false
	end
	
	return true
end

-- 触发操作

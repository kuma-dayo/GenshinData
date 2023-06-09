-- DEFS_MISCS
local defs = {
        group_id = 133004005,
        gadget_prison_list = {5002},
        gadget_guide = {5074,5003,5004},            
        bait_list = {
                [1] = {5059,5060,5061},
                [2] = {5005,5081,5082},
                [3] = {5083,5084,5085},
        }, 
        duration = 210,		
        rampage_time = 40,		
        gadget_energy = 5068,	
        galleryId = 7004,
        eye_point = 5063,	
}


local energy_info = {
        [1] = { time = 100, step = {-30,30},points = {5075,5076,5077,5078,5079,5080}},
        --[2] = { time = 180, step = {-1,1},points = {5075,5076,5077,5078,5079,5080}},
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
	[5001] = { config_id = 5001, gadget_id = 44000253, pos = { x = 1645.471, y = 298.038, z = 383.089 }, rot = { x = 0.000, y = 40.000, z = 0.000 }, level = 10, area_id = 5 },
	[5002] = { config_id = 5002, gadget_id = 70310056, pos = { x = 1641.975, y = 293.721, z = 374.511 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 10, area_id = 5 },
	[5003] = { config_id = 5003, gadget_id = 44000106, pos = { x = 1649.086, y = 299.227, z = 386.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 5 },
	[5004] = { config_id = 5004, gadget_id = 44000106, pos = { x = 1649.086, y = 299.227, z = 386.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 5 },
	[5005] = { config_id = 5005, gadget_id = 44000107, pos = { x = 1649.084, y = 299.276, z = 386.946 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 5 },
	[5006] = { config_id = 5006, gadget_id = 44000253, pos = { x = 1643.800, y = 298.309, z = 385.899 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 10, area_id = 5 },
	[5007] = { config_id = 5007, gadget_id = 70310066, pos = { x = 1679.946, y = 327.000, z = 392.052 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	[5008] = { config_id = 5008, gadget_id = 44000253, pos = { x = 1666.137, y = 300.517, z = 408.885 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 5 },
	[5009] = { config_id = 5009, gadget_id = 44000253, pos = { x = 1669.068, y = 300.120, z = 412.848 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 10, area_id = 5 },
	[5010] = { config_id = 5010, gadget_id = 44000253, pos = { x = 1672.471, y = 298.710, z = 419.559 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 5 },
	[5011] = { config_id = 5011, gadget_id = 44000253, pos = { x = 1675.858, y = 299.359, z = 424.476 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 10, area_id = 5 },
	[5012] = { config_id = 5012, gadget_id = 44000257, pos = { x = 1691.708, y = 302.773, z = 414.878 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 10, area_id = 5 },
	[5013] = { config_id = 5013, gadget_id = 44000257, pos = { x = 1697.939, y = 303.677, z = 416.118 }, rot = { x = 0.000, y = 11.000, z = 0.000 }, level = 10, area_id = 5 },
	[5014] = { config_id = 5014, gadget_id = 44000257, pos = { x = 1698.438, y = 303.758, z = 412.008 }, rot = { x = 0.000, y = 55.000, z = 0.000 }, level = 10, area_id = 5 },
	[5015] = { config_id = 5015, gadget_id = 44000257, pos = { x = 1702.045, y = 303.697, z = 411.271 }, rot = { x = 0.000, y = 55.000, z = 0.000 }, level = 10, area_id = 5 },
	[5016] = { config_id = 5016, gadget_id = 44000257, pos = { x = 1653.988, y = 289.658, z = 389.504 }, rot = { x = 0.000, y = 55.000, z = 0.000 }, level = 10, area_id = 5 },
	[5017] = { config_id = 5017, gadget_id = 44000257, pos = { x = 1657.003, y = 292.498, z = 377.882 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 10, area_id = 5 },
	[5018] = { config_id = 5018, gadget_id = 44000257, pos = { x = 1654.722, y = 292.241, z = 382.716 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 10, area_id = 5 },
	[5019] = { config_id = 5019, gadget_id = 44000253, pos = { x = 1672.429, y = 285.682, z = 361.858 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 10, area_id = 5 },
	[5020] = { config_id = 5020, gadget_id = 44000253, pos = { x = 1667.141, y = 286.837, z = 364.197 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 5 },
	[5021] = { config_id = 5021, gadget_id = 44000253, pos = { x = 1663.864, y = 286.505, z = 375.571 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 5 },
	[5022] = { config_id = 5022, gadget_id = 44000253, pos = { x = 1660.624, y = 287.539, z = 369.334 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 5 },
	[5023] = { config_id = 5023, gadget_id = 44000253, pos = { x = 1672.413, y = 284.715, z = 383.052 }, rot = { x = 0.000, y = 60.000, z = 0.000 }, level = 10, area_id = 5 },
	[5024] = { config_id = 5024, gadget_id = 44000253, pos = { x = 1686.094, y = 284.750, z = 396.488 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 10, area_id = 5 },
	[5025] = { config_id = 5025, gadget_id = 44000257, pos = { x = 1691.165, y = 284.587, z = 387.723 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 10, area_id = 5 },
	[5026] = { config_id = 5026, gadget_id = 44000257, pos = { x = 1693.954, y = 283.550, z = 374.300 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 10, area_id = 5 },
	[5027] = { config_id = 5027, gadget_id = 44000253, pos = { x = 1712.194, y = 285.980, z = 387.288 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 10, area_id = 5 },
	[5028] = { config_id = 5028, gadget_id = 44000253, pos = { x = 1714.507, y = 286.190, z = 383.047 }, rot = { x = 10.000, y = 10.000, z = 0.000 }, level = 10, area_id = 5 },
	[5029] = { config_id = 5029, gadget_id = 44000253, pos = { x = 1712.610, y = 285.873, z = 377.511 }, rot = { x = 10.000, y = 10.000, z = 0.000 }, level = 10, area_id = 5 },
	[5030] = { config_id = 5030, gadget_id = 44000253, pos = { x = 1705.449, y = 286.986, z = 362.872 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 5 },
	[5031] = { config_id = 5031, gadget_id = 44000257, pos = { x = 1698.863, y = 285.064, z = 360.998 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 5 },
	[5032] = { config_id = 5032, gadget_id = 44000257, pos = { x = 1679.410, y = 284.750, z = 360.108 }, rot = { x = 0.000, y = 160.000, z = 0.000 }, level = 10, area_id = 5 },
	[5033] = { config_id = 5033, gadget_id = 44000253, pos = { x = 1673.021, y = 285.146, z = 367.700 }, rot = { x = 0.000, y = 160.000, z = 0.000 }, level = 10, area_id = 5 },
	[5034] = { config_id = 5034, gadget_id = 44000257, pos = { x = 1674.978, y = 289.001, z = 405.539 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 5 },
	[5035] = { config_id = 5035, gadget_id = 44000257, pos = { x = 1697.223, y = 289.640, z = 405.167 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 10, area_id = 5 },
	[5036] = { config_id = 5036, gadget_id = 44000257, pos = { x = 1699.854, y = 289.162, z = 404.093 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 5 },
	[5037] = { config_id = 5037, gadget_id = 44000257, pos = { x = 1693.643, y = 284.638, z = 379.396 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 5 },
	[5038] = { config_id = 5038, gadget_id = 44000257, pos = { x = 1706.473, y = 285.483, z = 383.881 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 5 },
	[5039] = { config_id = 5039, gadget_id = 44000257, pos = { x = 1708.556, y = 285.490, z = 381.532 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 10, area_id = 5 },
	[5040] = { config_id = 5040, gadget_id = 44000257, pos = { x = 1667.240, y = 295.316, z = 404.193 }, rot = { x = 30.000, y = 90.000, z = 0.000 }, level = 10, area_id = 5 },
	[5041] = { config_id = 5041, gadget_id = 44000257, pos = { x = 1663.819, y = 284.384, z = 392.136 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 10, area_id = 5 },
	[5042] = { config_id = 5042, gadget_id = 44000257, pos = { x = 1653.485, y = 291.251, z = 394.472 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 5 },
	[5043] = { config_id = 5043, gadget_id = 44000253, pos = { x = 1690.766, y = 284.723, z = 357.708 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 5 },
	[5044] = { config_id = 5044, gadget_id = 44000253, pos = { x = 1684.620, y = 284.883, z = 358.328 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 5 },
	[5045] = { config_id = 5045, gadget_id = 44000253, pos = { x = 1686.512, y = 284.942, z = 357.603 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 5 },
	[5046] = { config_id = 5046, gadget_id = 44000253, pos = { x = 1692.635, y = 284.702, z = 358.137 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 5 },
	[5047] = { config_id = 5047, gadget_id = 44000253, pos = { x = 1692.635, y = 284.534, z = 360.448 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 5 },
	[5048] = { config_id = 5048, gadget_id = 44000257, pos = { x = 1707.557, y = 285.625, z = 375.217 }, rot = { x = 0.000, y = 40.000, z = 0.000 }, level = 10, area_id = 5 },
	[5049] = { config_id = 5049, gadget_id = 44000257, pos = { x = 1701.744, y = 284.878, z = 385.731 }, rot = { x = 0.000, y = 40.000, z = 0.000 }, level = 10, area_id = 5 },
	[5050] = { config_id = 5050, gadget_id = 44000257, pos = { x = 1703.124, y = 284.559, z = 390.643 }, rot = { x = 0.000, y = 40.000, z = 0.000 }, level = 10, area_id = 5 },
	[5051] = { config_id = 5051, gadget_id = 44000257, pos = { x = 1710.509, y = 284.430, z = 392.815 }, rot = { x = 0.000, y = 40.000, z = 0.000 }, level = 10, area_id = 5 },
	[5052] = { config_id = 5052, gadget_id = 44000257, pos = { x = 1663.031, y = 284.414, z = 395.068 }, rot = { x = 0.000, y = 40.000, z = 0.000 }, level = 10, area_id = 5 },
	[5053] = { config_id = 5053, gadget_id = 44000257, pos = { x = 1674.338, y = 283.895, z = 399.215 }, rot = { x = 0.000, y = 5.000, z = 0.000 }, level = 10, area_id = 5 },
	[5054] = { config_id = 5054, gadget_id = 44000257, pos = { x = 1682.952, y = 286.109, z = 403.415 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 5 },
	[5055] = { config_id = 5055, gadget_id = 44000257, pos = { x = 1689.864, y = 285.751, z = 403.453 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 10, area_id = 5 },
	[5056] = { config_id = 5056, gadget_id = 44000257, pos = { x = 1691.883, y = 289.226, z = 405.991 }, rot = { x = 0.000, y = 20.000, z = 0.000 }, level = 10, area_id = 5 },
	[5057] = { config_id = 5057, gadget_id = 44000257, pos = { x = 1695.057, y = 289.262, z = 405.353 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 10, area_id = 5 },
	[5058] = { config_id = 5058, gadget_id = 44000257, pos = { x = 1689.618, y = 298.856, z = 409.995 }, rot = { x = 0.000, y = 160.000, z = 0.000 }, level = 10, area_id = 5 },
	[5059] = { config_id = 5059, gadget_id = 44000107, pos = { x = 1649.086, y = 299.227, z = 386.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 5 },
	[5060] = { config_id = 5060, gadget_id = 44000107, pos = { x = 1649.084, y = 299.276, z = 386.946 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 5 },
	[5061] = { config_id = 5061, gadget_id = 44000107, pos = { x = 1649.084, y = 299.276, z = 386.946 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 5 },
	[5068] = { config_id = 5068, gadget_id = 44000105, pos = { x = 1675.128, y = 299.168, z = 414.881 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 },
	[5074] = { config_id = 5074, gadget_id = 44000106, pos = { x = 1649.086, y = 299.227, z = 386.171 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 5 },
	[5081] = { config_id = 5081, gadget_id = 44000107, pos = { x = 1649.084, y = 299.276, z = 386.946 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 5 },
	[5082] = { config_id = 5082, gadget_id = 44000107, pos = { x = 1649.084, y = 299.276, z = 386.946 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 5 },
	[5083] = { config_id = 5083, gadget_id = 44000107, pos = { x = 1649.084, y = 299.276, z = 386.946 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 5 },
	[5084] = { config_id = 5084, gadget_id = 44000107, pos = { x = 1649.084, y = 299.276, z = 386.946 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 5 },
	[5085] = { config_id = 5085, gadget_id = 44000107, pos = { x = 1649.084, y = 299.276, z = 386.946 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 5 },
	[5086] = { config_id = 5086, gadget_id = 70310055, pos = { x = 1689.885, y = 289.824, z = 386.154 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 5 }
}

-- 区域
regions = {
	[5062] = { config_id = 5062, shape = RegionShape.SPHERE, radius = 200, pos = { x = 1649.685, y = 289.578, z = 364.747 }, area_id = 5, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	[5063] = { config_id = 5063, shape = RegionShape.SPHERE, radius = 80, pos = { x = 1678.939, y = 327.416, z = 390.740 }, area_id = 5, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 5064, pos = { x = 1641.975, y = 295.154, z = 374.511 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, area_id = 5 },
	{ config_id = 5065, pos = { x = 1649.597, y = 294.718, z = 372.840 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, area_id = 5 },
	{ config_id = 5066, pos = { x = 1649.385, y = 296.442, z = 376.941 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, area_id = 5 },
	{ config_id = 5067, pos = { x = 1649.447, y = 297.458, z = 380.445 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, area_id = 5 },
	{ config_id = 5075, pos = { x = 1675.128, y = 299.168, z = 414.881 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 5 },
	{ config_id = 5076, pos = { x = 1679.870, y = 291.597, z = 377.628 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 5 },
	{ config_id = 5077, pos = { x = 1712.156, y = 286.025, z = 382.977 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 5 },
	{ config_id = 5078, pos = { x = 1685.673, y = 285.977, z = 402.681 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 5 },
	{ config_id = 5079, pos = { x = 1652.879, y = 296.559, z = 376.838 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 5 },
	{ config_id = 5080, pos = { x = 1664.772, y = 287.163, z = 364.908 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 5 }
}

-- 变量
variables = {
}

-- 视野组
sight_groups = {
	{ 5002, 5059, 5060, 5061, 5068 }
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
		gadgets = { 5002 },
		regions = { 5062, 5063 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = ,
		monsters = { },
		gadgets = { 5008, 5009, 5010, 5011, 5012, 5013, 5014, 5015, 5016, 5017, 5018, 5019, 5020, 5021, 5022, 5023, 5024, 5025, 5026, 5027, 5028, 5029, 5030, 5031, 5032, 5033, 5034, 5035, 5036, 5037, 5038, 5039, 5040, 5041, 5042, 5043, 5044, 5045, 5046, 5047, 5048, 5049, 5050, 5051, 5052, 5053, 5054, 5055, 5056, 5057, 5058 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 预留,
		monsters = { },
		gadgets = { 5001, 5006, 5007, 5086 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 4,
		-- description = 预留,
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

require "V1_5/HideAndSeek_Gallery"
require "V1_5/HideAndSeek_Skill"
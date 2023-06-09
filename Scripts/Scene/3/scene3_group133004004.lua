-- DEFS_MISCS
local defs = {
        group_id = 133004004,
        gadget_prison_list = {4002},
        gadget_guide = {4069,4079,4080},            
        bait_list = {
                [1] = {4003,4004,4005},
                [2] = {4059,4060,4061},
                [3] = {4076,4077,4078},
        },                            
        duration = 210,                
        rampage_time = 40,                
        gadget_energy = 4054,
        galleryId = 7003,
        eye_point = 4063                
}


local energy_info = {
        [1] = { time = 100, step = {-30,30},points = {4070,4071,4072,4073,4074,4075}},
       -- [2] = { time = 160, points = {4070,4071,4072,4073,4074,4075}},
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
	[4001] = { config_id = 4001, gadget_id = 70310066, pos = { x = 1753.367, y = 243.000, z = -385.748 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	[4002] = { config_id = 4002, gadget_id = 70310056, pos = { x = 1775.350, y = 219.963, z = -388.266 }, rot = { x = 0.000, y = 28.000, z = 0.000 }, level = 10, area_id = 3 },
	[4003] = { config_id = 4003, gadget_id = 44000107, pos = { x = 1773.916, y = 221.782, z = -397.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	[4004] = { config_id = 4004, gadget_id = 44000107, pos = { x = 1773.916, y = 221.782, z = -397.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	[4005] = { config_id = 4005, gadget_id = 44000107, pos = { x = 1773.916, y = 221.782, z = -397.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	[4008] = { config_id = 4008, gadget_id = 44000256, pos = { x = 1789.656, y = 221.863, z = -396.711 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	[4009] = { config_id = 4009, gadget_id = 44000256, pos = { x = 1789.069, y = 221.863, z = -398.840 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, area_id = 3 },
	[4010] = { config_id = 4010, gadget_id = 44000256, pos = { x = 1791.007, y = 223.178, z = -391.660 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, area_id = 3 },
	[4011] = { config_id = 4011, gadget_id = 44000256, pos = { x = 1780.870, y = 223.179, z = -385.709 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, area_id = 3 },
	[4012] = { config_id = 4012, gadget_id = 44000256, pos = { x = 1773.836, y = 223.179, z = -382.124 }, rot = { x = 0.000, y = 28.000, z = 0.000 }, level = 1, area_id = 3 },
	[4013] = { config_id = 4013, gadget_id = 44000256, pos = { x = 1764.072, y = 223.288, z = -376.610 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, area_id = 3 },
	[4014] = { config_id = 4014, gadget_id = 44000256, pos = { x = 1755.556, y = 223.194, z = -380.957 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, area_id = 3 },
	[4015] = { config_id = 4015, gadget_id = 44000256, pos = { x = 1750.313, y = 223.194, z = -390.849 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, area_id = 3 },
	[4016] = { config_id = 4016, gadget_id = 44000256, pos = { x = 1741.922, y = 223.194, z = -406.035 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, area_id = 3 },
	[4017] = { config_id = 4017, gadget_id = 44000256, pos = { x = 1743.274, y = 223.178, z = -417.072 }, rot = { x = 0.000, y = 55.000, z = 0.000 }, level = 1, area_id = 3 },
	[4018] = { config_id = 4018, gadget_id = 44000256, pos = { x = 1751.160, y = 223.178, z = -424.405 }, rot = { x = 0.000, y = 40.000, z = 0.000 }, level = 1, area_id = 3 },
	[4019] = { config_id = 4019, gadget_id = 44000256, pos = { x = 1759.687, y = 223.178, z = -430.434 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, area_id = 3 },
	[4020] = { config_id = 4020, gadget_id = 44000256, pos = { x = 1769.260, y = 223.178, z = -431.330 }, rot = { x = 0.000, y = 355.000, z = 0.000 }, level = 1, area_id = 3 },
	[4021] = { config_id = 4021, gadget_id = 44000256, pos = { x = 1781.023, y = 223.178, z = -425.475 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, area_id = 3 },
	[4022] = { config_id = 4022, gadget_id = 44000256, pos = { x = 1786.133, y = 223.178, z = -415.612 }, rot = { x = 0.000, y = 30.000, z = 0.000 }, level = 1, area_id = 3 },
	[4023] = { config_id = 4023, gadget_id = 44000256, pos = { x = 1794.791, y = 218.308, z = -379.162 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	[4024] = { config_id = 4024, gadget_id = 44000256, pos = { x = 1789.504, y = 218.802, z = -377.010 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	[4025] = { config_id = 4025, gadget_id = 44000256, pos = { x = 1788.078, y = 223.046, z = -391.288 }, rot = { x = 0.000, y = 90.000, z = 0.000 }, level = 1, area_id = 3 },
	[4026] = { config_id = 4026, gadget_id = 44000256, pos = { x = 1774.049, y = 220.084, z = -374.142 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	[4027] = { config_id = 4027, gadget_id = 44000256, pos = { x = 1775.930, y = 220.469, z = -370.901 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 1, area_id = 3 },
	[4028] = { config_id = 4028, gadget_id = 44000256, pos = { x = 1801.080, y = 221.796, z = -404.981 }, rot = { x = 0.000, y = 42.000, z = 0.000 }, level = 1, area_id = 3 },
	[4029] = { config_id = 4029, gadget_id = 44000256, pos = { x = 1802.491, y = 223.001, z = -402.903 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	[4030] = { config_id = 4030, gadget_id = 44000257, pos = { x = 1771.970, y = 216.871, z = -362.915 }, rot = { x = 0.000, y = 15.000, z = 0.000 }, level = 1, area_id = 3 },
	[4031] = { config_id = 4031, gadget_id = 44000257, pos = { x = 1770.953, y = 216.762, z = -362.062 }, rot = { x = 0.000, y = 1.000, z = 0.000 }, level = 1, area_id = 3 },
	[4032] = { config_id = 4032, gadget_id = 44000257, pos = { x = 1769.817, y = 216.779, z = -361.713 }, rot = { x = 0.000, y = 78.000, z = 0.000 }, level = 1, area_id = 3 },
	[4033] = { config_id = 4033, gadget_id = 44000257, pos = { x = 1744.136, y = 219.885, z = -382.543 }, rot = { x = 0.000, y = 56.000, z = 0.000 }, level = 1, area_id = 3 },
	[4034] = { config_id = 4034, gadget_id = 44000257, pos = { x = 1742.834, y = 219.233, z = -380.372 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	[4035] = { config_id = 4035, gadget_id = 44000257, pos = { x = 1740.814, y = 219.956, z = -382.585 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	[4036] = { config_id = 4036, gadget_id = 44000257, pos = { x = 1798.216, y = 222.026, z = -412.845 }, rot = { x = 0.000, y = 89.000, z = 0.000 }, level = 1, area_id = 3 },
	[4037] = { config_id = 4037, gadget_id = 44000257, pos = { x = 1800.557, y = 221.343, z = -411.868 }, rot = { x = 0.000, y = 5.000, z = 0.000 }, level = 1, area_id = 3 },
	[4038] = { config_id = 4038, gadget_id = 44000257, pos = { x = 1799.494, y = 221.529, z = -410.719 }, rot = { x = 0.000, y = 55.000, z = 0.000 }, level = 1, area_id = 3 },
	[4039] = { config_id = 4039, gadget_id = 44000257, pos = { x = 1798.884, y = 221.639, z = -409.272 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, area_id = 3 },
	[4040] = { config_id = 4040, gadget_id = 44000257, pos = { x = 1797.800, y = 218.205, z = -379.157 }, rot = { x = 0.000, y = 24.000, z = 0.000 }, level = 1, area_id = 3 },
	[4041] = { config_id = 4041, gadget_id = 44000257, pos = { x = 1796.115, y = 218.288, z = -377.784 }, rot = { x = 0.000, y = 76.000, z = 0.000 }, level = 1, area_id = 3 },
	[4042] = { config_id = 4042, gadget_id = 44000257, pos = { x = 1776.159, y = 219.614, z = -374.647 }, rot = { x = 0.000, y = 96.000, z = 0.000 }, level = 1, area_id = 3 },
	[4043] = { config_id = 4043, gadget_id = 44000257, pos = { x = 1772.674, y = 219.570, z = -372.575 }, rot = { x = 0.000, y = 123.000, z = 0.000 }, level = 1, area_id = 3 },
	[4044] = { config_id = 4044, gadget_id = 44000257, pos = { x = 1752.460, y = 218.085, z = -367.738 }, rot = { x = 0.000, y = 324.000, z = 0.000 }, level = 1, area_id = 3 },
	[4045] = { config_id = 4045, gadget_id = 44000257, pos = { x = 1754.476, y = 218.933, z = -369.820 }, rot = { x = 0.000, y = 11.000, z = 0.000 }, level = 1, area_id = 3 },
	[4046] = { config_id = 4046, gadget_id = 44000257, pos = { x = 1762.882, y = 218.443, z = -367.150 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	[4047] = { config_id = 4047, gadget_id = 44000257, pos = { x = 1761.297, y = 217.696, z = -364.589 }, rot = { x = 0.000, y = 23.000, z = 0.000 }, level = 1, area_id = 3 },
	[4048] = { config_id = 4048, gadget_id = 44000257, pos = { x = 1762.923, y = 220.117, z = -371.924 }, rot = { x = 0.000, y = 183.000, z = 0.000 }, level = 1, area_id = 3 },
	[4049] = { config_id = 4049, gadget_id = 44000257, pos = { x = 1787.059, y = 221.863, z = -410.508 }, rot = { x = 0.000, y = 33.000, z = 0.000 }, level = 1, area_id = 3 },
	[4050] = { config_id = 4050, gadget_id = 44000257, pos = { x = 1788.519, y = 221.863, z = -408.995 }, rot = { x = 0.000, y = 45.000, z = 0.000 }, level = 1, area_id = 3 },
	[4051] = { config_id = 4051, gadget_id = 44000257, pos = { x = 1753.063, y = 221.863, z = -393.370 }, rot = { x = 0.000, y = 111.000, z = 0.000 }, level = 1, area_id = 3 },
	[4052] = { config_id = 4052, gadget_id = 44000257, pos = { x = 1751.302, y = 221.863, z = -394.632 }, rot = { x = 0.000, y = 77.000, z = 0.000 }, level = 1, area_id = 3 },
	[4053] = { config_id = 4053, gadget_id = 44000257, pos = { x = 1752.297, y = 221.863, z = -391.601 }, rot = { x = 0.000, y = 34.000, z = 0.000 }, level = 1, area_id = 3 },
	[4054] = { config_id = 4054, gadget_id = 44000105, pos = { x = 1797.611, y = 221.213, z = -396.921 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
	[4055] = { config_id = 4055, gadget_id = 70310008, pos = { x = 1754.400, y = 215.470, z = -408.000 }, rot = { x = 90.000, y = 27.000, z = 0.000 }, level = 1, area_id = 3 },
	[4056] = { config_id = 4056, gadget_id = 70310008, pos = { x = 1757.740, y = 215.470, z = -409.700 }, rot = { x = 90.000, y = 27.000, z = 0.000 }, level = 1, area_id = 3 },
	[4059] = { config_id = 4059, gadget_id = 44000107, pos = { x = 1773.916, y = 221.863, z = -398.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	[4060] = { config_id = 4060, gadget_id = 44000107, pos = { x = 1773.916, y = 221.839, z = -398.047 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	[4061] = { config_id = 4061, gadget_id = 44000107, pos = { x = 1773.916, y = 221.782, z = -397.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	[4069] = { config_id = 4069, gadget_id = 44000106, pos = { x = 1773.916, y = 221.863, z = -398.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	[4076] = { config_id = 4076, gadget_id = 44000107, pos = { x = 1773.916, y = 221.782, z = -397.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	[4077] = { config_id = 4077, gadget_id = 44000107, pos = { x = 1773.916, y = 221.782, z = -397.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	[4078] = { config_id = 4078, gadget_id = 44000107, pos = { x = 1773.916, y = 221.782, z = -397.380 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	[4079] = { config_id = 4079, gadget_id = 44000106, pos = { x = 1773.916, y = 221.863, z = -398.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	[4080] = { config_id = 4080, gadget_id = 44000106, pos = { x = 1773.916, y = 221.863, z = -398.823 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 10, area_id = 3 },
	[4081] = { config_id = 4081, gadget_id = 70310055, pos = { x = 1766.288, y = 211.853, z = -388.984 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 }
}

-- 区域
regions = {
	[4062] = { config_id = 4062, shape = RegionShape.SPHERE, radius = 200, pos = { x = 1776.720, y = 221.863, z = -385.954 }, area_id = 3, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE },
	[4063] = { config_id = 4063, shape = RegionShape.SPHERE, radius = 80, pos = { x = 1762.064, y = 246.772, z = -385.745 }, area_id = 3, vision_level = VisionLevelType.VISION_LEVEL_LITTLE_REMOTE }
}

-- 触发器
triggers = {
}

-- 点位
points = {
	{ config_id = 4064, pos = { x = 1775.376, y = 221.863, z = -388.318 }, rot = { x = 0.000, y = 28.000, z = 0.000 }, area_id = 3 },
	{ config_id = 4065, pos = { x = 1781.964, y = 220.396, z = -381.205 }, rot = { x = 0.000, y = 28.000, z = 0.000 }, area_id = 3 },
	{ config_id = 4066, pos = { x = 1779.834, y = 220.160, z = -379.495 }, rot = { x = 0.000, y = 28.000, z = 0.000 }, area_id = 3 },
	{ config_id = 4067, pos = { x = 1776.827, y = 220.396, z = -378.220 }, rot = { x = 0.000, y = 28.000, z = 0.000 }, area_id = 3 },
	{ config_id = 4070, pos = { x = 1797.611, y = 221.213, z = -396.921 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 3 },
	{ config_id = 4071, pos = { x = 1776.564, y = 224.511, z = -412.960 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 3 },
	{ config_id = 4072, pos = { x = 1758.809, y = 221.104, z = -374.806 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 3 },
	{ config_id = 4073, pos = { x = 1760.024, y = 222.126, z = -416.933 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 3 },
	{ config_id = 4074, pos = { x = 1792.469, y = 222.024, z = -379.756 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 3 },
	{ config_id = 4075, pos = { x = 1744.400, y = 221.863, z = -402.698 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, area_id = 3 }
}

-- 变量
variables = {
}

-- 废弃数据
garbages = {
	gadgets = {
		{ config_id = 4006, gadget_id = 44000257, pos = { x = 1755.257, y = 221.863, z = -405.734 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 },
		{ config_id = 4007, gadget_id = 44000257, pos = { x = 1757.724, y = 221.863, z = -406.669 }, rot = { x = 0.000, y = 0.000, z = 0.000 }, level = 1, area_id = 3 }
	}
}

-- 视野组
sight_groups = {
	{ 4002, 4059, 4060, 4061 }
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
		-- description = 100%必刷,
		monsters = { },
		gadgets = { 4002 },
		regions = { 4062, 4063 },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 2,
		-- description = 50%刷,
		monsters = { },
		gadgets = { 4008, 4009, 4010, 4011, 4012, 4013, 4014, 4015, 4016, 4017, 4018, 4019, 4020, 4021, 4022, 4023, 4024, 4025, 4026, 4027, 4028, 4029, 4030, 4031, 4032, 4033, 4034, 4035, 4036, 4037, 4038, 4039, 4040, 4041, 4042, 4043, 4044, 4045, 4046, 4047, 4048, 4049, 4050, 4051, 4052, 4053 },
		regions = { },
		triggers = { },
		rand_weight = 100
	},
	{
		-- suite_id = 3,
		-- description = 能量球,
		monsters = { },
		gadgets = { 4001, 4055, 4056, 4081 },
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
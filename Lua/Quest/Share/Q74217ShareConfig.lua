main_id = 74217
local tbl = {}
local n = 7421716
local v = 7421701
local n2 = 7421711
local n3 = 7421702
local n4 = 7421703
local n5 = 7421704
local n6 = 7421705
local n7 = 7421706
local n8 = 7421717
local n9 = 7421707
local n10 = 7421708
local n11 = 7421710
local n12 = 7421712
local n13 = 7421713
local n14 = 7421714
local n15 = 7421715
tbl[1] = 7421709
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
tbl[11] = n9
tbl[12] = n10
tbl[13] = n11
tbl[14] = n12
tbl[15] = n13
tbl[16] = n14
tbl[17] = n15
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

local tbl2 = {
    ["7421701"] = {},
    ["7421702"] = {},
    ["7421703"] = {},
    ["7421704"] = {},
    ["7421705"] = {},
    ["7421706"] = {},
    ["7421707"] = {
        npcs = {
            {
                id = 20657,
                alias = "Npc20657",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500081:1226.266,296.884,4340.027,0.000,106.420,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12700,
                alias = "Npc12700",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500083:1226.559,296.943,4340.984,0.000,157.531,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5344,
                alias = "Npc5344",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500078:1228.378,297.044,4338.724,0.000,139.317,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 5345,
                alias = "Npc5345",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500080:1229.522,297.081,4339.200,0.000,240.120,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["7421708"] = {},
    ["7421709"] = {},
    ["7421710"] = {
        npcs = {
            {
                id = 5344,
                alias = "Npc5344",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500078:1228.378,297.044,4338.724,0.000,139.317,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5345,
                alias = "Npc5345",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500080:1229.522,297.081,4339.200,0.000,240.120,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5346,
                alias = "Npc5346",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500079:1229.831,297.149,4342.001,0.000,338.551,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7421711"] = {},
    ["7421712"] = {},
    ["7421713"] = {
        npcs = {
            {
                id = 14069,
                alias = "Npc14069",
                script = "Actor/Npc/TempNPC",
                pos = "[11_901101012:1732.564,554.083,4591.638,0.000,88.287,0.000]",
                scene_id = 11,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14070,
                alias = "Npc14070",
                script = "Actor/Npc/TempNPC",
                pos = "[11_901101016:1733.510,554.144,4590.779,0.000,81.062,0.000]",
                scene_id = 11,
                room_id = 0,
                data_index = 2
            },
            {
                id = 14066,
                alias = "Npc14066",
                script = "Actor/Npc/TempNPC",
                pos = "[11_901101018:1760.798,565.471,4589.667,0.202,20.478,0.126]",
                scene_id = 11,
                room_id = 0,
                data_index = 3
            },
            {
                id = 14065,
                alias = "Npc14065",
                script = "Actor/Npc/TempNPC",
                pos = "[11_901101017:1759.210,564.518,4591.438,0.131,45.297,0.200]",
                scene_id = 11,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7421714"] = {},
    ["7421715"] = {},
    ["7421716"] = {}
}

local tbl3 = {
    npcs = {
        {
            id = 20657,
            alias = "Npc20657",
            script = "Actor/Npc/TempNPC",
            pos = "[3_340500081:1226.266,296.884,4340.027,0.000,106.420,0.000]",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        },
        {
            id = 12700,
            alias = "Npc12700",
            script = "Actor/Npc/TempNPC",
            pos = "[3_340500083:1226.559,296.943,4340.984,0.000,157.531,0.000]",
            scene_id = 3,
            room_id = 0,
            data_index = 2
        },
        {
            id = 5344,
            alias = "Npc5344",
            script = "Actor/Npc/NpcFSMBehaviour",
            pos = "[3_340500078:1228.378,297.044,4338.724,0.000,139.317,0.000]",
            scene_id = 3,
            room_id = 0,
            data_index = 3
        },
        {
            id = 5345,
            alias = "Npc5345",
            script = "Actor/Npc/NpcFSMBehaviour",
            pos = "[3_340500080:1229.522,297.081,4339.200,0.000,240.120,0.000]",
            scene_id = 3,
            room_id = 0,
            data_index = 4
        },
        {
            id = 5346,
            alias = "Npc5346",
            script = "Actor/Npc/NpcFSMBehaviour",
            pos = "[3_340500079:1229.831,297.149,4342.001,0.000,338.551,0.000]",
            scene_id = 3,
            room_id = 0,
            data_index = 5
        }
    }
}

local quest_var = {}
local n16 = 0
local n17 = 0
local n18 = 0
local n19 = 0
quest_var[1] = 1
quest_var[2] = n16
quest_var[3] = n17
quest_var[4] = n18
quest_var[5] = n19
tbl3.quest_var = quest_var
tbl2["7421717"] = tbl3
rewind_data = tbl2

quest_data = {
    ["7421701"] = {
        npcs = {
            {
                id = 20657,
                alias = "Npc20657",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100713:3519.849,426.619,4494.342,0.000,328.690,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12700,
                alias = "Npc12700",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100714:3519.963,426.619,4495.592,0.000,218.573,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20658,
                alias = "Npc20658",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100715:3518.430,426.619,4495.654,0.000,127.100,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7421702"] = {
        npcs = {
            {
                id = 20657,
                alias = "Npc20657",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500088:1217.990,284.386,4412.924,0.000,226.781,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5344,
                alias = "Npc5344",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500074:1226.176,296.988,4342.773,0.025,14.744,0.002]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5345,
                alias = "Npc5345",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500075:1226.475,297.033,4344.033,359.976,210.663,359.991]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 5346,
                alias = "Npc5346",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500089:1229.405,297.076,4339.467,0.154,126.863,0.089]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7421703"] = {
        npcs = {
            {
                id = 20657,
                alias = "Npc20657",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500088:1217.990,284.386,4412.924,0.000,226.781,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5344,
                alias = "Npc5344",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500074:1226.176,296.988,4342.773,0.025,14.744,0.002]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5345,
                alias = "Npc5345",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500075:1226.475,297.033,4344.033,359.976,210.663,359.991]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 5346,
                alias = "Npc5346",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500089:1229.405,297.076,4339.467,0.154,126.863,0.089]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7421704"] = {
        npcs = {
            {
                id = 20657,
                alias = "Npc20657",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500088:1217.990,284.386,4412.924,0.000,226.781,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5344,
                alias = "Npc5344",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500074:1226.176,296.988,4342.773,0.025,14.744,0.002]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5345,
                alias = "Npc5345",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500075:1226.475,297.033,4344.033,359.976,210.663,359.991]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 5346,
                alias = "Npc5346",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500089:1229.405,297.076,4339.467,0.154,126.863,0.089]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7421705"] = {
        npcs = {
            {
                id = 20657,
                alias = "Npc20657",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500088:1217.990,284.386,4412.924,0.000,226.781,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5344,
                alias = "Npc5344",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500074:1226.176,296.988,4342.773,0.025,14.744,0.002]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5345,
                alias = "Npc5345",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500075:1226.475,297.033,4344.033,359.976,210.663,359.991]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 5346,
                alias = "Npc5346",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500089:1229.405,297.076,4339.467,0.154,126.863,0.089]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7421706"] = {
        npcs = {
            {
                id = 20657,
                alias = "Npc20657",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500081:1226.266,296.884,4340.027,0.000,106.420,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12700,
                alias = "Npc12700",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340500083:1226.559,296.943,4340.984,0.000,157.531,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5344,
                alias = "Npc5344",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500078:1228.378,297.044,4338.724,0.000,139.317,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 5345,
                alias = "Npc5345",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500080:1229.522,297.081,4339.200,0.000,240.120,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 5346,
                alias = "Npc5346",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500079:1229.831,297.149,4342.001,0.000,338.551,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["7421707"] = {
        npcs = {
            {
                id = 5346,
                alias = "Npc5346",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500079:1229.831,297.149,4342.001,0.000,338.551,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7421708"] = {
        npcs = {
            {
                id = 5344,
                alias = "Npc5344",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500078:1228.378,297.044,4338.724,0.000,139.317,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5345,
                alias = "Npc5345",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500080:1229.522,297.081,4339.200,0.000,240.120,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5346,
                alias = "Npc5346",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500079:1229.831,297.149,4342.001,0.000,338.551,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 14068,
                alias = "Npc14068",
                script = "Actor/Npc/TempNPC",
                pos = "[11_901101011:1751.269,566.272,4664.879,0.000,155.057,0.000]",
                scene_id = 11,
                room_id = 0,
                data_index = 4
            },
            {
                id = 20657,
                alias = "Npc20657",
                script = "Actor/Npc/TempNPC",
                pos = "[11_901101011:1751.269,566.272,4664.879,0.000,155.057,0.000]",
                scene_id = 11,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["7421709"] = {},
    ["7421710"] = {
        npcs = {
            {
                id = 14029,
                alias = "Npc14029",
                script = "Actor/Npc/TempNPC",
                pos = "[11_901101019:1760.751,565.388,4592.417,11.324,258.243,3.104]",
                scene_id = 11,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7421711"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_340500086:1216.992,284.274,4413.820,0.000,186.168,0.000]"}}
    },
    ["7421712"] = {
        npcs = {
            {
                id = 5346,
                alias = "Npc5346",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500079:1229.831,297.149,4342.001,0.000,338.551,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14069,
                alias = "Npc14069",
                script = "Actor/Npc/TempNPC",
                pos = "[11_901101012:1732.564,554.083,4591.638,0.000,88.287,0.000]",
                scene_id = 11,
                room_id = 0,
                data_index = 2
            },
            {
                id = 14070,
                alias = "Npc14070",
                script = "Actor/Npc/TempNPC",
                pos = "[11_901101016:1733.510,554.144,4590.779,0.000,81.062,0.000]",
                scene_id = 11,
                room_id = 0,
                data_index = 3
            },
            {
                id = 14066,
                alias = "Npc14066",
                script = "Actor/Npc/TempNPC",
                pos = "[11_901101018:1760.798,565.471,4589.667,0.202,20.478,0.126]",
                scene_id = 11,
                room_id = 0,
                data_index = 4
            },
            {
                id = 14065,
                alias = "Npc14065",
                script = "Actor/Npc/TempNPC",
                pos = "[11_901101017:1759.210,564.518,4591.438,0.131,45.297,0.200]",
                scene_id = 11,
                room_id = 0,
                data_index = 5
            },
            {
                id = 20658,
                alias = "Npc20658",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[11_901101012:1732.564,554.083,4591.638,0.000,88.287,0.000]",
                scene_id = 11,
                room_id = 0,
                data_index = 6
            },
            {
                id = 12700,
                alias = "Npc12700",
                script = "Actor/Npc/TempNPC",
                pos = "[11_901101016:1733.510,554.144,4590.779,0.000,81.062,0.000]",
                scene_id = 11,
                room_id = 0,
                data_index = 7
            },
            {
                id = 5345,
                alias = "Npc5345",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[11_901101018:1760.798,565.471,4589.667,0.202,20.478,0.126]",
                scene_id = 11,
                room_id = 0,
                data_index = 8
            },
            {
                id = 5344,
                alias = "Npc5344",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[11_901101017:1759.210,564.518,4591.438,0.131,45.297,0.200]",
                scene_id = 11,
                room_id = 0,
                data_index = 9
            }
        },
        transmit_points = {{point_id = 1, scene_id = 11, pos = "[11_901101010:1733.349,554.502,4587.710,0.000,83.630,0.000]"}}
    },
    ["7421713"] = {
        npcs = {
            {
                id = 5346,
                alias = "Npc5346",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500079:1229.831,297.149,4342.001,0.000,338.551,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14067,
                alias = "Npc14067",
                script = "Actor/Npc/TempNPC",
                pos = "[11_901101010:1733.349,554.502,4587.710,0.000,83.630,0.000]",
                scene_id = 11,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20658,
                alias = "Npc20658",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[11_901101012:1732.564,554.083,4591.638,0.000,88.287,0.000]",
                scene_id = 11,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12700,
                alias = "Npc12700",
                script = "Actor/Npc/TempNPC",
                pos = "[11_901101016:1733.510,554.144,4590.779,0.000,81.062,0.000]",
                scene_id = 11,
                room_id = 0,
                data_index = 4
            },
            {
                id = 5345,
                alias = "Npc5345",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[11_901101018:1760.798,565.471,4589.667,0.202,20.478,0.126]",
                scene_id = 11,
                room_id = 0,
                data_index = 5
            },
            {
                id = 5344,
                alias = "Npc5344",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[11_901101017:1759.210,564.518,4591.438,0.131,45.297,0.200]",
                scene_id = 11,
                room_id = 0,
                data_index = 6
            },
            {
                id = 5346,
                alias = "Npc5346",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[11_901101010:1733.349,554.502,4587.710,0.000,83.630,0.000]",
                scene_id = 11,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["7421714"] = {
        npcs = {
            {
                id = 5344,
                alias = "Npc5344",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500078:1228.378,297.044,4338.724,0.000,139.317,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5345,
                alias = "Npc5345",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500080:1229.522,297.081,4339.200,0.000,240.120,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 5346,
                alias = "Npc5346",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500079:1229.831,297.149,4342.001,0.000,338.551,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7421715"] = {
        npcs = {
            {
                id = 5346,
                alias = "Npc5346",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340500079:1229.831,297.149,4342.001,0.000,338.551,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7421716"] = {},
    ["7421717"] = {}
}

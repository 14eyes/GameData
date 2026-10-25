main_id = 19098
local tbl = {}
local n = 1909802
local v = 1909803
local n2 = 1909805
local n3 = 1909806
local n4 = 1909807
local n5 = 1909808
local n6 = 1909810
local n7 = 1909809
local n8 = 1909811
tbl[1] = 1909801
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "0"
tbl3[1] = "133304598,133304600"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1909801"] = {},
    ["1909802"] = {
        npcs = {
            {
                id = 4125,
                alias = "Npc4125",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4199:-2016.037,204.451,2598.471,0.000,251.790,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13456,
                alias = "Npc13456",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5118:-2044.741,204.451,2591.426]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["1909803"] = {
        npcs = {
            {
                id = 13304,
                alias = "Npc13304",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4192:-2046.079,204.451,2578.017,0.000,297.120,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13305,
                alias = "Npc13305",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4194:-2048.258,204.891,2588.951,0.000,91.514,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 4125,
                alias = "Npc4125",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4199:-2016.037,204.451,2598.471,0.000,251.790,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13456,
                alias = "Npc13456",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5118:-2044.741,204.451,2591.426]",
                scene_id = 3,
                room_id = 0,
                data_index = 11
            }
        }
    },
    ["1909805"] = {
        npcs = {
            {
                id = 13456,
                alias = "Npc13456",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5118:-2044.741,204.451,2591.426]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["1909806"] = {
        npcs = {
            {
                id = 13456,
                alias = "Npc13456",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5118:-2044.741,204.451,2591.426]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["1909807"] = {
        npcs = {
            {
                id = 4109,
                alias = "Npc4109",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4441:-2038.569,204.451,2592.785,0.000,204.345,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13456,
                alias = "Npc13456",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5118:-2044.741,204.451,2591.426]",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    }
}

quest_data = {
    ["1909801"] = {
        npcs = {
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4189:-2041.076,204.451,2590.167,0.000,240.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13304,
                alias = "Npc13304",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4191:-2049.100,205.878,2585.771,0.000,133.052,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13305,
                alias = "Npc13305",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4193:-2047.628,205.878,2584.616,0.000,304.882,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 4125,
                alias = "Npc4125",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4199:-2016.037,204.451,2598.471,0.000,251.790,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 13456,
                alias = "Npc13456",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5118:-2044.741,204.451,2591.426]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4189:-2041.076,204.451,2590.167,0.000,240.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1909802"] = {
        npcs = {
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4189:-2041.076,204.451,2590.167,0.000,240.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13304,
                alias = "Npc13304",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4192:-2046.079,204.451,2578.017,0.000,297.120,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13305,
                alias = "Npc13305",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4194:-2048.258,204.891,2588.951,0.000,91.514,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4189:-2041.076,204.451,2590.167,0.000,240.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1909803"] = {
        npcs = {
            {
                id = 516,
                alias = "Coop_Kaeya",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4190:-2029.303,204.451,2593.135,0.000,75.610,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4190:-2029.303,204.451,2593.135,0.000,75.610,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1909805"] = {
        npcs = {
            {
                id = 13304,
                alias = "Npc13304",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4196:-2038.230,204.451,2585.242,0.000,311.270,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13305,
                alias = "Npc13305",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4197:-2041.478,204.451,2583.368,0.000,29.451,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 4125,
                alias = "Npc4125",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4199:-2016.037,204.451,2598.471,0.000,251.790,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 517,
                alias = "Coop_KaeyaCostume",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4189:-2041.076,204.451,2590.167,0.000,240.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4189:-2041.076,204.451,2590.167,0.000,240.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1909806"] = {
        npcs = {
            {
                id = 13304,
                alias = "Npc13304",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4196:-2038.230,204.451,2585.242,0.000,311.270,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13305,
                alias = "Npc13305",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4197:-2041.478,204.451,2583.368,0.000,29.451,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13306,
                alias = "Npc13306",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4727:-2041.089,204.451,2583.269,0.000,15.065,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 4125,
                alias = "Npc4125",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4725:-2039.556,204.451,2584.664,0.000,283.344,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 4124,
                alias = "Npc4124",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4440:-2040.335,204.473,2592.241,0.480,175.603,359.197]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 4109,
                alias = "Npc4109",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4441:-2038.569,204.451,2592.785,0.000,204.345,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 517,
                alias = "Coop_KaeyaCostume",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4726:-2041.691,204.451,2585.341,0.000,106.875,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4726:-2041.691,204.451,2585.341,0.000,106.875,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["1909807"] = {
        npcs = {
            {
                id = 517,
                alias = "Coop_KaeyaCostume",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4187:-2117.902,202.412,2579.893]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13420,
                alias = "Npc13420",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4959:-2118.937,203.083,2578.075]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "[3_4187:-2117.902,202.412,2579.893]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1909808"] = {},
    ["1909809"] = {},
    ["1909810"] = {},
    ["1909811"] = {}
}

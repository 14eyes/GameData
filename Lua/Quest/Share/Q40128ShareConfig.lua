main_id = 40128
local tbl = {}
local n = 4012811
local v = 4012802
local n2 = 4012809
local n3 = 4012812
local n4 = 4012807
local n5 = 4012808
local n6 = 4012803
local n7 = 4012813
local n8 = 4012815
local n9 = 4012814
local n10 = 4012810
local n11 = 4012804
local n12 = 4012805
local n13 = 4012806
tbl[1] = 4012801
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = "0"
tbl3[1] = "133412029,133412013,133412035"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120596"}}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl4 = {}
local str2 = "133401305,1"
tbl4[1] = "3"
tbl4[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl4
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4012801"] = {},
    ["4012802"] = {
        npcs = {
            {
                id = 13587,
                alias = "Npc13587",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6203:3407.276,443.425,3007.426,0.000,284.490,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012803"] = {
        npcs = {
            {
                id = 13587,
                alias = "Npc13587",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6204:3404.114,443.361,3006.626,0.000,286.693,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012805"] = {
        npcs = {
            {
                id = 13587,
                alias = "Npc13587",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6204:3404.114,443.361,3006.626,0.000,286.693,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012806"] = {},
    ["4012807"] = {},
    ["4012808"] = {
        npcs = {
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5805:3402.004,443.419,3010.890,0.000,328.466,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13587,
                alias = "Npc13587",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6204:3404.114,443.361,3006.626,0.000,286.693,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4012809"] = {},
    ["4012810"] = {
        npcs = {
            {
                id = 13587,
                alias = "Npc13587",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6204:3404.114,443.361,3006.626,0.000,286.693,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012811"] = {
        npcs = {
            {
                id = 13587,
                alias = "Npc13587",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6203:3407.276,443.425,3007.426,0.000,284.490,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012812"] = {
        npcs = {
            {
                id = 13587,
                alias = "Npc13587",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6774:3401.507,443.382,3006.241,0.000,249.320,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012813"] = {},
    ["4012814"] = {},
    ["4012815"] = {},
    ["4012804"] = {
        npcs = {
            {
                id = 13587,
                alias = "Npc13587",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6204:3404.114,443.361,3006.626,0.000,286.693,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4012801"] = {
        npcs = {
            {
                id = 5073,
                alias = "Npc5073",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_5849:3739.988,445.171,4257.840,0.000,85.053,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13587,
                alias = "Npc13587",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6203:3407.276,443.425,3007.426,0.000,284.490,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4012802"] = {
        npcs = {
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5799:3399.716,443.369,3009.962,0.000,202.065,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13643,
                alias = "Npc13643",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6202:3394.011,440.000,2966.784]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4012803"] = {
        npcs = {
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5799:3399.716,443.369,3009.962,0.000,202.065,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012804"] = {
        npcs = {
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5799:3399.716,443.369,3009.962,0.000,202.065,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012805"] = {
        npcs = {
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5802:3453.555,444.311,2905.784]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13558,
                alias = "Npc13558",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6115:3387.248,440.073,2997.518,0.000,248.640,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4012806"] = {
        npcs = {
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5804:3407.753,443.358,3003.493,0.091,275.294,358.351]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13587,
                alias = "Npc13587",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6204:3404.114,443.361,3006.626,0.000,286.693,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4012807"] = {
        npcs = {
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5805:3402.004,443.419,3010.890,0.000,328.466,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13587,
                alias = "Npc13587",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6204:3404.114,443.361,3006.626,0.000,286.693,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4012808"] = {},
    ["4012809"] = {
        npcs = {
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5799:3399.716,443.369,3009.962,0.000,202.065,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13587,
                alias = "Npc13587",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6204:3404.114,443.361,3006.626,0.000,286.693,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4012810"] = {
        npcs = {
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5799:3399.716,443.369,3009.962,0.000,202.065,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012811"] = {
        npcs = {
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5799:3399.716,443.369,3009.962,0.000,202.065,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012812"] = {
        npcs = {
            {
                id = 1074,
                alias = "Npc1074",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5799:3399.716,443.369,3009.962,0.000,202.065,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4012813"] = {},
    ["4012814"] = {},
    ["4012815"] = {}
}

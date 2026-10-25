main_id = 20601
local tbl = {}
local n = 2060102
local v = 2060103
local n2 = 2060104
local n3 = 2060105
local n4 = 2060106
local n5 = 2060107
local n6 = 2060108
local n7 = 2060109
tbl[1] = 2060101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
sub_ids = tbl
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133003577,1"
tbl3[1] = "3"
tbl3[2] = str
local tbl4 = {}
local str2 = "133003575,1"
tbl4[1] = "3"
tbl4[2] = str2
local tbl5 = {}
local str3 = "133003576,1"
tbl5[1] = "3"
tbl5[2] = str3
local tbl6 = {}
local str4 = "133004351,1"
tbl6[1] = "3"
tbl6[2] = str4
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl4
qUEST_EXEC_REFRESH_GROUP_SUITE[3] = tbl5
qUEST_EXEC_REFRESH_GROUP_SUITE[4] = tbl6
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
finish_action = tbl2
local tbl7 = {CLIENT = {}}
local server2 = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE2 = {}
local tbl8 = {}
local str5 = "133003577,1"
tbl8[1] = "3"
tbl8[2] = str5
local tbl9 = {}
local str6 = "133003575,1"
tbl9[1] = "3"
tbl9[2] = str6
local tbl10 = {}
local str7 = "133003576,1"
tbl10[1] = "3"
tbl10[2] = str7
local tbl11 = {}
local str8 = "133004351,1"
tbl11[1] = "3"
tbl11[2] = str8
qUEST_EXEC_REFRESH_GROUP_SUITE2[1] = tbl8
qUEST_EXEC_REFRESH_GROUP_SUITE2[2] = tbl9
qUEST_EXEC_REFRESH_GROUP_SUITE2[3] = tbl10
qUEST_EXEC_REFRESH_GROUP_SUITE2[4] = tbl11
server2.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE2
tbl7.SERVER = server2
fail_action = tbl7
local tbl12 = {CLIENT = {}}
local server3 = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE3 = {}
local tbl13 = {}
local str9 = "133003577,1"
tbl13[1] = "3"
tbl13[2] = str9
local tbl14 = {}
local str10 = "133003575,1"
tbl14[1] = "3"
tbl14[2] = str10
local tbl15 = {}
local str11 = "133003576,1"
tbl15[1] = "3"
tbl15[2] = str11
local tbl16 = {}
local str12 = "133004351,1"
tbl16[1] = "3"
tbl16[2] = str12
qUEST_EXEC_REFRESH_GROUP_SUITE3[1] = tbl13
qUEST_EXEC_REFRESH_GROUP_SUITE3[2] = tbl14
qUEST_EXEC_REFRESH_GROUP_SUITE3[3] = tbl15
qUEST_EXEC_REFRESH_GROUP_SUITE3[4] = tbl16
server3.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE3
tbl12.SERVER = server3
cancel_action = tbl12

rewind_data = {
    ["2060101"] = {npcs = {}},
    ["2060102"] = {
        npcs = {
            {
                id = 1413,
                alias = "Npc1413",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601JackRescue",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1409,
                alias = "Npc1409",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601CyrusPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2060103"] = {
        npcs = {
            {
                id = 1413,
                alias = "Npc1413",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601JackRescue",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1409,
                alias = "Npc1409",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601CyrusPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2060104"] = {
        npcs = {
            {
                id = 1413,
                alias = "Npc1413",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601JackRescue",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1409,
                alias = "Npc1409",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601CyrusPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2060105"] = {
        npcs = {
            {
                id = 1413,
                alias = "Npc1413",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601JackRescue",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1409,
                alias = "Npc1409",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601CyrusPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2060106"] = {
        npcs = {
            {
                id = 1409,
                alias = "Npc1409",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601CyrusPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2060107"] = {
        npcs = {
            {
                id = 1413,
                alias = "Npc1413",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601JackHide",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1409,
                alias = "Npc1409",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601CyrusPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2060108"] = {
        npcs = {
            {
                id = 1413,
                alias = "Npc1413",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601JackHide",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1409,
                alias = "Npc1409",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601CyrusPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2060109"] = {
        npcs = {
            {
                id = 1413,
                alias = "Npc1413",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601JackHide",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1409,
                alias = "Npc1409",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601CyrusPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2060101"] = {
        npcs = {
            {
                id = 1413,
                alias = "Npc1413",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601JackRescue",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1409,
                alias = "Npc1409",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601CyrusPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1413,
                alias = "Npc1413",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601JackHide",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2060102"] = {
        npcs = {
            {
                id = 1409,
                alias = "Npc1409",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601CyrusPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1413,
                alias = "Npc1413",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601JackRescue",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1413,
                alias = "Npc1413",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601JackHide",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2060103"] = {
        npcs = {
            {
                id = 1409,
                alias = "Npc1409",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601CyrusPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1413,
                alias = "Npc1413",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601JackRescue",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1413,
                alias = "Npc1413",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601JackHide",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2060104"] = {
        npcs = {
            {
                id = 1409,
                alias = "Npc1409",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601CyrusPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1413,
                alias = "Npc1413",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601JackRescue",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1413,
                alias = "Npc1413",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601JackHide",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2060105"] = {
        npcs = {
            {
                id = 1409,
                alias = "Npc1409",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601CyrusPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1413,
                alias = "Npc1413",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601JackRescue",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1413,
                alias = "Npc1413",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601JackHide",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2060106"] = {
        npcs = {
            {
                id = 1413,
                alias = "Npc1413",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601JackHide",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1409,
                alias = "Npc1409",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601CyrusPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1413,
                alias = "Npc1413",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601JackRescue",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2060107"] = {
        npcs = {
            {
                id = 1409,
                alias = "Npc1409",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601CyrusPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1413,
                alias = "Npc1413",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601JackRescue",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1413,
                alias = "Npc1413",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601JackHide",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2060108"] = {
        npcs = {
            {
                id = 1409,
                alias = "Npc1409",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601CyrusPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1413,
                alias = "Npc1413",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601JackRescue",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1413,
                alias = "Npc1413",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601JackHide",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2060109"] = {
        npcs = {
            {
                id = 1409,
                alias = "Npc1409",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601CyrusPos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1413,
                alias = "Npc1413",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601JackRescue",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1413,
                alias = "Npc1413",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q20601JackHide",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}

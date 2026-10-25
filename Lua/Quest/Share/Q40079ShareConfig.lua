main_id = 40079
local tbl = {}
local n = 4007902
local v = 4007903
local n2 = 4007909
local n3 = 4007904
local n4 = 4007905
local n5 = 4007911
local n6 = 4007906
local n7 = 4007907
local n8 = 4007908
local n9 = 4007910
local n10 = 4007913
local n11 = 4007912
tbl[1] = 4007901
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"51"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133004049"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl4 = {}
local str2 = "201018005,1"
tbl4[1] = "1018"
tbl4[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl4
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4007901"] = {},
    ["4007902"] = {},
    ["4007903"] = {},
    ["4007904"] = {
        npcs = {
            {
                id = 30241,
                alias = "Npc30241",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007903_N30241",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4007905"] = {
        npcs = {
            {
                id = 30241,
                alias = "Npc30241",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007903_N30241",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4007906"] = {},
    ["4007907"] = {
        npcs = {
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007906_N1011",
                scene_id = 1004,
                room_id = 100402,
                data_index = 1
            },
            {
                id = 1007,
                alias = "Lisa",
                script = "Actor/Quest/Q411/Lisa",
                pos = "Q4007906_N1007",
                scene_id = 1004,
                room_id = 100402,
                data_index = 2
            }
        }
    },
    ["4007908"] = {},
    ["4007912"] = {
        npcs = {
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Quest/Q376/Diluc",
                pos = "Q4007912_N1009",
                scene_id = 1018,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1531,
                alias = "Npc1531",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4007908_N1531",
                scene_id = 1018,
                room_id = 1,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["4007901"] = {
        npcs = {
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007901_N1011",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4007902"] = {
        npcs = {
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007901_N1011",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4007903"] = {
        npcs = {
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007903_N1011",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30241,
                alias = "Npc30241",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007903_N30241",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30240,
                alias = "Npc30240",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4007903_N30240",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4007904"] = {
        npcs = {
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007903_N1011",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4007905"] = {
        npcs = {
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007905_N1011",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4007906"] = {
        npcs = {
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007906_N1011",
                scene_id = 1004,
                room_id = 100402,
                data_index = 1
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "Q4007906_N1004",
                scene_id = 1004,
                room_id = 100402,
                data_index = 2
            },
            {
                id = 1007,
                alias = "Lisa",
                script = "Actor/Quest/Q411/Lisa",
                pos = "Q4007906_N1007",
                scene_id = 1004,
                room_id = 100402,
                data_index = 3
            }
        }
    },
    ["4007907"] = {
        npcs = {
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "Q4007906_N1004",
                scene_id = 1004,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["4007908"] = {
        npcs = {
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "Q4007908_N1004",
                scene_id = 1018,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Quest/Q376/Diluc",
                pos = "Q4007908_N1009",
                scene_id = 1018,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1531,
                alias = "Npc1531",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q4007908_N1531",
                scene_id = 1018,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["4007909"] = {
        npcs = {
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007903_N1011",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30241,
                alias = "Npc30241",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007903_N30241",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4007910"] = {
        npcs = {
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "Q4007908_N1004",
                scene_id = 1018,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Quest/Q376/Diluc",
                pos = "Q4007908_N1009",
                scene_id = 1018,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["4007911"] = {
        npcs = {
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q4007905_N1011",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4007912"] = {},
    ["4007913"] = {
        npcs = {
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "Q4007908_N1004",
                scene_id = 1018,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Quest/Q376/Diluc",
                pos = "Q4007908_N1009",
                scene_id = 1018,
                room_id = 1,
                data_index = 2
            }
        }
    }
}

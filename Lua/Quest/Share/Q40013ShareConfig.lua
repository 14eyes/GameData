main_id = 40013
local tbl = {}
local n = 4001312
local v = 4001310
local n2 = 4001301
local n3 = 4001302
local n4 = 4001303
local n5 = 4001304
local n6 = 4001305
local n7 = 4001311
local n8 = 4001306
local n9 = 4001307
local n10 = 4001313
local n11 = 4001309
tbl[1] = 4001308
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
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "144003001"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl4 = {}
local str2 = "144004083,2"
tbl4[1] = "4"
tbl4[2] = str2
local tbl5 = {}
local str3 = "201004008,1"
tbl5[1] = "1004"
tbl5[2] = str3
local tbl6 = {}
local str4 = "144003013,1"
tbl6[1] = "4"
tbl6[2] = str4
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl4
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl5
qUEST_EXEC_REFRESH_GROUP_SUITE[3] = tbl6
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100823,100824,100825"}}
local qUEST_EXEC_INACTIVE_ACTIVITY_COND_STATE = {}
local tbl7 = {}
local str5 = "2005007"
tbl7[1] = "2005"
tbl7[2] = str5
local tbl8 = {}
local str6 = "2005008"
tbl8[1] = "2005"
tbl8[2] = str6
local tbl9 = {}
local str7 = "2005010"
tbl9[1] = "2005"
tbl9[2] = str7
qUEST_EXEC_INACTIVE_ACTIVITY_COND_STATE[1] = tbl7
qUEST_EXEC_INACTIVE_ACTIVITY_COND_STATE[2] = tbl8
qUEST_EXEC_INACTIVE_ACTIVITY_COND_STATE[3] = tbl9
server.QUEST_EXEC_INACTIVE_ACTIVITY_COND_STATE = qUEST_EXEC_INACTIVE_ACTIVITY_COND_STATE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4001306"] = {
        npcs = {
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "Q40013Klee",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "Q40013Barbara2",
                scene_id = 4,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "Q40013Kaeya",
                scene_id = 4,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Quest/Q411/Qin",
                pos = "Q40013Jean2",
                scene_id = 4,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Quest/Q376/Diluc",
                pos = "Q40013Diluc",
                scene_id = 4,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q40013Albedo",
                scene_id = 4,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q40013Razor",
                scene_id = 4,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["4001307"] = {
        npcs = {
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "Q40013Klee",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "Q40013Barbara2",
                scene_id = 4,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "Q40013Kaeya",
                scene_id = 4,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Quest/Q411/Qin",
                pos = "Q40013Jean2",
                scene_id = 4,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Quest/Q376/Diluc",
                pos = "Q40013Diluc",
                scene_id = 4,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q40013Albedo",
                scene_id = 4,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q40013Razor",
                scene_id = 4,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["4001308"] = {},
    ["4001309"] = {
        npcs = {
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "Q40013Klee",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "Q40013Barbara2",
                scene_id = 4,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "Q40013Kaeya",
                scene_id = 4,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Quest/Q411/Qin",
                pos = "Q40013Jean2",
                scene_id = 4,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Quest/Q376/Diluc",
                pos = "Q40013Diluc",
                scene_id = 4,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q40013Albedo",
                scene_id = 4,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q40013Razor",
                scene_id = 4,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["4001310"] = {},
    ["4001311"] = {},
    ["4001312"] = {}
}

quest_data = {
    ["4001301"] = {},
    ["4001302"] = {},
    ["4001303"] = {},
    ["4001304"] = {},
    ["4001305"] = {},
    ["4001306"] = {},
    ["4001307"] = {},
    ["4001308"] = {},
    ["4001309"] = {},
    ["4001310"] = {
        npcs = {
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "Q40013Klee2",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "Q40013Barbara",
                scene_id = 4,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Quest/Q411/Qin",
                pos = "Q40013Jean",
                scene_id = 4,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4001311"] = {
        npcs = {
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "Q40013Klee",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "Q40013Barbara2",
                scene_id = 4,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "Q40013Kaeya",
                scene_id = 4,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Quest/Q411/Qin",
                pos = "Q40013Jean2",
                scene_id = 4,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Quest/Q376/Diluc",
                pos = "Q40013Diluc",
                scene_id = 4,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q40013Albedo",
                scene_id = 4,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q40013Razor",
                scene_id = 4,
                room_id = 0,
                data_index = 7
            }
        }
    },
    ["4001312"] = {},
    ["4001313"] = {}
}

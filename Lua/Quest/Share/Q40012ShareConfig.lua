main_id = 40012
local tbl = {}
local n = 4001215
local v = 4001214
local n2 = 4001201
local n3 = 4001202
local n4 = 4001203
local n5 = 4001204
local n6 = 4001207
local n7 = 4001206
local n8 = 4001208
local n9 = 4001209
local n10 = 4001210
local n11 = 4001211
local n12 = 4001212
local n13 = 4001213
local n14 = 4001216
local n15 = 4001218
local n16 = 4001217
tbl[1] = 4001205
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
tbl[18] = n16
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "144004001"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "144002901"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "144003001"
tbl5[2] = str3
local tbl6 = {}
local str4 = ""
tbl6[1] = "144002064"
tbl6[2] = str4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[4] = tbl6
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100819"}, {"100820"}, {"100821"}, {"100822"}}
local qUEST_EXEC_INACTIVE_ACTIVITY_COND_STATE = {}
local tbl7 = {}
local str5 = "2005005"
tbl7[1] = "2005"
tbl7[2] = str5
local tbl8 = {}
local str6 = "2005006"
tbl8[1] = "2005"
tbl8[2] = str6
local tbl9 = {}
local str7 = "2005007"
tbl9[1] = "2005"
tbl9[2] = str7
local tbl10 = {}
local str8 = "2005008"
tbl10[1] = "2005"
tbl10[2] = str8
local tbl11 = {}
local str9 = "2005010"
tbl11[1] = "2005"
tbl11[2] = str9
qUEST_EXEC_INACTIVE_ACTIVITY_COND_STATE[1] = tbl7
qUEST_EXEC_INACTIVE_ACTIVITY_COND_STATE[2] = tbl8
qUEST_EXEC_INACTIVE_ACTIVITY_COND_STATE[3] = tbl9
qUEST_EXEC_INACTIVE_ACTIVITY_COND_STATE[4] = tbl10
qUEST_EXEC_INACTIVE_ACTIVITY_COND_STATE[5] = tbl11
server.QUEST_EXEC_INACTIVE_ACTIVITY_COND_STATE = qUEST_EXEC_INACTIVE_ACTIVITY_COND_STATE
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl12 = {}
local str10 = "144004083,2"
tbl12[1] = "4"
tbl12[2] = str10
local tbl13 = {}
local str11 = "201004008,1"
tbl13[1] = "1004"
tbl13[2] = str11
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl12
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl13
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4001201"] = {},
    ["4001202"] = {},
    ["4001203"] = {
        npcs = {
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "Q40012Kaeya",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Quest/Q376/Diluc",
                pos = "Q40012Diluc",
                scene_id = 4,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4001204"] = {},
    ["4001205"] = {},
    ["4001206"] = {
        npcs = {
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q40012Razor",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4001207"] = {},
    ["4001209"] = {},
    ["4001210"] = {},
    ["4001211"] = {},
    ["4001212"] = {},
    ["4001213"] = {},
    ["4001214"] = {},
    ["4001215"] = {},
    ["4001216"] = {},
    ["4001217"] = {},
    ["4001218"] = {}
}

quest_data = {
    ["4001201"] = {
        npcs = {
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "Q40012Barbara",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4001202"] = {
        npcs = {
            {
                id = 1004,
                alias = "Gaia",
                script = "Actor/Quest/Q301/Gaia301",
                pos = "Q40012Kaeya",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1009,
                alias = "Diluc",
                script = "Actor/Quest/Q376/Diluc",
                pos = "Q40012Diluc",
                scene_id = 4,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4001203"] = {},
    ["4001204"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q40012Albedo",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4001205"] = {},
    ["4001206"] = {},
    ["4001207"] = {
        npcs = {
            {
                id = 1011,
                alias = "Razor",
                script = "Actor/Npc/TempNPC",
                pos = "Q40012Razor",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4001208"] = {},
    ["4001209"] = {},
    ["4001210"] = {
        npcs = {
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "Q40012Klee2",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70710394,
                alias = "Gadget70710394",
                pos = "Q40012Crystal1",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710395,
                alias = "Gadget70710395",
                pos = "Q40012Crystal2",
                scene_id = 4,
                room_id = 0,
                data_index = 2
            },
            {
                id = 70710396,
                alias = "Gadget70710396",
                pos = "Q40012Crystal3",
                scene_id = 4,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4001211"] = {},
    ["4001212"] = {
        npcs = {
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "Q40012Klee4",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4001213"] = {
        npcs = {
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "Q40012Klee5",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4001214"] = {},
    ["4001215"] = {},
    ["4001216"] = {},
    ["4001217"] = {
        npcs = {
            {
                id = 10090,
                alias = "Npc10090",
                script = "Actor/Npc/TempNPC",
                pos = "Q40012Klee3",
                scene_id = 4,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4001218"] = {}
}

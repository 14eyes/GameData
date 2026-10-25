main_id = 19083
local tbl = {}
local n = 1908302
local v = 1908303
local n2 = 1908312
local n3 = 1908304
local n4 = 1908305
local n5 = 1908306
local n6 = 1908307
local n7 = 1908308
local n8 = 1908310
local n9 = 1908311
local n10 = 1908313
local n11 = 1908309
tbl[1] = 1908301
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
tbl3[1] = "133102928"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"500"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1908301"] = {},
    ["1908303"] = {},
    ["1908304"] = {},
    ["1908306"] = {},
    ["1908307"] = {},
    ["1908308"] = {},
    ["1908312"] = {
        npcs = {
            {
                id = 11006,
                alias = "Npc11006",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908303shayin",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["1908301"] = {},
    ["1908302"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908301Noel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 11006,
                alias = "Npc11006",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908301shayin",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1908303"] = {
        npcs = {
            {
                id = 11006,
                alias = "Npc11006",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908303shayin",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1908304"] = {},
    ["1908305"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908304Noel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1908306"] = {},
    ["1908307"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908304Noel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 11006,
                alias = "Npc11006",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908307shayin",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1908308"] = {},
    ["1908309"] = {},
    ["1908310"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908308Noel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1908311"] = {},
    ["1908312"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q1908303Noel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1908313"] = {}
}

main_id = 20073
local tbl = {}
local n = 2007302
local v = 2007304
local n2 = 2007308
local n3 = 2007307
local n4 = 2007309
local n5 = 2007303
local n6 = 2007305
local n7 = 2007306
tbl[1] = 2007301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133002931"}}}}
fail_action = {CLIENT = {}, SERVER = {QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133002931"}}}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133002931"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"101909"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2007301"] = {},
    ["2007302"] = {},
    ["2007304"] = {},
    ["2007306"] = {
        npcs = {
            {
                id = 20211,
                alias = "Npc20211",
                script = "Actor/Npc/TempNPC",
                pos = "Q20073box3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2007308"] = {}
}

quest_data = {
    ["2007301"] = {},
    ["2007302"] = {},
    ["2007303"] = {
        npcs = {
            {
                id = 20211,
                alias = "Npc20211",
                script = "Actor/Npc/TempNPC",
                pos = "Q20073box3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2007304"] = {},
    ["2007305"] = {
        npcs = {
            {
                id = 20211,
                alias = "Npc20211",
                script = "Actor/Npc/TempNPC",
                pos = "Q20073box3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2007306"] = {},
    ["2007307"] = {
        npcs = {
            {
                id = 20211,
                alias = "Npc20211",
                script = "Actor/Npc/TempNPC",
                pos = "Q20073box3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2007308"] = {
        npcs = {
            {
                id = 20211,
                alias = "Npc20211",
                script = "Actor/Npc/TempNPC",
                pos = "Q20073box3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2007309"] = {
        npcs = {
            {
                id = 20211,
                alias = "Npc20211",
                script = "Actor/Npc/TempNPC",
                pos = "Q20073box3_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

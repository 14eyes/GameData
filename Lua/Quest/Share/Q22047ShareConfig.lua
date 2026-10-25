main_id = 22047
local tbl = {}
local n = 2204702
local v = 2204703
local n2 = 2204704
tbl[1] = 2204701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133212575"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl4 = {}
local str2 = "133212207,1"
tbl4[1] = "3"
tbl4[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl4
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2204701"] = {},
    ["2204702"] = {
        npcs = {
            {
                id = 12064,
                alias = "Npc12064",
                script = "Actor/Npc/TempNPC",
                pos = "Q200917zhe",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2204703"] = {},
    ["2204704"] = {}
}

quest_data = {
    ["2204701"] = {
        npcs = {
            {
                id = 12064,
                alias = "Npc12064",
                script = "Actor/Npc/TempNPC",
                pos = "Q200917zhe",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2204702"] = {
        gadgets = {
            {
                id = 70350220,
                alias = "Gadget70350220",
                pos = "Q200918trans",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q200918trans"}}
    },
    ["2204703"] = {
        npcs = {
            {
                id = 12064,
                alias = "Npc12064",
                script = "Actor/Npc/TempNPC",
                pos = "Q200917zhe",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2204704"] = {
        npcs = {
            {
                id = 12064,
                alias = "Npc12064",
                script = "Actor/Npc/TempNPC",
                pos = "Q200917zhe",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

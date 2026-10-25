main_id = 25026
local tbl = {}
local n = 2502606
local v = 2502607
local n2 = 2502602
local n3 = 2502603
local n4 = 2502604
local n5 = 2502605
tbl[1] = 2502601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133501158,133501176"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["2502601"] = {}, ["2502602"] = {}, ["2502603"] = {}, ["2502604"] = {}, ["2502605"] = {}}

quest_data = {
    ["2502601"] = {
        npcs = {
            {
                id = 14294,
                alias = "Npc14294",
                script = "Actor/Npc/TempNPC",
                pos = "Q2502601",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2502602"] = {},
    ["2502603"] = {
        npcs = {
            {
                id = 14294,
                alias = "Npc14294",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100056:-1834.636,116.994,8739.695,0.000,201.465,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2502604"] = {},
    ["2502605"] = {
        npcs = {
            {
                id = 14294,
                alias = "Npc14294",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350100057:-1635.080,126.530,8876.872,0.000,19.723,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2502606"] = {
        npcs = {
            {
                id = 14294,
                alias = "Npc14294",
                script = "Actor/Npc/TempNPC",
                pos = "Q2502601",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2502607"] = {
        npcs = {
            {
                id = 14294,
                alias = "Npc14294",
                script = "Actor/Npc/TempNPC",
                pos = "Q2502601",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

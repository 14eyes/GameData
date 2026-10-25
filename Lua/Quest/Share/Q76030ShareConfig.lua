main_id = 76030
local tbl = {}
local n = 7603006
local v = 7603002
local n2 = 7603003
local n3 = 7603007
local n4 = 7603004
local n5 = 7603005
tbl[1] = 7603001
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
local str = "0"
tbl3[1] = "133606144"
tbl3[2] = str
local tbl4 = {}
local str2 = "0"
tbl4[1] = "133606137"
tbl4[2] = str2
local tbl5 = {}
local str3 = "0"
tbl5[1] = "133603013"
tbl5[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["7603001"] = {},
    ["7603003"] = {},
    ["7603004"] = {},
    ["7603005"] = {},
    ["7603006"] = {},
    ["7603007"] = {}
}

quest_data = {
    ["7603001"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11917:2150.177,136.010,11216.380,0.000,236.791,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7603002"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11917:2150.177,136.010,11216.380,0.000,236.791,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7603003"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11932:1744.086,200.000,10722.720]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7603004"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11932:1744.086,200.000,10722.720]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15604,
                alias = "Npc15604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11926:1758.350,200.577,10751.110]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7603005"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11926:1758.350,200.577,10751.110]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7603006"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11917:2150.177,136.010,11216.380,0.000,236.791,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7603007"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11932:1744.086,200.000,10722.720]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15604,
                alias = "Npc15604",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11926:1758.350,200.577,10751.110]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

main_id = 73520
local tbl = {}
local n = 7352002
local v = 7352003
tbl[1] = 7352001
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133302754"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["7352001"] = {},
    ["7352002"] = {
        npcs = {
            {
                id = 1055,
                alias = "Npc1055",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201411:-301.263,242.098,2864.498,0.000,63.473,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7352003"] = {
        npcs = {
            {
                id = 30353,
                alias = "Npc30353",
                script = "Actor/Npc/TempNPC",
                pos = "Q7352002_N30353",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7352001"] = {
        npcs = {
            {
                id = 1055,
                alias = "Npc1055",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330201411:-301.263,242.098,2864.498,0.000,63.473,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7352002"] = {
        npcs = {
            {
                id = 30353,
                alias = "Npc30353",
                script = "Actor/Npc/TempNPC",
                pos = "Q7352002_N30353",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7352003"] = {
        npcs = {
            {
                id = 13254,
                alias = "Npc13254",
                script = "Actor/Npc/TempNPC",
                pos = "Q7352003_N13254",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

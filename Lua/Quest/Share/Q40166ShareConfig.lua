main_id = 40166
local tbl = {}
local n = 4016603
local v = 4016604
local n2 = 4016605
tbl[1] = 4016602
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
tbl3[1] = "133304606"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["4016602"] = {}, ["4016603"] = {}, ["4016604"] = {}, ["4016605"] = {}}

quest_data = {
    ["4016602"] = {
        npcs = {
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8860:-1941.020,203.100,2506.035,0.000,209.820,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8861:-1942.458,203.030,2505.275,0.000,108.763,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1051,
                alias = "Npc1051",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9245:-1940.362,203.100,2504.906,0.000,273.885,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9249:-1941.537,203.079,2503.983,0.000,22.111,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["4016603"] = {
        npcs = {
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9285:-1944.971,203.139,2561.759,0.000,298.335,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4016604"] = {
        npcs = {
            {
                id = 1059,
                alias = "Npc1059",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8874:-1970.686,203.132,2569.458,0.000,271.502,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4016605"] = {
        npcs = {
            {
                id = 1055,
                alias = "Npc1055",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8863:-1894.070,203.100,2509.819,0.000,350.054,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14700,
                alias = "Npc14700",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9713:-1894.486,203.100,2510.802,0.000,164.799,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

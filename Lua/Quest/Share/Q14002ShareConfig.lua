main_id = 14002
local tbl = {}
local n = 1400202
local v = 1400204
local n2 = 1400205
local n3 = 1400207
local n4 = 1400206
local n5 = 1400203
tbl[1] = 1400201
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
tbl3[1] = "133402183"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133402343"
tbl4[2] = str2
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120429"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1400201"] = {},
    ["1400202"] = {},
    ["1400203"] = {},
    ["1400204"] = {},
    ["1400205"] = {},
    ["1400206"] = {}
}

quest_data = {
    ["1400201"] = {
        npcs = {
            {
                id = 1071,
                alias = "Npc1071",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_158:-0.020,-0.024,35.084]",
                scene_id = 1085,
                room_id = 1,
                data_index = 1
            },
            {
                id = 13389,
                alias = "Npc13389",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4707:2636.492,463.691,4268.835,0.000,233.400,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13390,
                alias = "Npc13390",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4708:2638.644,462.628,4276.048,0.000,326.521,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 13459,
                alias = "Npc13459",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5091:2638.648,462.812,4270.776,0.000,257.944,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1400202"] = {
        npcs = {
            {
                id = 13387,
                alias = "Npc13387",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_136:8.352,-1.668,56.377,0.000,181.840,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1071,
                alias = "Npc1071",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_158:-0.020,-0.024,35.084]",
                scene_id = 1085,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_210:6.184,-1.668,56.451,0.000,173.203,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_209:-6.200,-1.702,56.860,0.000,172.543,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["1400203"] = {},
    ["1400204"] = {
        npcs = {
            {
                id = 13387,
                alias = "Npc13387",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_211:2.660,7.281,135.479,0.000,263.755,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1071,
                alias = "Npc1071",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_160:0.900,7.281,135.216]",
                scene_id = 1085,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_212:1.711,7.281,136.680,0.000,196.561,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_209:-6.200,-1.702,56.860,0.000,172.543,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["1400205"] = {
        npcs = {
            {
                id = 13387,
                alias = "Npc13387",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_211:2.660,7.281,135.479,0.000,263.755,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1071,
                alias = "Npc1071",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4729:3413.862,535.082,3723.001,0.000,141.297,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[1085_289:-2.174,7.281,135.253,0.000,86.669,0.000]",
                scene_id = 1085,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5094:3433.269,460.294,3703.089]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1400206"] = {
        npcs = {
            {
                id = 1071,
                alias = "Npc1071",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4731:2637.052,463.417,4280.220,0.000,267.051,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1400207"] = {}
}

main_id = 25033
local tbl = {}
local n = 2503302
local v = 2503303
local n2 = 2503305
local n3 = 2503304
tbl[1] = 2503301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133504103"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2503301"] = {},
    ["2503304"] = {
        npcs = {
            {
                id = 14372,
                alias = "Npc14372",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8624:-1790.924,128.959,8027.783,0.000,278.810,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2503302"] = {
        npcs = {
            {
                id = 14371,
                alias = "Npc14371",
                script = "Actor/Npc/TempNPC",
                pos = "Q2503301_N14371",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14372,
                alias = "Npc14372",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400180:-1907.845,173.275,8019.369,0.000,254.777,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["2503301"] = {
        npcs = {
            {
                id = 14371,
                alias = "Npc14371",
                script = "Actor/Npc/TempNPC",
                pos = "Q2503301_N14371",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14372,
                alias = "Npc14372",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400180:-1907.845,173.275,8019.369,0.000,254.777,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2503302"] = {},
    ["2503303"] = {},
    ["2503304"] = {
        npcs = {
            {
                id = 14371,
                alias = "Npc14371",
                script = "Actor/Npc/TempNPC",
                pos = "Q2503301_N14371",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2503305"] = {
        npcs = {
            {
                id = 14371,
                alias = "Npc14371",
                script = "Actor/Npc/TempNPC",
                pos = "Q2503301_N14371",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14372,
                alias = "Npc14372",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400180:-1907.845,173.275,8019.369,0.000,254.777,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8626:-1930.341,280.743,7950.652,0.000,57.517,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 2, scene_id = 3, pos = "[3_350400181:-1910.978,173.792,8019.911,0.000,78.255,0.000]"}}
    }
}

main_id = 70001
local tbl = {}
local n = 7000101
local v = 7000102
local n2 = 7000103
local n3 = 7000106
local n4 = 7000107
local n5 = 7000104
local n6 = 7000105
local n7 = 7000111
tbl[1] = 7000110
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133003924,1"
tbl3[1] = "3"
tbl3[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["7000101"] = {},
    ["7000102"] = {},
    ["7000103"] = {
        npcs = {
            {
                id = 152501,
                alias = "Npc152501",
                script = "Actor/Npc/TempNPC",
                pos = "Q7000101wei",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7000104"] = {},
    ["7000105"] = {},
    ["7000106"] = {
        npcs = {
            {
                id = 10397,
                alias = "Npc10397",
                script = "Actor/Npc/TempNPC",
                pos = "Q7000103fasle1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7000107"] = {
        npcs = {
            {
                id = 10398,
                alias = "Npc10398",
                script = "Actor/Npc/TempNPC",
                pos = "Q7000103fasle2",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7000110"] = {},
    ["7000111"] = {}
}

quest_data = {
    ["7000101"] = {
        npcs = {
            {
                id = 152501,
                alias = "Npc152501",
                script = "Actor/Npc/TempNPC",
                pos = "Q7000101wei",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7000102"] = {
        npcs = {
            {
                id = 152501,
                alias = "Npc152501",
                script = "Actor/Npc/TempNPC",
                pos = "Q7000101wei",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7000103"] = {
        npcs = {
            {
                id = 10396,
                alias = "Npc10396",
                script = "Actor/Npc/TempNPC",
                pos = "Q7000103true1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10397,
                alias = "Npc10397",
                script = "Actor/Npc/TempNPC",
                pos = "Q7000103fasle1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10398,
                alias = "Npc10398",
                script = "Actor/Npc/TempNPC",
                pos = "Q7000103fasle2",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q7000103paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7000104"] = {},
    ["7000105"] = {},
    ["7000106"] = {},
    ["7000107"] = {},
    ["7000110"] = {},
    ["7000111"] = {
        npcs = {
            {
                id = 152501,
                alias = "Npc152501",
                script = "Actor/Npc/TempNPC",
                pos = "Q7000101wei",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

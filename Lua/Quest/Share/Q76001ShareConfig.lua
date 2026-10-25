main_id = 76001
local tbl = {}
local n = 7600110
local v = 7600111
local n2 = 7600101
local n3 = 7600107
local n4 = 7600102
local n5 = 7600103
local n6 = 7600108
local n7 = 7600105
local n8 = 7600106
local n9 = 7600104
tbl[1] = 7600109
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7600101"] = {},
    ["7600102"] = {},
    ["7600103"] = {},
    ["7600104"] = {},
    ["7600105"] = {},
    ["7600106"] = {
        npcs = {
            {
                id = 7066,
                alias = "Npc7066",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13247:1589.238,238.269,9516.309,0.000,349.087,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 7067,
                alias = "Npc7067",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13248:1588.639,238.269,9517.737,0.000,152.452,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7600107"] = {},
    ["7600108"] = {},
    ["7600109"] = {},
    ["7600110"] = {},
    ["7600111"] = {}
}

quest_data = {
    ["7600101"] = {},
    ["7600102"] = {},
    ["7600103"] = {},
    ["7600104"] = {
        npcs = {
            {
                id = 22163,
                alias = "Npc22163",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13249:1949.930,202.026,9080.708,0.000,92.953,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7600105"] = {
        npcs = {
            {
                id = 7066,
                alias = "Npc7066",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13247:1589.238,238.269,9516.309,0.000,349.087,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 7067,
                alias = "Npc7067",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13248:1588.639,238.269,9517.737,0.000,152.452,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7600106"] = {
        npcs = {
            {
                id = 22163,
                alias = "Npc22163",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13249:1949.930,202.026,9080.708,0.000,92.953,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7600107"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13250:1963.662,200.319,9078.467]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7600108"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13250:1963.662,200.319,9078.467]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7600109"] = {},
    ["7600110"] = {},
    ["7600111"] = {}
}

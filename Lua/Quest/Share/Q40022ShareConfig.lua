main_id = 40022
local tbl = {}
local n = 4002201
local v = 4002202
local n2 = 4002211
local n3 = 4002212
local n4 = 4002205
local n5 = 4002203
local n6 = 4002210
local n7 = 4002204
local n8 = 4002207
local n9 = 4002206
local n10 = 4002208
tbl[1] = 4002209
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
tbl[12] = n10
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["4002201"] = {},
    ["4002202"] = {},
    ["4002203"] = {},
    ["4002204"] = {},
    ["4002205"] = {},
    ["4002206"] = {},
    ["4002207"] = {},
    ["4002208"] = {
        npcs = {
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002208xinyan",
                scene_id = 47003,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30067,
                alias = "Npc30067",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002208shidajiang",
                scene_id = 47003,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4002209"] = {},
    ["4002210"] = {},
    ["4002211"] = {},
    ["4002212"] = {}
}

quest_data = {
    ["4002201"] = {
        npcs = {
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002208xinyan",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4002202"] = {},
    ["4002203"] = {
        npcs = {
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002211xinyan",
                scene_id = 47006,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10200,
                alias = "Npc10200",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002211gongzi",
                scene_id = 47006,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4002204"] = {},
    ["4002205"] = {
        gadgets = {
            {
                id = 70710489,
                alias = "Gadget70710489",
                pos = "Q4002205target2",
                scene_id = 47006,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710524,
                alias = "Gadget70710524",
                pos = "Q4002205target",
                scene_id = 47006,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4002206"] = {
        npcs = {
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002206xinyan",
                scene_id = 47003,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10200,
                alias = "Npc10200",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002206gongzi",
                scene_id = 47003,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30067,
                alias = "Npc30067",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002206shidajiang",
                scene_id = 47003,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4002207"] = {},
    ["4002208"] = {},
    ["4002209"] = {},
    ["4002210"] = {},
    ["4002211"] = {
        npcs = {
            {
                id = 1042,
                alias = "Npc1042",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002211xinyan",
                scene_id = 47006,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10200,
                alias = "Npc10200",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002211gongzi",
                scene_id = 47006,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30067,
                alias = "Npc30067",
                script = "Actor/Npc/TempNPC",
                pos = "Q4002211shidajiang",
                scene_id = 47006,
                room_id = 0,
                data_index = 3
            }
        },
        gadgets = {
            {
                id = 70710524,
                alias = "Gadget70710524",
                pos = "Q4002205target",
                scene_id = 47006,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4002212"] = {}
}

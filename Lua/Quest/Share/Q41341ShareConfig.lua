main_id = 41341
local tbl = {}
local n = 4134102
local v = 4134103
local n2 = 4134104
local n3 = 4134105
local n4 = 4134106
local n5 = 4134107
tbl[1] = 4134101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133102917"}, {"133102918"}}}}

rewind_data = {
    ["4134101"] = {},
    ["4134102"] = {
        npcs = {
            {
                id = 211801,
                alias = "Npc211801",
                script = "Actor/Npc/TempNPC",
                pos = "Q4134102Mengmeng",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4134103"] = {
        npcs = {
            {
                id = 211801,
                alias = "Npc211801",
                script = "Actor/Npc/TempNPC",
                pos = "Q4134102Mengmeng",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 211901,
                alias = "Npc211901",
                script = "Actor/Npc/TempNPC",
                pos = "Q4134102Xiaoyu",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4134104"] = {
        npcs = {
            {
                id = 211801,
                alias = "Npc211801",
                script = "Actor/Npc/TempNPC",
                pos = "Q4134102Mengmeng",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 211901,
                alias = "Npc211901",
                script = "Actor/Npc/TempNPC",
                pos = "Q4134102Xiaoyu",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4134105"] = {},
    ["4134106"] = {}
}

quest_data = {
    ["4134101"] = {
        npcs = {
            {
                id = 211801,
                alias = "Npc211801",
                script = "Actor/Npc/TempNPC",
                pos = "Q4134101Mengmeng",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4134102"] = {
        npcs = {
            {
                id = 211901,
                alias = "Npc211901",
                script = "Actor/Npc/TempNPC",
                pos = "Q4134102Xiaoyu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4134103"] = {
        gadgets = {
            {
                id = 71700184,
                alias = "Gadget71700184",
                pos = "Q4134103Light",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4134104"] = {},
    ["4134105"] = {},
    ["4134106"] = {
        npcs = {
            {
                id = 211801,
                alias = "Npc211801",
                script = "Actor/Npc/TempNPC",
                pos = "Q4134106Mengmeng",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 211901,
                alias = "Npc211901",
                script = "Actor/Npc/TempNPC",
                pos = "Q4134106Xiaoyu",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4134107"] = {}
}

main_id = 71822
local tbl = {}
local n = 7182202
local v = 7182203
local n2 = 7182204
local n3 = 7182207
local n4 = 7182205
local n5 = 7182206
tbl[1] = 7182201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100752"}},
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133107950"}, {"133107952"}}
    }
}

rewind_data = {
    ["7182201"] = {},
    ["7182202"] = {
        npcs = {
            {
                id = 221101,
                alias = "Npc221101",
                script = "Actor/Npc/TempNPC",
                pos = "Q7182201Soraya",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7182203"] = {
        npcs = {
            {
                id = 221101,
                alias = "Npc221101",
                script = "Actor/Npc/TempNPC",
                pos = "Q7182201Soraya",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7182204"] = {},
    ["7182205"] = {},
    ["7182206"] = {
        npcs = {
            {
                id = 221101,
                alias = "Npc221101",
                script = "Actor/Npc/TempNPC",
                pos = "Q7182206Soraya",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7182201"] = {
        npcs = {
            {
                id = 221101,
                alias = "Npc221101",
                script = "Actor/Npc/TempNPC",
                pos = "Q7182201Soraya",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7182202"] = {
        gadgets = {
            {
                id = 71700195,
                alias = "Gadget71700195",
                pos = "Q7182202Gadget",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7182203"] = {},
    ["7182204"] = {},
    ["7182207"] = {
        npcs = {
            {
                id = 221101,
                alias = "Npc221101",
                script = "Actor/Npc/TempNPC",
                pos = "Q7182206Soraya",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7182205"] = {
        npcs = {
            {
                id = 221101,
                alias = "Npc221101",
                script = "Actor/Npc/TempNPC",
                pos = "Q7182206Soraya",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7182206"] = {}
}

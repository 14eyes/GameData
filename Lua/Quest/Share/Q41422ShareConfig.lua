main_id = 41422
local tbl = {}
local n = 4142201
local v = 4142202
local n2 = 4142203
local n3 = 4142204
local n4 = 4142206
tbl[1] = 4142205
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"220022"}}}}
fail_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"220022"}}}}
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"220022"}}}}

rewind_data = {
    ["4142201"] = {},
    ["4142202"] = {},
    ["4142203"] = {
        npcs = {
            {
                id = 165001,
                alias = "Npc165001",
                script = "Actor/Npc/TempNPC",
                pos = "Q41421_Laofenqi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4142204"] = {
        npcs = {
            {
                id = 152901,
                alias = "Npc152901",
                script = "Actor/Npc/TempNPC",
                pos = "Q41421_Kangna_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4142205"] = {}
}

quest_data = {
    ["4142201"] = {
        npcs = {
            {
                id = 10367,
                alias = "Npc10367",
                script = "Actor/Npc/TempNPC",
                pos = "Q41422_Water_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70710311,
                alias = "Gadget70710311",
                pos = "Q41422_Water_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4142202"] = {
        npcs = {
            {
                id = 165001,
                alias = "Npc165001",
                script = "Actor/Npc/TempNPC",
                pos = "Q41421_Laofenqi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70710311,
                alias = "Gadget70710311",
                pos = "Q41421_Water_Laofenqi_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4142203"] = {
        npcs = {
            {
                id = 152901,
                alias = "Npc152901",
                script = "Actor/Npc/TempNPC",
                pos = "Q41421_Kangna_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4142204"] = {
        npcs = {
            {
                id = 10367,
                alias = "Npc10367",
                script = "Actor/Npc/TempNPC",
                pos = "Q41422_Water2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 70710311,
                alias = "Gadget70710311",
                pos = "Q41422_Water2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4142205"] = {},
    ["4142206"] = {}
}

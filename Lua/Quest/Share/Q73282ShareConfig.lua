main_id = 73282
local tbl = {}
local n = 7328201
local v = 7328202
local n2 = 7328204
local n3 = 7328205
local n4 = 7328206
local n5 = 7328203
tbl[1] = 7328207
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7328201"] = {
        npcs = {
            {
                id = 4292,
                alias = "Npc4292",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "N4292_T7327901",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7328202"] = {
        npcs = {
            {
                id = 4292,
                alias = "Npc4292",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "N4292_T7327901",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7328204"] = {
        npcs = {
            {
                id = 20842,
                alias = "Npc20842",
                script = "Actor/Npc/TempNPC",
                pos = "Q7328206_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4292,
                alias = "Npc4292",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "N4292_T7327901",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7328205"] = {
        npcs = {
            {
                id = 4292,
                alias = "Npc4292",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "N4292_T7327901",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7328206"] = {},
    ["7328207"] = {}
}

quest_data = {
    ["7328201"] = {},
    ["7328202"] = {
        npcs = {
            {
                id = 20842,
                alias = "Npc20842",
                script = "Actor/Npc/TempNPC",
                pos = "Q7328206_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7328203"] = {},
    ["7328204"] = {},
    ["7328205"] = {},
    ["7328206"] = {
        npcs = {
            {
                id = 20932,
                alias = "Npc20932",
                script = "Actor/Npc/TempNPC",
                pos = "Q7328206_N20932",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7328207"] = {
        npcs = {
            {
                id = 20842,
                alias = "Npc20842",
                script = "Actor/Npc/TempNPC",
                pos = "Q7328101_N20842",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4292,
                alias = "Npc4292",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "N4292_T7327901",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

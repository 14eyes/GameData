main_id = 22032
local tbl = {}
local n = 2203207
local v = 2203202
local n2 = 2203203
local n3 = 2203204
local n4 = 2203205
local n5 = 2203206
tbl[1] = 2203201
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
    ["2203202"] = {
        npcs = {
            {
                id = 3022,
                alias = "Npc3022",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2202301NPC3022",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2203203"] = {
        npcs = {
            {
                id = 3022,
                alias = "Npc3022",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2202301NPC3022",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2203204"] = {
        npcs = {
            {
                id = 3022,
                alias = "Npc3022",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2202301NPC3022",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2203205"] = {},
    ["2203206"] = {}
}

quest_data = {
    ["2203201"] = {
        npcs = {
            {
                id = 3022,
                alias = "Npc3022",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2202301NPC3022",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2203202"] = {},
    ["2203203"] = {},
    ["2203204"] = {},
    ["2203205"] = {},
    ["2203206"] = {},
    ["2203207"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q2202301PAIMON",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

main_id = 22023
local tbl = {}
local n = 2202307
local v = 2202302
local n2 = 2202303
local n3 = 2202304
local n4 = 2202305
local n5 = 2202306
tbl[1] = 2202301
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
    ["2202301"] = {},
    ["2202302"] = {
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
    ["2202303"] = {
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
    ["2202304"] = {
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
    ["2202305"] = {},
    ["2202306"] = {}
}

quest_data = {
    ["2202301"] = {
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
    ["2202302"] = {},
    ["2202303"] = {},
    ["2202304"] = {},
    ["2202305"] = {},
    ["2202306"] = {},
    ["2202307"] = {
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

main_id = 22033
local tbl = {}
local n = 2203307
local v = 2203302
local n2 = 2203303
local n3 = 2203305
local n4 = 2203306
local n5 = 2203304
tbl[1] = 2203301
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
    ["2203301"] = {},
    ["2203302"] = {
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
    ["2203303"] = {
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
    ["2203304"] = {},
    ["2203305"] = {
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
    ["2203306"] = {
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
    }
}

quest_data = {
    ["2203301"] = {
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
    ["2203302"] = {},
    ["2203303"] = {},
    ["2203304"] = {},
    ["2203305"] = {},
    ["2203306"] = {},
    ["2203307"] = {
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

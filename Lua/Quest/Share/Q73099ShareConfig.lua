main_id = 73099
local tbl = {}
local n = 7309904
local v = 7309902
local n2 = 7309903
local n3 = 7309905
tbl[1] = 7309901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7309901"] = {},
    ["7309902"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q7309905_N20840",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7309903"] = {},
    ["7309904"] = {},
    ["7309905"] = {
        npcs = {
            {
                id = 20840,
                alias = "Npc20840",
                script = "Actor/Npc/TempNPC",
                pos = "Q7309905_N20840",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4246,
                alias = "Npc4246",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7309905_N4246",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["7309901"] = {},
    ["7309902"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q7309905_N20840",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7309903"] = {},
    ["7309904"] = {},
    ["7309905"] = {
        npcs = {
            {
                id = 20840,
                alias = "Npc20840",
                script = "Actor/Npc/TempNPC",
                pos = "Q7309905_N20840",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4246,
                alias = "Npc4246",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7309905_N4246",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

main_id = 23029
local tbl = {}
local n = 2302902
local v = 2302903
local n2 = 2302904
tbl[1] = 2302901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["2302901"] = {},
    ["2302902"] = {
        npcs = {
            {
                id = 4178,
                alias = "Npc4178",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2302901_N4178",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2302903"] = {
        npcs = {
            {
                id = 4178,
                alias = "Npc4178",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2302901_N4178",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2302904"] = {
        npcs = {
            {
                id = 4178,
                alias = "Npc4178",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2302901_N4178",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2302901"] = {
        npcs = {
            {
                id = 4178,
                alias = "Npc4178",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2302901_N4178",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2302902"] = {},
    ["2302903"] = {
        npcs = {
            {
                id = 12690,
                alias = "Npc12690",
                script = "Actor/Npc/TempNPC",
                pos = "Q2302902_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2302904"] = {}
}

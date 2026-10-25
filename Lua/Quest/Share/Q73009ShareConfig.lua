main_id = 73009
local tbl = {}
local n = 7300902
local v = 7300903
local n2 = 7300904
local n3 = 7300905
local n4 = 7300906
tbl[1] = 7300901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7300901"] = {},
    ["7300902"] = {
        npcs = {
            {
                id = 20813,
                alias = "Npc20813",
                script = "Actor/Npc/TempNPC",
                pos = "Q7300901_N4198",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7300903"] = {
        npcs = {
            {
                id = 20813,
                alias = "Npc20813",
                script = "Actor/Npc/TempNPC",
                pos = "Q7300901_N4198",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7300904"] = {},
    ["7300905"] = {},
    ["7300906"] = {}
}

quest_data = {
    ["7300901"] = {
        npcs = {
            {
                id = 20647,
                alias = "Npc20647",
                script = "Actor/Npc/TempNPC",
                pos = "Q7300901_N20647",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20813,
                alias = "Npc20813",
                script = "Actor/Npc/TempNPC",
                pos = "Q7300901_N4198",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7300902"] = {
        npcs = {
            {
                id = 20648,
                alias = "Npc20648",
                script = "Actor/Npc/TempNPC",
                pos = "Q7300902_N20648",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4184,
                alias = "Npc4184",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7300902_N20648",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7300903"] = {},
    ["7300904"] = {},
    ["7300905"] = {
        npcs = {
            {
                id = 20813,
                alias = "Npc20813",
                script = "Actor/Npc/TempNPC",
                pos = "Q7300901_N4198",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7300906"] = {
        npcs = {
            {
                id = 20648,
                alias = "Npc20648",
                script = "Actor/Npc/TempNPC",
                pos = "Q7300902_N20648",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4184,
                alias = "Npc4184",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7300902_N20648",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

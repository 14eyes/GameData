main_id = 19119
local tbl = {}
local n = 1911902
local v = 1911903
local n2 = 1911904
local n3 = 1911905
local n4 = 1911906
local n5 = 1911907
tbl[1] = 1911901
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
    ["1911901"] = {},
    ["1911903"] = {},
    ["1911905"] = {
        npcs = {
            {
                id = 3082,
                alias = "Npc3082",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72153FengStand",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1911907"] = {}
}

quest_data = {
    ["1911901"] = {
        npcs = {
            {
                id = 503,
                alias = "Coop_Tohma",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911902route1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911902route1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1911902"] = {},
    ["1911903"] = {
        npcs = {
            {
                id = 503,
                alias = "Coop_Tohma",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911902route2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911902route2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1911904"] = {
        npcs = {
            {
                id = 3082,
                alias = "Npc3082",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72153FengStand",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 503,
                alias = "Coop_Tohma",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911902route2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1911905"] = {
        npcs = {
            {
                id = 503,
                alias = "Coop_Tohma",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911902route4",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911902route4",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1911906"] = {},
    ["1911907"] = {
        npcs = {
            {
                id = 503,
                alias = "Coop_Tohma",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911903tuoma",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q1911903tuoma",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

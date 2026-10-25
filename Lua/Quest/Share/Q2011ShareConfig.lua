main_id = 2011
local tbl = {}
local n = 201102
local v = 201103
local n2 = 201104
local n3 = 201105
local n4 = 201106
local n5 = 201107
tbl[1] = 201101
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
    ["201101"] = {},
    ["201102"] = {},
    ["201103"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q2011Beidou01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201104"] = {avatar = {scene_id = 3, pos = "Q2011Player"}},
    ["201105"] = {},
    ["201106"] = {},
    ["201107"] = {}
}

quest_data = {
    ["201101"] = {
        npcs = {
            {
                id = 2078,
                alias = "Npc2078",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q11120_Katherine_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201102"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q2011Beidou01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201103"] = {},
    ["201104"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q2011Tuoma01"}}},
    ["201105"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q2011Tuoma01"}}},
    ["201106"] = {},
    ["201107"] = {
        npcs = {
            {
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "Q2011Beidou02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q2011Tuoma01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

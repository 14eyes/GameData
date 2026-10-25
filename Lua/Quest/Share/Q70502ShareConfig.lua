main_id = 70502
local tbl = {}
local n = 7050202
local v = 7050203
local n2 = 7050204
local n3 = 7050205
local n4 = 7050206
local n5 = 7050207
tbl[1] = 7050201
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
    ["7050201"] = {},
    ["7050202"] = {
        npcs = {
            {
                id = 30112,
                alias = "Npc30112",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7050201_N30112",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7050203"] = {
        npcs = {
            {
                id = 30112,
                alias = "Npc30112",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7050201_N30112",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7050205"] = {
        npcs = {
            {
                id = 30112,
                alias = "Npc30112",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7050201_N30112",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30114,
                alias = "Npc30114",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7050202_N30114",
                scene_id = 1068,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["7050206"] = {}
}

quest_data = {
    ["7050201"] = {
        npcs = {
            {
                id = 30112,
                alias = "Npc30112",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7050201_N30112",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7050202"] = {
        npcs = {
            {
                id = 30114,
                alias = "Npc30114",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7050202_N30114",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7050203"] = {
        npcs = {
            {
                id = 30114,
                alias = "Npc30114",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7050202_N30114",
                scene_id = 1068,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7050204"] = {},
    ["7050205"] = {},
    ["7050206"] = {},
    ["7050207"] = {}
}

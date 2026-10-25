main_id = 73193
local tbl = {}
local n = 7319302
local v = 7319305
local n2 = 7319309
local n3 = 7319308
tbl[1] = 7319301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7319301"] = {}, ["7319302"] = {}, ["7319305"] = {}, ["7319308"] = {}}

quest_data = {
    ["7319301"] = {
        npcs = {
            {
                id = 4235,
                alias = "Npc4235",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7319301_N4235",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4232,
                alias = "Npc4232",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7319301_N4232",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7319302"] = {
        npcs = {
            {
                id = 4232,
                alias = "Npc4232",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7319301_N4232",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7319305"] = {
        npcs = {
            {
                id = 4232,
                alias = "Npc4232",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7319301_N4232",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7319308"] = {},
    ["7319309"] = {}
}

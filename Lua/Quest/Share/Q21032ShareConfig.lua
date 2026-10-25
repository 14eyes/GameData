main_id = 21032
local tbl = {}
local n = 2103202
local v = 2103203
local n2 = 2103204
local n3 = 2103205
tbl[1] = 2103201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["2103201"] = {}, ["2103202"] = {}, ["2103203"] = {}, ["2103204"] = {}, ["2103205"] = {}}

quest_data = {
    ["2103201"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2103601",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103202"] = {},
    ["2103203"] = {},
    ["2103204"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2103602",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2103205"] = {
        npcs = {
            {
                id = 2400,
                alias = "Npc2400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2103605",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

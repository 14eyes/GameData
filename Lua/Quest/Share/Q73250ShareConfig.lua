main_id = 73250
local tbl = {}
local n = 7325005
local v = 7325002
local n2 = 7325003
local n3 = 7325004
local n4 = 7325006
tbl[1] = 7325001
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
    ["7325001"] = {},
    ["7325002"] = {
        npcs = {
            {
                id = 422002,
                alias = "Npc422002",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7306509_N4219",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7325003"] = {
        npcs = {
            {
                id = 422002,
                alias = "Npc422002",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7306509_N4219",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7325004"] = {
        npcs = {
            {
                id = 422002,
                alias = "Npc422002",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7306509_N4219",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7325001"] = {
        npcs = {
            {
                id = 422002,
                alias = "Npc422002",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7306509_N4219",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7325002"] = {},
    ["7325003"] = {},
    ["7325004"] = {},
    ["7325005"] = {},
    ["7325006"] = {}
}

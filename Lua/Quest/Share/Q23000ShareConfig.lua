main_id = 23000
local tbl = {}
local n = 2300002
local v = 2300003
local n2 = 2300004
tbl[1] = 2300001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["2300001"] = {},
    ["2300002"] = {},
    ["2300003"] = {},
    ["2300004"] = {
        npcs = {
            {
                id = 4003,
                alias = "Npc4003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1074_1:-3.386,0.057,13.735,0.000,243.388,0.000]",
                scene_id = 1074,
                room_id = 1,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2300001"] = {
        npcs = {
            {
                id = 4003,
                alias = "Npc4003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2300001_N4003",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2300002"] = {},
    ["2300003"] = {
        npcs = {
            {
                id = 4003,
                alias = "Npc4003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1074_1:-3.386,0.057,13.735,0.000,243.388,0.000]",
                scene_id = 1074,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["2300004"] = {
        npcs = {
            {
                id = 4003,
                alias = "Npc4003",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1074_1:-3.386,0.057,13.735,0.000,243.388,0.000]",
                scene_id = 1074,
                room_id = 1,
                data_index = 1
            }
        }
    }
}

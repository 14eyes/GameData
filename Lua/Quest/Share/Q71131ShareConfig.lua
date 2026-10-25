main_id = 71131
local tbl = {}
local n = 7113102
local v = 7113103
tbl[1] = 7113101
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7113101"] = {},
    ["7113102"] = {
        npcs = {
            {
                id = 2317,
                alias = "Npc2317",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_7783:2207.257,346.537,2102.284]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7113103"] = {
        npcs = {
            {
                id = 2317,
                alias = "Npc2317",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_7783:2207.257,346.537,2102.284]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7113101"] = {
        npcs = {
            {
                id = 2317,
                alias = "Npc2317",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_7783:2207.257,346.537,2102.284]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7113102"] = {},
    ["7113103"] = {}
}

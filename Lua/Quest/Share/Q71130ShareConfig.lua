main_id = 71130
local tbl = {}
local n = 7113002
local v = 7113003
tbl[1] = 7113001
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7113001"] = {},
    ["7113003"] = {
        npcs = {
            {
                id = 2318,
                alias = "Npc2318",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_7782:2255.574,347.380,2069.969]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7113001"] = {
        npcs = {
            {
                id = 2318,
                alias = "Npc2318",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_7782:2255.574,347.380,2069.969]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7113002"] = {
        npcs = {
            {
                id = 2318,
                alias = "Npc2318",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_7782:2255.574,347.380,2069.969]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7113003"] = {}
}

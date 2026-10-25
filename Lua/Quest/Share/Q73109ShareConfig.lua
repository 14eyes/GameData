main_id = 73109
local tbl = {}
local n = 7310902
local v = 7310903
local n2 = 7310904
local n3 = 7310905
tbl[1] = 7310901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7310901"] = {},
    ["7310902"] = {
        npcs = {
            {
                id = 20819,
                alias = "Npc20819",
                script = "Actor/Npc/TempNPC",
                pos = "Q7310901_N20819",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7310903"] = {
        npcs = {
            {
                id = 20819,
                alias = "Npc20819",
                script = "Actor/Npc/TempNPC",
                pos = "Q7310901_N20819",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7310904"] = {},
    ["7310905"] = {}
}

quest_data = {
    ["7310901"] = {
        npcs = {
            {
                id = 20819,
                alias = "Npc20819",
                script = "Actor/Npc/TempNPC",
                pos = "Q7310901_N20819",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7310902"] = {},
    ["7310903"] = {},
    ["7310904"] = {},
    ["7310905"] = {
        npcs = {
            {
                id = 20819,
                alias = "Npc20819",
                script = "Actor/Npc/TempNPC",
                pos = "Q7310905_N20819_330400339",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4160,
                alias = "Npc4160",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7310905_N4160",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

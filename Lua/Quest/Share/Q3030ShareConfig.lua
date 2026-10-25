main_id = 3030
local tbl = {}
local n = 303010
local v = 303004
local n2 = 303006
local n3 = 303009
local n4 = 303008
local n5 = 303007
local n6 = 303005
local n7 = 303003
local n8 = 303001
tbl[1] = 303002
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["303002"] = {},
    ["303003"] = {},
    ["303004"] = {
        npcs = {
            {
                id = 3099,
                alias = "Npc3099",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q303010_N3099",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["303005"] = {},
    ["303006"] = {
        npcs = {
            {
                id = 3162,
                alias = "Npc3162",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q303004_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["303007"] = {},
    ["303008"] = {},
    ["303010"] = {}
}

quest_data = {
    ["303001"] = {},
    ["303002"] = {
        npcs = {
            {
                id = 3027,
                alias = "Npc3027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q303002_N3027",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["303003"] = {},
    ["303004"] = {
        npcs = {
            {
                id = 3162,
                alias = "Npc3162",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q303004_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3101,
                alias = "Npc3101",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q303010_T303010_N3101",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["303005"] = {},
    ["303006"] = {},
    ["303007"] = {},
    ["303008"] = {},
    ["303009"] = {},
    ["303010"] = {
        npcs = {
            {
                id = 3027,
                alias = "Npc3027",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q303002_N3027",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3099,
                alias = "Npc3099",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q303010_N3099",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3101,
                alias = "Npc3101",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q303010_T303010_N3101",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}

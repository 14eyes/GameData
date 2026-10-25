main_id = 72802
local tbl = {}
local n = 7280202
local v = 7280203
local n2 = 7280204
local n3 = 7280205
local n4 = 7280206
local n5 = 7280207
tbl[1] = 7280201
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
    ["7280201"] = {},
    ["7280202"] = {},
    ["7280203"] = {
        npcs = {
            {
                id = 3050,
                alias = "Npc3050",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72802Yo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3049,
                alias = "Npc3049",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72802Michiru",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7280204"] = {
        npcs = {
            {
                id = 3050,
                alias = "Npc3050",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72802Yo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3049,
                alias = "Npc3049",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72802Michiru",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7280205"] = {},
    ["7280206"] = {},
    ["7280207"] = {}
}

quest_data = {
    ["7280201"] = {},
    ["7280202"] = {
        npcs = {
            {
                id = 3050,
                alias = "Npc3050",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72802Yo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3049,
                alias = "Npc3049",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72802Michiru",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7280203"] = {},
    ["7280204"] = {},
    ["7280205"] = {
        npcs = {
            {
                id = 20307,
                alias = "Npc20307",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72802House",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7280206"] = {},
    ["7280207"] = {
        npcs = {
            {
                id = 3050,
                alias = "Npc3050",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72802Yo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3049,
                alias = "Npc3049",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72802Michiru",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

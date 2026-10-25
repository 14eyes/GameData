main_id = 22012
local tbl = {}
local n = 2201202
local v = 2201203
local n2 = 2201204
tbl[1] = 2201201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["2201201"] = {},
    ["2201202"] = {
        npcs = {
            {
                id = 3107,
                alias = "Npc3107",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22011_zhenqin",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2201203"] = {
        npcs = {
            {
                id = 3107,
                alias = "Npc3107",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22011_zhenqin",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2201204"] = {
        npcs = {
            {
                id = 3107,
                alias = "Npc3107",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22011_zhenqin",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22011_YING",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["2201201"] = {
        npcs = {
            {
                id = 3107,
                alias = "Npc3107",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22011_zhenqin",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2201202"] = {},
    ["2201203"] = {
        npcs = {
            {
                id = 3106,
                alias = "Npc3106",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22011_YING",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2201204"] = {}
}

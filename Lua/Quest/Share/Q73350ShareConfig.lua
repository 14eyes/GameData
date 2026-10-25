main_id = 73350
local tbl = {}
local n = 7335002
local v = 7335003
tbl[1] = 7335001
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7335001"] = {},
    ["7335002"] = {
        npcs = {
            {
                id = 4456,
                alias = "Npc4456",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330400495:-543.266,201.552,2801.382,0.000,179.410,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7335003"] = {
        npcs = {
            {
                id = 4456,
                alias = "Npc4456",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330400495:-543.266,201.552,2801.382,0.000,179.410,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7335001"] = {
        npcs = {
            {
                id = 4456,
                alias = "Npc4456",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330400495:-543.266,201.552,2801.382,0.000,179.410,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_330400500:-543.160,201.552,2797.335,0.000,1.360,0.000]"}}
    },
    ["7335002"] = {
        npcs = {
            {
                id = 4456,
                alias = "Npc4456",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330400495:-543.266,201.552,2801.382,0.000,179.410,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21080,
                alias = "Npc21080",
                script = "Actor/Npc/TempNPC",
                pos = "[3_330400494:-543.097,201.552,2798.333,0.000,1.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7335003"] = {
        npcs = {
            {
                id = 4456,
                alias = "Npc4456",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_330400495:-543.266,201.552,2801.382,0.000,179.410,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

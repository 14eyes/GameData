main_id = 73021
local tbl = {}
local n = 7302102
local v = 7302104
local n2 = 7302105
local n3 = 7302103
tbl[1] = 7302101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7302101"] = {},
    ["7302102"] = {
        npcs = {
            {
                id = 20726,
                alias = "Npc20726",
                script = "Actor/Npc/TempNPC",
                pos = "Q7302102_N4197",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7302103"] = {
        npcs = {
            {
                id = 20652,
                alias = "Npc20652",
                script = "Actor/Npc/TempNPC",
                pos = "Q7302103_N4194",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7302104"] = {
        npcs = {
            {
                id = 20652,
                alias = "Npc20652",
                script = "Actor/Npc/TempNPC",
                pos = "Q7302103_N4194",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7302105"] = {
        npcs = {
            {
                id = 20652,
                alias = "Npc20652",
                script = "Actor/Npc/TempNPC",
                pos = "Q7302103_N4194",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7302101"] = {
        npcs = {
            {
                id = 20726,
                alias = "Npc20726",
                script = "Actor/Npc/TempNPC",
                pos = "Q7302102_N4197",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7302102"] = {
        npcs = {
            {
                id = 20652,
                alias = "Npc20652",
                script = "Actor/Npc/TempNPC",
                pos = "Q7302103_N4194",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4194,
                alias = "Npc4194",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7302103_N4194",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7302103"] = {
        npcs = {
            {
                id = 4194,
                alias = "Npc4194",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7302103_N4194",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7302104"] = {
        npcs = {
            {
                id = 4194,
                alias = "Npc4194",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7302103_N4194",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7302105"] = {
        npcs = {
            {
                id = 4194,
                alias = "Npc4194",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7302103_N4194",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

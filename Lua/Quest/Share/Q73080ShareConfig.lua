main_id = 73080
local tbl = {}
local n = 7308002
local v = 7308003
local n2 = 7308004
local n3 = 7308005
local n4 = 7308006
tbl[1] = 7308001
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
    ["7308003"] = {
        npcs = {
            {
                id = 4327,
                alias = "Npc4327",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7308001_N20593",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7308004"] = {
        npcs = {
            {
                id = 4327,
                alias = "Npc4327",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7308001_N20593",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7308005"] = {
        npcs = {
            {
                id = 4327,
                alias = "Npc4327",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7308001_N20593",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7308006"] = {},
    ["7308001"] = {
        npcs = {
            {
                id = 4327,
                alias = "Npc4327",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7308001_N20593",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7308002"] = {
        npcs = {
            {
                id = 4327,
                alias = "Npc4327",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7308001_N20593",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["7308001"] = {
        npcs = {
            {
                id = 20593,
                alias = "Npc20593",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7308001_N20593",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4327,
                alias = "Npc4327",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7308001_N20593",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q7308002"}}
    },
    ["7308002"] = {
        npcs = {
            {
                id = 20593,
                alias = "Npc20593",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7308002_N20593",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4327,
                alias = "Npc4327",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7308001_N20593",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q7308002"}}
    },
    ["7308003"] = {
        npcs = {
            {
                id = 4327,
                alias = "Npc4327",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7308001_N20593",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7308004"] = {
        npcs = {
            {
                id = 4327,
                alias = "Npc4327",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7308001_N20593",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7308005"] = {
        npcs = {
            {
                id = 4327,
                alias = "Npc4327",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7308001_N20593",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7308006"] = {}
}

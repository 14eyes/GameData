main_id = 11010
local tbl = {}
local n = 1101002
local v = 1101007
local n2 = 1101008
local n3 = 1101010
local n4 = 1101003
local n5 = 1101009
local n6 = 1101004
local n7 = 1101005
local n8 = 1101006
tbl[1] = 1101001
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
    ["1101001"] = {},
    ["1101002"] = {
        npcs = {
            {
                id = 10304,
                alias = "Npc10304",
                script = "Actor/Npc/TempNPC",
                pos = "Q11010Daipai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1101003"] = {
        npcs = {
            {
                id = 10304,
                alias = "Npc10304",
                script = "Actor/Npc/TempNPC",
                pos = "Q11010Daipai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1101004"] = {
        npcs = {
            {
                id = 10304,
                alias = "Npc10304",
                script = "Actor/Npc/TempNPC",
                pos = "Q11010Daipai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1101005"] = {},
    ["1101006"] = {avatar = {offline_dungeon_id = 0, scene_id = 1033, pos = "Q11010Avatar"}},
    ["1101007"] = {
        npcs = {
            {
                id = 10304,
                alias = "Npc10304",
                script = "Actor/Npc/TempNPC",
                pos = "Q11010Daipai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1101008"] = {
        npcs = {
            {
                id = 10304,
                alias = "Npc10304",
                script = "Actor/Npc/TempNPC",
                pos = "Q11010Daipai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1101009"] = {
        npcs = {
            {
                id = 10304,
                alias = "Npc10304",
                script = "Actor/Npc/TempNPC",
                pos = "Q11010Daipai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["1101001"] = {
        npcs = {
            {
                id = 10304,
                alias = "Npc10304",
                script = "Actor/Npc/TempNPC",
                pos = "Q11010Daipai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1101002"] = {},
    ["1101003"] = {},
    ["1101004"] = {
        npcs = {
            {
                id = 10265,
                alias = "Npc10265",
                script = "Actor/Npc/TempNPC",
                pos = "Q11010Tok",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1101005"] = {},
    ["1101006"] = {
        npcs = {
            {
                id = 10200,
                alias = "Npc10200",
                script = "Actor/Npc/TempNPC",
                pos = "Q11010Gongzi",
                scene_id = 1033,
                room_id = 1,
                data_index = 1
            },
            {
                id = 2145,
                alias = "Npc2145",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q11010Ekaterina",
                scene_id = 1033,
                room_id = 1,
                data_index = 2
            },
            {
                id = 10265,
                alias = "Npc10265",
                script = "Actor/Npc/TempNPC",
                pos = "Q11010Tok",
                scene_id = 1033,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["1101007"] = {},
    ["1101008"] = {},
    ["1101009"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q11010Paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q11010Avatar"}}
    }
}

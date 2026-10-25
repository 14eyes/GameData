main_id = 71810
local tbl = {}
local n = 7181002
local v = 7181003
local n2 = 7181004
local n3 = 7181005
local n4 = 7181006
local n5 = 7181007
local n6 = 7181008
local n7 = 7181009
tbl[1] = 7181001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7181002"] = {},
    ["7181003"] = {
        npcs = {
            {
                id = 20088,
                alias = "NPC20088",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71810Alrani2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7181004"] = {},
    ["7181008"] = {},
    ["7181009"] = {
        npcs = {
            {
                id = 20088,
                alias = "NPC20088",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71810Alrani3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7181001"] = {
        npcs = {
            {
                id = 20088,
                alias = "NPC20088",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71810Alrani1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7181002"] = {
        npcs = {
            {
                id = 20088,
                alias = "NPC20088",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71810Alrani2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q71810Player"}}
    },
    ["7181003"] = {
        npcs = {
            {
                id = 20088,
                alias = "NPC20088",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71810Alrani2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q71810Player"}}
    },
    ["7181004"] = {
        gadgets = {
            {
                id = 70700006,
                alias = "Q71810Hint",
                pos = "Q71810Target1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7181005"] = {
        gadgets = {
            {
                id = 70700006,
                alias = "Q71810Hint",
                pos = "Q71810Target1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7181006"] = {
        gadgets = {
            {
                id = 70700006,
                alias = "Q71810Hint",
                pos = "Q71810Target1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7181007"] = {
        gadgets = {
            {
                id = 70700006,
                alias = "Q71810Hint",
                pos = "Q71810Target1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7181008"] = {
        npcs = {
            {
                id = 20088,
                alias = "NPC20088",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71810Alrani3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q71810Player2"}}
    },
    ["7181009"] = {
        npcs = {
            {
                id = 20088,
                alias = "NPC20088",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q71810Alrani3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

main_id = 12015
local tbl = {}
local n = 1201502
local v = 1201503
local n2 = 1201504
local n3 = 1201505
local n4 = 1201506
local n5 = 1201507
local n6 = 1201508
local n7 = 1201509
local n8 = 1201510
local n9 = 1201511
local n10 = 1201512
local n11 = 1201513
tbl[1] = 1201501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
tbl[11] = n9
tbl[12] = n10
tbl[13] = n11
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1201501"] = {},
    ["1201502"] = {
        npcs = {
            {
                id = 3054,
                alias = "Npc3054",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12015KujoKamaj1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q12015Tohma1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12077,
                alias = "Npc12077",
                script = "Actor/Npc/TempNPC",
                pos = "Q12015Yiping1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1201503"] = {
        npcs = {
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q12015Tohma1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12077,
                alias = "Npc12077",
                script = "Actor/Npc/TempNPC",
                pos = "Q12015Yiping1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1201504"] = {},
    ["1201505"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q12015Yaeko1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1201506"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q12015Yaeko1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1201507"] = {
        npcs = {
            {
                id = 3064,
                alias = "Npc3064",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12015Shouwei2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1201508"] = {
        npcs = {
            {
                id = 3064,
                alias = "Npc3064",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12015Shouwei2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1201509"] = {
        npcs = {
            {
                id = 1036,
                alias = "Npc1036",
                script = "Actor/Npc/TempNPC",
                pos = "Q12015Shougun1",
                scene_id = 1063,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["1201510"] = {
        npcs = {
            {
                id = 12076,
                alias = "Npc12076",
                script = "Actor/Npc/TempNPC",
                pos = "Q12015ShougunYing1",
                scene_id = 20116,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1201513"] = {}
}

quest_data = {
    ["1201501"] = {
        npcs = {
            {
                id = 3054,
                alias = "Npc3054",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12015KujoKamaj1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q12015Tohma1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12077,
                alias = "Npc12077",
                script = "Actor/Npc/TempNPC",
                pos = "Q12015Yiping1",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1201502"] = {},
    ["1201503"] = {},
    ["1201504"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q12015Yaeko1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1201505"] = {},
    ["1201506"] = {
        npcs = {
            {
                id = 3064,
                alias = "Npc3064",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q12015Shouwei2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1201507"] = {transmit_points = {{point_id = 1201508, scene_id = 1063, pos = "Q12015Born"}}},
    ["1201508"] = {
        npcs = {
            {
                id = 1036,
                alias = "Npc1036",
                script = "Actor/Npc/TempNPC",
                pos = "Q12015Shougun1",
                scene_id = 1063,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1201509"] = {
        npcs = {
            {
                id = 12076,
                alias = "Npc12076",
                script = "Actor/Npc/TempNPC",
                pos = "Q12015ShougunYing1",
                scene_id = 20116,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1201510"] = {},
    ["1201511"] = {},
    ["1201512"] = {},
    ["1201513"] = {transmit_points = {{point_id = 1201513, scene_id = 3, pos = "Q12015Shougun1"}}}
}

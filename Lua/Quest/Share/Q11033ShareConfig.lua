main_id = 11033
local tbl = {}
local n = 1103301
local v = 1103302
local n2 = 1103303
local n3 = 1103305
local n4 = 1103306
tbl[1] = 1103304
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
    ["1103301"] = {},
    ["1103302"] = {},
    ["1103303"] = {},
    ["1103304"] = {},
    ["1103305"] = {
        npcs = {
            {
                id = 2045,
                alias = "Npc2045",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310701989:-673.498,219.692,229.817,0.000,270.537,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1103306"] = {
        npcs = {
            {
                id = 1083,
                alias = "Npc1083",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310701983:-679.315,219.692,220.075,0.000,57.740,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 2045,
                alias = "Npc2045",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310701989:-673.498,219.692,229.817,0.000,270.537,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["1103301"] = {
        npcs = {
            {
                id = 1083,
                alias = "Npc1083",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100154:1145.967,349.298,1569.937,0.000,307.717,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100155:-573.060,251.422,461.512,0.000,47.067,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10258,
                alias = "Npc10258",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100154:1145.967,349.298,1569.937,0.000,307.717,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1103302"] = {
        npcs = {
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100155:-573.060,251.422,461.512,0.000,47.067,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13915,
                alias = "Npc13915",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100240:1143.521,350.077,1571.908,0.000,328.070,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 2029,
                alias = "Npc2029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310701985:-572.099,251.422,462.576,0.000,219.886,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1103303"] = {
        npcs = {
            {
                id = 1045,
                alias = "Npc1045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100156:-669.936,219.692,227.489,0.000,73.616,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13909,
                alias = "Npc13909",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310701991:-665.313,219.010,229.285,0.000,213.190,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13908,
                alias = "Npc13908",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310701990:-665.107,218.958,228.305,0.000,304.351,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 2045,
                alias = "Npc2045",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_310701989:-673.498,219.692,229.817,0.000,270.537,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1012,
                alias = "Xiangling_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100156:-669.936,219.692,227.489,0.000,73.616,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1103304"] = {},
    ["1103305"] = {
        npcs = {
            {
                id = 1083,
                alias = "Npc1083",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310701983:-679.315,219.692,220.075,0.000,57.740,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1045,
                alias = "Npc1045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100156:-669.936,219.692,227.489,0.000,73.616,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1012,
                alias = "Xiangling_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100156:-669.936,219.692,227.489,0.000,73.616,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10258,
                alias = "Npc10258",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310701983:-679.315,219.692,220.075,0.000,57.740,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1103306"] = {
        npcs = {
            {
                id = 1045,
                alias = "Npc1045",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100156:-669.936,219.692,227.489,0.000,73.616,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1012,
                alias = "Xiangling_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310100156:-669.936,219.692,227.489,0.000,73.616,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10258,
                alias = "Npc10258",
                script = "Actor/Npc/TempNPC",
                pos = "[3_310701983:-679.315,219.692,220.075,0.000,57.740,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}

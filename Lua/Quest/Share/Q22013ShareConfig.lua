main_id = 22013
local tbl = {}
local n = 2201302
local v = 2201303
local n2 = 2201304
local n3 = 2201305
tbl[1] = 2201301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["2201301"] = {},
    ["2201302"] = {
        npcs = {
            {
                id = 3032,
                alias = "Npc3032",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22013_Junkichi1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3033,
                alias = "Npc3033",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_22010_Shigeru",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2201303"] = {
        npcs = {
            {
                id = 3032,
                alias = "Npc3032",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22013_Junkichi2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3033,
                alias = "Npc3033",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_22010_Shigeru",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2201304"] = {
        npcs = {
            {
                id = 3032,
                alias = "Npc3032",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22013_Junkichi3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3033,
                alias = "Npc3033",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_22010_Shigeru",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2201305"] = {
        npcs = {
            {
                id = 3032,
                alias = "Npc3032",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_22010_Junkichi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3033,
                alias = "Npc3033",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_22010_Shigeru",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2201301"] = {
        npcs = {
            {
                id = 3032,
                alias = "Npc3032",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_22010_Junkichi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3033,
                alias = "Npc3033",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_22010_Shigeru",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2201302"] = {
        npcs = {
            {
                id = 3032,
                alias = "Npc3032",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22013_Junkichi1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3023,
                alias = "Npc3023",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22013_Yuzu",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2201303"] = {
        npcs = {
            {
                id = 3032,
                alias = "Npc3032",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22013_Junkichi2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3021,
                alias = "Npc3021",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22013_Hasegawa",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2201304"] = {
        npcs = {
            {
                id = 3032,
                alias = "Npc3032",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22013_Junkichi3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3024,
                alias = "Npc3024",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22013_Rie",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2201305"] = {
        npcs = {
            {
                id = 3032,
                alias = "Npc3032",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q3_22010_Junkichi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

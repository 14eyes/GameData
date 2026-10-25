main_id = 2013
local tbl = {}
local n = 201311
local v = 201302
local n2 = 201303
local n3 = 201304
local n4 = 201305
local n5 = 201306
local n6 = 201307
local n7 = 201308
local n8 = 201309
local n9 = 201312
local n10 = 201310
tbl[1] = 201301
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
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["201301"] = {},
    ["201302"] = {},
    ["201303"] = {
        npcs = {
            {
                id = 3085,
                alias = "Npc3085",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2013Jiazhu01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201305"] = {},
    ["201306"] = {},
    ["201307"] = {},
    ["201308"] = {},
    ["201309"] = {},
    ["201310"] = {},
    ["201311"] = {},
    ["201312"] = {}
}

quest_data = {
    ["201301"] = {
        npcs = {
            {
                id = 3069,
                alias = "Npc3069",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2013Guard01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201302"] = {
        npcs = {
            {
                id = 3085,
                alias = "Npc3085",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2013Jiazhu01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201303"] = {},
    ["201304"] = {
        npcs = {
            {
                id = 3016,
                alias = "Npc3016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2013Puren01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201305"] = {},
    ["201306"] = {},
    ["201307"] = {
        npcs = {
            {
                id = 3086,
                alias = "Npc3086",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2013Qianli01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201308"] = {
        npcs = {
            {
                id = 3016,
                alias = "Npc3016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201308Guard01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12054,
                alias = "Npc12054",
                script = "Actor/Npc/TempNPC",
                pos = "Q201308Gurad02",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["201309"] = {
        npcs = {
            {
                id = 12054,
                alias = "Npc12054",
                script = "Actor/Npc/TempNPC",
                pos = "Q2013Stop01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201310"] = {
        npcs = {
            {
                id = 3086,
                alias = "Npc3086",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2013Stop01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12054,
                alias = "Npc12054",
                script = "Actor/Npc/TempNPC",
                pos = "Q2013Stop01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["201311"] = {
        npcs = {
            {
                id = 3093,
                alias = "Npc3093",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2013Gate01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3085,
                alias = "Npc3085",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2013Jiazhu01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["201312"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q2013Transback"}},
        npcs = {
            {
                id = 12054,
                alias = "Npc12054",
                script = "Actor/Npc/TempNPC",
                pos = "Q2013Stop01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

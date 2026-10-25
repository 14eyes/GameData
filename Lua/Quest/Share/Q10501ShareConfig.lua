main_id = 10501
local tbl = {}
local n = 1050113
local v = 1050102
local n2 = 1050114
local n3 = 1050103
local n4 = 1050104
local n5 = 1050110
local n6 = 1050111
local n7 = 1050112
local n8 = 1050105
local n9 = 1050106
local n10 = 1050107
local n11 = 1050108
local n12 = 1050109
tbl[1] = 1050101
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
tbl[14] = n12
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1050101"] = {},
    ["1050102"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q10501MonaSpawn2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1050103"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q10501MonaSpawn2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1050104"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q10501MonaSpawn2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1050105"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q10501MonaSpawn2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1050106"] = {},
    ["1050107"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q10501MonaSpawn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1050108"] = {},
    ["1050109"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q10501MonaSpawn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1050113"] = {}
}

quest_data = {
    ["1050101"] = {},
    ["1050102"] = {},
    ["1050103"] = {},
    ["1050104"] = {},
    ["1050105"] = {},
    ["1050106"] = {},
    ["1050107"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q10501MonaSpawn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10096,
                alias = "Npc10096",
                script = "Actor/Npc/TempNPC",
                pos = "Q10501ThoarderSpawn",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10097,
                alias = "Npc10097",
                script = "Actor/Npc/TempNPC",
                pos = "Q10501ThoarderSpawn2",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10098,
                alias = "Npc10098",
                script = "Actor/Npc/TempNPC",
                pos = "Q10501ThoarderSpawn3",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q10501AvatarSpawn"}}
    },
    ["1050108"] = {},
    ["1050109"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q10501MonaSpawn",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q10501AvatarSpawn"}}
    },
    ["1050110"] = {},
    ["1050111"] = {},
    ["1050112"] = {},
    ["1050113"] = {
        npcs = {
            {
                id = 10095,
                alias = "Npc10095",
                script = "Actor/Npc/TempNPC",
                pos = "Q10501MonaSpawn2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1050114"] = {}
}

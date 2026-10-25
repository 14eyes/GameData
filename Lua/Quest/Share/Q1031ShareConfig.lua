main_id = 1031
local tbl = {}
local n = 103102
local v = 103107
local n2 = 103103
local n3 = 103104
local n4 = 103109
local n5 = 103105
local n6 = 103106
local n7 = 103108
tbl[1] = 103101
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
    ["103101"] = {},
    ["103102"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q103003_N1044",
                scene_id = 20130,
                room_id = 1,
                data_index = 1
            },
            {
                id = 12544,
                alias = "Npc12544",
                script = "Actor/Npc/TempNPC",
                pos = "Q102807_Q102701_N12544",
                scene_id = 20130,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["103104"] = {},
    ["103105"] = {}
}

quest_data = {
    ["103101"] = {
        npcs = {
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "Q103101_N1048",
                scene_id = 20130,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q103003_N1049",
                scene_id = 20130,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q103003_N1044",
                scene_id = 20130,
                room_id = 1,
                data_index = 3
            },
            {
                id = 12544,
                alias = "Npc12544",
                script = "Actor/Npc/TempNPC",
                pos = "Q102807_Q102701_N12544",
                scene_id = 20130,
                room_id = 1,
                data_index = 4
            }
        }
    },
    ["103102"] = {
        npcs = {
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "Q103003_N1049",
                scene_id = 20130,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["103103"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q103104_Teleport"}}},
    ["103104"] = {
        npcs = {
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "T103104_N1048",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "T103104_N1049",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q103104_N10204",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "T103104_N1044",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1030,
                alias = "Npc1030",
                script = "Actor/Npc/TempNPC",
                pos = "T103104_N1030",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 12544,
                alias = "Npc12544",
                script = "Actor/Npc/TempNPC",
                pos = "T103104_N12544",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["103105"] = {
        npcs = {
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q103106_N10204",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["103106"] = {
        npcs = {
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q103106_N10204",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["103107"] = {},
    ["103108"] = {},
    ["103109"] = {}
}

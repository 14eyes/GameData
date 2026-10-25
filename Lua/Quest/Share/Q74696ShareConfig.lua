main_id = 74696
local tbl = {}
local n = 7469602
local v = 7469605
local n2 = 7469603
local n3 = 7469604
tbl[1] = 7469601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7469601"] = {},
    ["7469602"] = {
        npcs = {
            {
                id = 1068,
                alias = "Npc1068",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17582:2417.969,341.898,2362.825,0.000,102.503,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7469603"] = {
        npcs = {
            {
                id = 1068,
                alias = "Npc1068",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17582:2417.969,341.898,2362.825,0.000,102.503,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 31069,
                alias = "Npc31069",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17385:3497.792,453.265,4738.222,0.000,208.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7469604"] = {}
}

quest_data = {
    ["7469601"] = {
        npcs = {
            {
                id = 16101,
                alias = "Npc16101",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17225:3500.371,452.852,4739.333,0.000,180.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1068,
                alias = "Npc1068",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17582:2417.969,341.898,2362.825,0.000,102.503,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10234,
                alias = "Npc10234",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17582:2417.969,341.898,2362.825,0.000,102.503,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7469602"] = {
        npcs = {
            {
                id = 31069,
                alias = "Npc31069",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17385:3497.792,453.265,4738.222,0.000,208.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10234,
                alias = "Npc10234",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17582:2417.969,341.898,2362.825,0.000,102.503,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1019, pos = "[47825_1:99.977,50.736,87.886,0.000,3.207,0.000]"}}
    },
    ["7469603"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_17234:3496.620,451.958,4730.488,0.000,26.637,0.000]"}},
        npcs = {
            {
                id = 10234,
                alias = "Npc10234",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17582:2417.969,341.898,2362.825,0.000,102.503,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7469604"] = {},
    ["7469605"] = {
        npcs = {
            {
                id = 1068,
                alias = "Npc1068",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17582:2417.969,341.898,2362.825,0.000,102.503,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 31069,
                alias = "Npc31069",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17385:3497.792,453.265,4738.222,0.000,208.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10234,
                alias = "Npc10234",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17582:2417.969,341.898,2362.825,0.000,102.503,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}

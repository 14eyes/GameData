main_id = 74697
local tbl = {}
local n = 7469702
local v = 7469705
local n2 = 7469703
local n3 = 7469704
tbl[1] = 7469701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7469701"] = {},
    ["7469702"] = {},
    ["7469703"] = {
        npcs = {
            {
                id = 31069,
                alias = "Npc31069",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17385:3497.792,453.265,4738.222,0.000,208.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7469704"] = {}
}

quest_data = {
    ["7469701"] = {
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
                id = 1097,
                alias = "Npc1097",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17235:3499.561,451.958,4737.175,0.000,26.786,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 31092,
                alias = "Npc31092",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17617:3498.589,451.958,4737.071,0.000,25.907,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 31093,
                alias = "Npc31093",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17618:3500.561,451.958,4736.852]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7469702"] = {
        npcs = {
            {
                id = 31069,
                alias = "Npc31069",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17385:3497.792,453.265,4738.222,0.000,208.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1020, pos = "[47826_1:99.977,50.736,87.886,0.000,3.207,0.000]"}}
    },
    ["7469703"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_17234:3496.620,451.958,4730.488,0.000,26.637,0.000]"}}
    },
    ["7469704"] = {},
    ["7469705"] = {
        npcs = {
            {
                id = 31069,
                alias = "Npc31069",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17385:3497.792,453.265,4738.222,0.000,208.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

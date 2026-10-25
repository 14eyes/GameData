main_id = 74693
local tbl = {}
local n = 7469302
local v = 7469305
local n2 = 7469303
local n3 = 7469304
tbl[1] = 7469301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7469301"] = {},
    ["7469302"] = {},
    ["7469303"] = {
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
    ["7469304"] = {}
}

quest_data = {
    ["7469301"] = {
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
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17229:3499.367,451.958,4738.053,0.000,42.877,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7469302"] = {
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
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1016, pos = "[47822_1:99.977,50.736,87.886,0.000,3.207,0.000]"}}
    },
    ["7469303"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_17234:3496.620,451.958,4730.488,0.000,26.637,0.000]"}}
    },
    ["7469304"] = {},
    ["7469305"] = {
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

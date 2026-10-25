main_id = 74694
local tbl = {}
local n = 7469402
local v = 7469405
local n2 = 7469403
local n3 = 7469404
tbl[1] = 7469401
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7469401"] = {},
    ["7469402"] = {},
    ["7469403"] = {
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
    ["7469404"] = {}
}

quest_data = {
    ["7469401"] = {
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
                id = 1031,
                alias = "Npc1031",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17231:3499.700,451.958,4737.958,0.000,25.578,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7469402"] = {
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
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1017, pos = "[47823_1:99.977,50.736,87.886,0.000,3.207,0.000]"}}
    },
    ["7469403"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_17234:3496.620,451.958,4730.488,0.000,26.637,0.000]"}}
    },
    ["7469404"] = {},
    ["7469405"] = {
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

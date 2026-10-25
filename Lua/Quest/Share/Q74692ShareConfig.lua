main_id = 74692
local tbl = {}
local n = 7469202
local v = 7469205
local n2 = 7469203
local n3 = 7469204
tbl[1] = 7469201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7469201"] = {}, ["7469202"] = {}, ["7469203"] = {}, ["7469204"] = {}}

quest_data = {
    ["7469201"] = {
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
                id = 1061,
                alias = "Npc1061",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17227:3499.633,451.958,4737.961,357.882,27.720,359.968]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 502,
                alias = "Coop_Diona",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17227:3499.633,451.958,4737.961,357.882,27.720,359.968]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7469202"] = {
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
        transmit_points_enter_dungeon = {{point_id = 1, dungeon_id = 1015, pos = "[47821_1:99.977,50.736,87.886,0.000,3.207,0.000]"}}
    },
    ["7469203"] = {
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
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_17234:3496.620,451.958,4730.488,0.000,26.637,0.000]"}}
    },
    ["7469204"] = {},
    ["7469205"] = {
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

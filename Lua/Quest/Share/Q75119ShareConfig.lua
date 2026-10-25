main_id = 75119
local tbl = {}
local n = 7511902
tbl[1] = 7511901
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7511901"] = {}, ["7511902"] = {}}

quest_data = {
    ["7511901"] = {
        npcs = {
            {
                id = 21634,
                alias = "Npc21634",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9802:-1273.400,289.333,9310.818,0.000,129.954,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21685,
                alias = "Npc21685",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9460:-1263.638,334.666,9492.202,0.000,117.132,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7511902"] = {
        npcs = {
            {
                id = 6373,
                alias = "Npc6373",
                script = "Actor/Npc/TempNPC",
                pos = "[3_9221:-1247.950,283.700,9313.640,0.000,341.476,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 6374,
                alias = "Npc6374",
                script = "Actor/Npc/TempNPC",
                pos = "[3_10337:-1250.240,281.840,9307.870,0.000,320.270,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

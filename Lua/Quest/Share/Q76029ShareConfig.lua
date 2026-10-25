main_id = 76029
local tbl = {}
local n = 7602902
local v = 7602903
local n2 = 7602904
local n3 = 7602905
tbl[1] = 7602901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7602901"] = {}, ["7602902"] = {}, ["7602903"] = {}, ["7602904"] = {}, ["7602905"] = {}}

quest_data = {
    ["7602901"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13935:2063.039,108.970,11194.080]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_13935:2063.039,108.970,11194.080]"}}
    },
    ["7602902"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13485:2030.916,113.015,11181.280,0.000,232.740,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1313,
                alias = "Npc1313",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13604:1678.743,207.936,9966.671]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7602903"] = {},
    ["7602904"] = {},
    ["7602905"] = {}
}

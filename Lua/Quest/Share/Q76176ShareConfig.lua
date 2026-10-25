main_id = 76176
local tbl = {}
local n = 7617602
local v = 7617603
local n2 = 7617604
tbl[1] = 7617601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7617601"] = {}, ["7617603"] = {}, ["7617604"] = {}}

quest_data = {
    ["7617601"] = {
        transmit_points = {{point_id = 1, scene_id = 102, pos = "[102_345:-395.000,-3956.000,7007.000,0.000,253.000,0.000]"}}
    },
    ["7617602"] = {
        transmit_points = {{point_id = 1, scene_id = 102, pos = "[102_345:-395.000,-3956.000,7007.000,0.000,253.000,0.000]"}}
    },
    ["7617603"] = {
        npcs = {
            {
                id = 22435,
                alias = "Npc22435",
                script = "Actor/Npc/TempNPC",
                pos = "[102_340:-397.400,-3957.000,7007.000,0.000,80.000,0.000]",
                scene_id = 102,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 102, pos = "[102_346:-364.000,-1572.000,-3947.000,0.000,152.000,0.000]"}}
    },
    ["7617604"] = {}
}

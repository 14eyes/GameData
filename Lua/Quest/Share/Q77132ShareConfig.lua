main_id = 77132
local tbl = {}
local n = 7713202
local v = 7713203
local n2 = 7713204
local n3 = 7713207
tbl[1] = 7713201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7713201"] = {}, ["7713202"] = {}, ["7713203"] = {}, ["7713204"] = {}, ["7713207"] = {}}

quest_data = {
    ["7713201"] = {},
    ["7713202"] = {},
    ["7713203"] = {},
    ["7713204"] = {
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_17571:10182.120,200.332,7337.898,0.000,86.895,0.000]"}}
    },
    ["7713207"] = {
        npcs = {
            {
                id = 22418,
                alias = "Npc22418",
                script = "Actor/Npc/TempNPC",
                pos = "[3_17571:10182.120,200.332,7337.898,0.000,86.895,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

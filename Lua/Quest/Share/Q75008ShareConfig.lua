main_id = 75008
local tbl = {}
local n = 7500802
local v = 7500801
tbl[1] = 7500803
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7500801"] = {}, ["7500802"] = {}, ["7500803"] = {}}

quest_data = {
    ["7500801"] = {
        npcs = {
            {
                id = 21481,
                alias = "Npc21481",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8102:-1391.675,71.622,8071.760,0.000,127.300,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7500802"] = {},
    ["7500803"] = {
        npcs = {
            {
                id = 21481,
                alias = "Npc21481",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8891:-1386.410,71.695,8073.610,0.000,156.360,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

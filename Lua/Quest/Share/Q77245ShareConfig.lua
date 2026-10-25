main_id = 77245
local tbl = {}
local n = 7724502
tbl[1] = 7724501
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7724501"] = {}, ["7724502"] = {}}

quest_data = {
    ["7724501"] = {
        npcs = {
            {
                id = 17111,
                alias = "Npc17111",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18104:9363.502,364.955,6062.240,0.000,306.068,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7724502"] = {
        npcs = {
            {
                id = 17111,
                alias = "Npc17111",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18105:9719.782,395.727,5712.661,0.000,115.452,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

main_id = 74120
local tbl = {}
local n = 7412002
local v = 7412003
tbl[1] = 7412001
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7412001"] = {}, ["7412002"] = {}, ["7412003"] = {}}

quest_data = {
    ["7412001"] = {},
    ["7412002"] = {},
    ["7412003"] = {
        npcs = {
            {
                id = 20985,
                alias = "Npc20985",
                script = "Actor/Npc/TempNPC",
                pos = "[1080_16:200.507,-21.318,220.734,0.000,180.953,0.000]",
                scene_id = 1080,
                room_id = 1,
                data_index = 1
            }
        }
    }
}

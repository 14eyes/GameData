main_id = 71060
local tbl = {}
local n = 7106002
local v = 7106003
tbl[1] = 7106001
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7106001"] = {}, ["7106002"] = {}, ["7106003"] = {}}

quest_data = {
    ["7106001"] = {
        npcs = {
            {
                id = 20535,
                alias = "Npc20535",
                script = "Actor/Npc/TempNPC",
                pos = "Q71038KALA",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7106002"] = {},
    ["7106003"] = {}
}

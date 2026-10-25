main_id = 74056
local tbl = {}
local n = 7405602
local v = 7405603
local n2 = 7405604
tbl[1] = 7405601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7405601"] = {}, ["7405602"] = {}, ["7405603"] = {}, ["7405604"] = {}}

quest_data = {
    ["7405601"] = {},
    ["7405602"] = {},
    ["7405603"] = {
        npcs = {
            {
                id = 20995,
                alias = "Npc20995",
                script = "Actor/Npc/TempNPC",
                pos = "Q7405603_N20995",
                scene_id = 1080,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["7405604"] = {}
}

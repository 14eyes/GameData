main_id = 70510
local tbl = {}
local n = 7051002
tbl[1] = 7051001
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7051001"] = {}, ["7051002"] = {}}

quest_data = {
    ["7051001"] = {
        npcs = {
            {
                id = 30112,
                alias = "Npc30112",
                script = "Actor/Npc/TempNPC",
                pos = "Q7050201_N30112",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7051002"] = {}
}

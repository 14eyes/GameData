main_id = 13012
local tbl = {}
local n = 1301202
tbl[1] = 1301201
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["1301201"] = {}, ["1301202"] = {}}

quest_data = {
    ["1301201"] = {
        npcs = {
            {
                id = 1058,
                alias = "Npc1058",
                script = "Actor/Npc/TempNPC",
                pos = "Q1301201_N1058",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1301202"] = {}
}

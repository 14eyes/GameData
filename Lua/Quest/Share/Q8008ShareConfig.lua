main_id = 8008
local tbl = {}
local n = 800801
tbl[1] = 800802
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["800801"] = {}, ["800802"] = {}}

quest_data = {
    ["800801"] = {
        npcs = {
            {
                id = 12423,
                alias = "Npc12423",
                script = "Actor/Npc/TempNPC",
                pos = "Q800403_T800403_N12423",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["800802"] = {}
}

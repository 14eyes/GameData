main_id = 11025
local tbl = {}
local n = 1102502
tbl[1] = 1102501
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["1102501"] = {}, ["1102502"] = {}}

quest_data = {
    ["1102501"] = {},
    ["1102502"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q11024ZL2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

main_id = 76065
local tbl = {}
local n = 7606502
tbl[1] = 7606501
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7606501"] = {}, ["7606502"] = {}}

quest_data = {
    ["7606501"] = {},
    ["7606502"] = {
        npcs = {
            {
                id = 22270,
                alias = "Npc22270",
                script = "Actor/Npc/TempNPC",
                pos = "[102_119:-807.398,61.891,-4316.813]",
                scene_id = 102,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

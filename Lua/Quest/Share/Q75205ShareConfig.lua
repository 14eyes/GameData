main_id = 75205
local tbl = {}
local n = 7520502
tbl[1] = 7520501
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7520501"] = {}, ["7520502"] = {}}

quest_data = {
    ["7520501"] = {},
    ["7520502"] = {
        npcs = {
            {
                id = 21829,
                alias = "Npc21829",
                script = "Actor/Npc/TempNPC",
                pos = "[3_11022:-2599.150,274.249,10239.800,0.000,283.987,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

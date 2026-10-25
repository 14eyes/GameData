main_id = 74240
local tbl = {}
local n = 7424002
tbl[1] = 7424001
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7424001"] = {}, ["7424002"] = {}}

quest_data = {
    ["7424001"] = {},
    ["7424002"] = {
        npcs = {
            {
                id = 21415,
                alias = "Npc21415",
                script = "Actor/Npc/TempNPC",
                pos = "[11_102:1479.729,225.509,3532.780,0.000,290.000,0.000]",
                scene_id = 11,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

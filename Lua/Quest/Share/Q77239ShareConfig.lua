main_id = 77239
local tbl = {}
local n = 7723902
tbl[1] = 7723901
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7723901"] = {}, ["7723902"] = {}}

quest_data = {
    ["7723901"] = {
        npcs = {
            {
                id = 22769,
                alias = "Npc22769",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18515:9721.789,201.930,7607.269,0.000,340.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7723902"] = {
        npcs = {
            {
                id = 22769,
                alias = "Npc22769",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18516:9722.020,201.927,7607.322,0.000,152.089,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

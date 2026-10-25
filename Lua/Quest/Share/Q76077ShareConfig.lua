main_id = 76077
local tbl = {}
local n = 7607702
tbl[1] = 7607701
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7607701"] = {}, ["7607702"] = {}}

quest_data = {
    ["7607701"] = {
        npcs = {
            {
                id = 1316,
                alias = "Npc1316",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360700115:1663.216,227.924,9462.904,0.000,90.330,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7607702"] = {
        npcs = {
            {
                id = 1316,
                alias = "Npc1316",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_32:-5.423,0.291,-48.909,0.000,238.763,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 1
            }
        }
    }
}

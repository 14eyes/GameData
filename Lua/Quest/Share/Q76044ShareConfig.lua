main_id = 76044
local tbl = {}
local n = 7604402
tbl[1] = 7604401
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7604401"] = {}, ["7604402"] = {}}

quest_data = {
    ["7604401"] = {
        npcs = {
            {
                id = 1316,
                alias = "Npc1316",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_53:1.137,1.183,-52.988,0.000,216.707,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1317,
                alias = "Npc1317",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_54:0.511,1.226,-54.188,0.000,10.613,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["7604402"] = {
        npcs = {
            {
                id = 7012,
                alias = "Npc7012",
                script = "Actor/Npc/TempNPC",
                pos = "[1204_142:18.814,1.291,12.133,0.000,15.190,0.000]",
                scene_id = 1204,
                room_id = 1,
                data_index = 1
            }
        }
    }
}

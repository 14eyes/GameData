main_id = 76121
local tbl = {}
local n = 7612102
tbl[1] = 7612101
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7612101"] = {}, ["7612102"] = {}}

quest_data = {
    ["7612101"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300009:2149.017,136.326,11219.340,0.470,238.684,0.772]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7612102"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360300009:2149.017,136.326,11219.340,0.470,238.684,0.772]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

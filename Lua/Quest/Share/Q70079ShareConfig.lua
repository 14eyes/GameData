main_id = 70079
local tbl = {}
local n = 7007901
tbl[1] = 7007902
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7007901"] = {}, ["7007902"] = {}}

quest_data = {
    ["7007901"] = {
        npcs = {
            {
                id = 1749,
                alias = "Npc1749",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15442:3531.672,236.836,-234.189,0.000,84.104,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7007902"] = {
        npcs = {
            {
                id = 1749,
                alias = "Npc1749",
                script = "Actor/Npc/TempNPC",
                pos = "[3_15442:3531.672,236.836,-234.189,0.000,84.104,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

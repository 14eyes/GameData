main_id = 74023
local tbl = {}
local n = 7402304
local v = 7402302
local n2 = 7402303
tbl[1] = 7402301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7402301"] = {}, ["7402302"] = {}, ["7402303"] = {}, ["7402304"] = {}}

quest_data = {
    ["7402301"] = {transmit_points = {{point_id = 2, scene_id = 3, pos = "QTravel06_Salsa_Player_Dicheng"}}},
    ["7402302"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "QTravel06_Salsa_Player_Dicheng"}}},
    ["7402303"] = {
        npcs = {
            {
                id = 21036,
                alias = "Npc21036",
                script = "Actor/Npc/TempNPC",
                pos = "QTravel06_Salsa_Green_Dicheng",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7402304"] = {
        npcs = {
            {
                id = 21066,
                alias = "Npc21066",
                script = "Actor/Npc/TempNPC",
                pos = "QTravel06_Salsa_Dicheng",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

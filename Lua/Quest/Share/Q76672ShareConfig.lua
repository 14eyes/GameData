main_id = 76672
local tbl = {}
local n = 7667202
tbl[1] = 7667201
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7667201"] = {}, ["7667202"] = {}}

quest_data = {
    ["7667201"] = {
        npcs = {
            {
                id = 1324,
                alias = "Npc1324",
                script = "Actor/Npc/TempNPC",
                pos = "[3_361100024:6050.096,231.713,9918.324]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_361100039:5227.368,340.132,9402.115,0.000,199.990,0.000]"}}
    },
    ["7667202"] = {
        npcs = {
            {
                id = 15526,
                alias = "Npc15526_1",
                script = "Actor/Npc/TempNPC",
                pos = "[3_361100039:5227.368,340.132,9402.115,0.000,199.990,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

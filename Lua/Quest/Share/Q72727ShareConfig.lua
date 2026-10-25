main_id = 72727
local tbl = {}
local n = 7272702
tbl[1] = 7272701
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7272701"] = {}, ["7272702"] = {}}

quest_data = {
    ["7272701"] = {
        npcs = {
            {
                id = 30252,
                alias = "Npc30252",
                script = "Actor/Npc/TempNPC",
                pos = "Q7268201_N30065",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q7268202_Player"}}
    },
    ["7272702"] = {
        npcs = {
            {
                id = 30252,
                alias = "Npc30252",
                script = "Actor/Npc/TempNPC",
                pos = "Q7268202_N30065",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

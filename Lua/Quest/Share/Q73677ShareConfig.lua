main_id = 73677
local tbl = {}
local n = 7367702
tbl[1] = 7367701
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7367701"] = {}, ["7367702"] = {}}

quest_data = {
    ["7367701"] = {
        npcs = {
            {
                id = 30245,
                alias = "Npc30245",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7367701_N30245",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30247,
                alias = "Npc30247",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7367701_N30247",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7367702"] = {}
}

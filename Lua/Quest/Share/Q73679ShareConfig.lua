main_id = 73679
local tbl = {}
local n = 7367902
tbl[1] = 7367901
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7367901"] = {}, ["7367902"] = {}}

quest_data = {
    ["7367901"] = {
        npcs = {
            {
                id = 30247,
                alias = "Npc30247",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7367901_N30247",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30259,
                alias = "Npc30259",
                script = "Actor/Npc/TempNPC",
                pos = "Q7367901_N30245",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7367902"] = {}
}

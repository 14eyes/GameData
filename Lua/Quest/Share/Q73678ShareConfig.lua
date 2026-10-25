main_id = 73678
local tbl = {}
local n = 7367802
tbl[1] = 7367801
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7367801"] = {}, ["7367802"] = {}}

quest_data = {
    ["7367801"] = {
        npcs = {
            {
                id = 30246,
                alias = "Npc30246",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7367801_N30246",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30247,
                alias = "Npc30247",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7367801_N30247",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7367802"] = {}
}

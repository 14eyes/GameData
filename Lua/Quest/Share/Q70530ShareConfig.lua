main_id = 70530
local tbl = {}
local n = 7053002
tbl[1] = 7053001
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7053001"] = {}, ["7053002"] = {}}

quest_data = {
    ["7053001"] = {
        npcs = {
            {
                id = 30317,
                alias = "Npc30317",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7053001_N30317",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7053002"] = {
        npcs = {
            {
                id = 30317,
                alias = "Npc30317",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7053001_N30317",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

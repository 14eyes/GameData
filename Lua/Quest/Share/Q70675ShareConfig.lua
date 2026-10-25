main_id = 70675
local tbl = {}
local n = 7067502
tbl[1] = 7067501
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7067501"] = {}, ["7067502"] = {}}

quest_data = {
    ["7067501"] = {},
    ["7067502"] = {
        npcs = {
            {
                id = 1712,
                alias = "Npc1712",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7066502_N1712",
                scene_id = 1076,
                room_id = 1,
                data_index = 1
            }
        }
    }
}

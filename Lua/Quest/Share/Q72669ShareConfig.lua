main_id = 72669
local tbl = {}
local n = 7266902
tbl[1] = 7266901
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

quest_data = {
    ["7266901"] = {},
    ["7266902"] = {
        npcs = {
            {
                id = 3200,
                alias = "Npc3200",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q72661_jingjinghua",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

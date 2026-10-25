main_id = 72667
local tbl = {}
local n = 7266702
local v = 7266703
tbl[1] = 7266701
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7266701"] = {}}

quest_data = {
    ["7266701"] = {},
    ["7266702"] = {
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
    },
    ["7266703"] = {}
}

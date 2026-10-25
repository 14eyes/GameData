main_id = 12027
local tbl = {}
local n = 1202702
tbl[1] = 1202701
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["1202702"] = {}}

quest_data = {
    ["1202701"] = {
        npcs = {
            {
                id = 12201,
                alias = "Npc12201",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1202618_guipopo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1202702"] = {}
}

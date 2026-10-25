main_id = 74092
local tbl = {}
local n = 7409202
tbl[1] = 7409201
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7409201"] = {}, ["7409202"] = {}}

quest_data = {
    ["7409201"] = {
        npcs = {
            {
                id = 5259,
                alias = "Npc5259",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6268:3508.054,421.427,4605.594,0.000,101.833,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7409202"] = {
        npcs = {
            {
                id = 5259,
                alias = "Npc5259",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6268:3508.054,421.427,4605.594,0.000,101.833,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

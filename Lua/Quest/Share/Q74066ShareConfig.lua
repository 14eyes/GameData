main_id = 74066
local tbl = {}
local n = 7406602
local v = 7406603
tbl[1] = 7406601
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7406601"] = {}, ["7406602"] = {}, ["7406603"] = {}}

quest_data = {
    ["7406601"] = {},
    ["7406602"] = {
        npcs = {
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "[3_4915:4368.650,124.874,4560.548]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7406603"] = {
        npcs = {
            {
                id = 5202,
                alias = "Npc5202",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4585:4468.459,121.820,4558.232,0.000,259.318,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

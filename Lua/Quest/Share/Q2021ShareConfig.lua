main_id = 2021
local tbl = {}
local n = 202102
tbl[1] = 202101
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["202101"] = {}, ["202102"] = {}}

quest_data = {
    ["202101"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q202101Yaeko",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q202101Paimon",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["202102"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q202101Yaeko",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

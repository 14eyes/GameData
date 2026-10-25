main_id = 70025
local tbl = {}
local n = 7002502
tbl[1] = 7002501
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7002501"] = {}, ["7002502"] = {}}

quest_data = {
    ["7002501"] = {
        npcs = {
            {
                id = 151201,
                alias = "Npc151201",
                script = "Actor/Npc/TempNPC",
                pos = "Q18000kaiselin",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7002502"] = {
        npcs = {
            {
                id = 156501,
                alias = "Npc156501",
                script = "Actor/Npc/TempNPC",
                pos = "Npc1565Pos5",
                scene_id = 1004,
                room_id = 100401,
                data_index = 1
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "Q7000725Paimon",
                scene_id = 1004,
                room_id = 100401,
                data_index = 2
            }
        }
    }
}

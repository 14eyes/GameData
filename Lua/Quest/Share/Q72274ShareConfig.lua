main_id = 72274
local tbl = {}
local n = 7227402
local v = 7227403
tbl[1] = 7227401
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7227401"] = {}, ["7227402"] = {}, ["7227403"] = {}}

quest_data = {
    ["7227401"] = {
        npcs = {
            {
                id = 10324,
                alias = "Npc10324",
                script = "Actor/Npc/TempNPC",
                pos = "WQ-72274-10324",
                scene_id = 40050,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12212,
                alias = "Npc12212",
                script = "Actor/Npc/TempNPC",
                pos = "WQ-72274-12212",
                scene_id = 40050,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1005,
                alias = "Paimon",
                script = "Actor/Quest/Q352/Paimon",
                pos = "WQ-7227401",
                scene_id = 40050,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7227402"] = {
        npcs = {
            {
                id = 10325,
                alias = "Npc10325",
                script = "Actor/Npc/TempNPC",
                pos = "Q7227402_1",
                scene_id = 40050,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7227403"] = {}
}

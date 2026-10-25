main_id = 25021
local tbl = {}
local n = 2502102
local v = 2502103
tbl[1] = 2502101
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120970"}}}}
rewind_data = {["2502101"] = {}, ["2502102"] = {}}

quest_data = {
    ["2502101"] = {
        npcs = {
            {
                id = 14267,
                alias = "Npc14267",
                script = "Actor/Npc/TempNPC",
                pos = "Q2502101_N14267",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14268,
                alias = "Npc14268",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400152:-1380.950,169.217,7685.554,0.000,17.638,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2502102"] = {
        npcs = {
            {
                id = 14267,
                alias = "Npc14267",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400153:-1382.933,169.170,7687.722,0.000,115.829,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 14268,
                alias = "Npc14268",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400152:-1380.950,169.217,7685.554,0.000,17.638,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2502103"] = {}
}

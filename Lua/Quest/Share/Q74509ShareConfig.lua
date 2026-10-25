main_id = 74509
local tbl = {}
local n = 7450902
tbl[1] = 7450901
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7450901"] = {}, ["7450902"] = {}}

quest_data = {
    ["7450901"] = {
        npcs = {
            {
                id = 30419,
                alias = "Npc30419",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6275:3586.425,446.167,4444.690,0.000,291.539,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30416,
                alias = "Npc30416",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6782:3584.926,445.895,4444.371,0.000,74.889,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30421,
                alias = "Npc30421",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6782:3584.926,445.895,4444.371,0.000,74.889,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12855,
                alias = "Npc12855",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6275:3586.425,446.167,4444.690,0.000,291.539,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12859,
                alias = "Npc12859",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6782:3584.926,445.895,4444.371,0.000,74.889,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["7450902"] = {}
}

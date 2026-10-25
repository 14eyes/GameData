main_id = 70539
local tbl = {}
local n = 7053901
local v = 7053902
tbl[1] = 7053903
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7053901"] = {}, ["7053902"] = {}, ["7053903"] = {}}

quest_data = {
    ["7053901"] = {
        npcs = {
            {
                id = 1431,
                alias = "Npc1431",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_7877:2237.856,214.090,-902.667,0.000,29.277,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30531,
                alias = "Npc30531",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_300401897:2238.889,214.090,-900.564,0.000,205.449,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30520,
                alias = "Npc30520",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_300401896:2239.533,214.090,-901.627,0.000,241.755,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1020,
                alias = "Npc1020",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300401896:2239.533,214.090,-901.627,0.000,241.755,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7053902"] = {
        npcs = {
            {
                id = 30531,
                alias = "Npc30531",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1090_1:-0.084,0.000,8.221]",
                scene_id = 1090,
                room_id = 1,
                data_index = 1
            },
            {
                id = 30520,
                alias = "Npc30520",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[1090_1:-0.084,0.000,8.221]",
                scene_id = 1090,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1020,
                alias = "Npc1020",
                script = "Actor/Npc/TempNPC",
                pos = "[1090_1:-0.084,0.000,8.221]",
                scene_id = 1090,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["7053903"] = {}
}

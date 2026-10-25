main_id = 73508
local tbl = {}
local n = 7350801
tbl[1] = 7350802
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7350801"] = {}, ["7350802"] = {}}

quest_data = {
    ["7350801"] = {
        npcs = {
            {
                id = 30319,
                alias = "Npc30319",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73507_N30319",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30318,
                alias = "Npc30318",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73507_N30318",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30253,
                alias = "Npc30253",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73507_N30319",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12855,
                alias = "Npc12855",
                script = "Actor/Npc/TempNPC",
                pos = "Q73507_N30318",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7350802"] = {}
}

main_id = 70540
local tbl = {}
local n = 7054001
tbl[1] = 7054002
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7054001"] = {}, ["7054002"] = {}}

quest_data = {
    ["7054001"] = {
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
    ["7054002"] = {}
}

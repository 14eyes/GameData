main_id = 70683
local tbl = {}
local n = 7068302
tbl[1] = 7068301
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7068301"] = {}, ["7068302"] = {}}

quest_data = {
    ["7068301"] = {
        npcs = {
            {
                id = 30668,
                alias = "Npc30668",
                script = "Actor/Npc/TempNPC",
                pos = "[3_300401903:2220.554,230.089,-787.458,0.000,260.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30400,
                alias = "Npc30400",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_300401903:2220.554,230.089,-787.458,0.000,260.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7068302"] = {}
}

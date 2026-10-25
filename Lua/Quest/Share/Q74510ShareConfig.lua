main_id = 74510
local tbl = {}
local n = 7451002
tbl[1] = 7451001
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7451001"] = {}, ["7451002"] = {}}

quest_data = {
    ["7451001"] = {
        npcs = {
            {
                id = 30419,
                alias = "Npc30419",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6847:3588.142,446.167,4444.314]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30416,
                alias = "Npc30416",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6847:3588.142,446.167,4444.314]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12855,
                alias = "Npc12855",
                script = "Actor/Npc/TempNPC",
                pos = "[3_6847:3588.142,446.167,4444.314]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12859,
                alias = "Npc12859",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_6847:3588.142,446.167,4444.314]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7451002"] = {}
}

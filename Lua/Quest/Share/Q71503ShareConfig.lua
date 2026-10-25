main_id = 71503
local tbl = {}
local n = 7150301
local v = 7150302
tbl[1] = 7150303
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7150301"] = {}, ["7150302"] = {}, ["7150303"] = {}}

quest_data = {
    ["7150301"] = {
        npcs = {
            {
                id = 30181,
                alias = "Npc30181",
                script = "Actor/Npc/TempNPC",
                pos = "Q7150301",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 30183,
                alias = "Npc30183",
                script = "Actor/Npc/TempNPC",
                pos = "Q7150301_1",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            },
            {
                id = 30184,
                alias = "Npc30184",
                script = "Actor/Npc/TempNPC",
                pos = "Q7150301_2",
                scene_id = 6,
                room_id = 0,
                data_index = 3
            },
            {
                id = 2166,
                alias = "Npc2166",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7150301_1",
                scene_id = 6,
                room_id = 0,
                data_index = 4
            },
            {
                id = 2165,
                alias = "Npc2165",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7150301_2",
                scene_id = 6,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["7150302"] = {},
    ["7150303"] = {}
}

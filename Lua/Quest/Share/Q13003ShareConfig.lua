main_id = 13003
local tbl = {}
local n = 1300302
local v = 1300303
tbl[1] = 1300301
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["1300301"] = {}, ["1300302"] = {}, ["1300303"] = {}}

quest_data = {
    ["1300301"] = {
        npcs = {
            {
                id = 4019,
                alias = "Npc4019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "N4019_T1300001",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1300302"] = {},
    ["1300303"] = {
        npcs = {
            {
                id = 1050,
                alias = "Npc1050",
                script = "Actor/Npc/TempNPC",
                pos = "Q1300303_N1050",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12747,
                alias = "Npc12747",
                script = "Actor/Npc/TempNPC",
                pos = "Q1300303_N12747",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12748,
                alias = "Npc12748",
                script = "Actor/Npc/TempNPC",
                pos = "Q1300303_N12748",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 12686,
                alias = "Npc12686",
                script = "Actor/Npc/TempNPC",
                pos = "Q1300303_N12603",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 12603,
                alias = "Npc12603",
                script = "Actor/Npc/TempNPC",
                pos = "Q1300303_N12603",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    }
}

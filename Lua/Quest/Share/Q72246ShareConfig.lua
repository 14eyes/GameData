main_id = 72246
local tbl = {}
local n = 7224602
local v = 7224604
local n2 = 7224603
tbl[1] = 7224601
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7224604"] = {
        npcs = {
            {
                id = 20321,
                alias = "Npc20321",
                script = "Actor/Npc/TempNPC",
                pos = "72173_motianyiyue",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20322,
                alias = "Npc20322",
                script = "Actor/Npc/TempNPC",
                pos = "72173_afuliyue",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7224602"] = {
        npcs = {
            {
                id = 20321,
                alias = "Npc20321",
                script = "Actor/Npc/TempNPC",
                pos = "72173_motianyiyue",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20322,
                alias = "Npc20322",
                script = "Actor/Npc/TempNPC",
                pos = "72173_afuliyue",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["7224601"] = {},
    ["7224602"] = {
        npcs = {
            {
                id = 20321,
                alias = "Npc20321",
                script = "Actor/Npc/TempNPC",
                pos = "72173_motianyiyue",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20322,
                alias = "Npc20322",
                script = "Actor/Npc/TempNPC",
                pos = "72173_afuliyue",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7224603"] = {
        npcs = {
            {
                id = 20321,
                alias = "Npc20321",
                script = "Actor/Npc/TempNPC",
                pos = "Q7224603_1",
                scene_id = 1004,
                room_id = 100401,
                data_index = 1
            },
            {
                id = 20322,
                alias = "Npc20322",
                script = "Actor/Npc/TempNPC",
                pos = "Q7224603_2",
                scene_id = 1004,
                room_id = 100401,
                data_index = 2
            }
        }
    },
    ["7224604"] = {}
}

main_id = 40086
local tbl = {}
local n = 4008601
local v = 4008602
local n2 = 4008603
tbl[1] = 4008604
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["4008601"] = {}, ["4008602"] = {}, ["4008603"] = {}, ["4008604"] = {}}

quest_data = {
    ["4008601"] = {
        npcs = {
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008601_N1063",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008601_N1063",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12855,
                alias = "Npc12855",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008601_N1063",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4008602"] = {
        npcs = {
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008602_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008602_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12855,
                alias = "Npc12855",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008602_N1034",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4008603"] = {
        npcs = {
            {
                id = 1063,
                alias = "Npc1063",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008603_N12855",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008603_N12855",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12855,
                alias = "Npc12855",
                script = "Actor/Npc/TempNPC",
                pos = "Q4008603_N12855",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["4008604"] = {}
}

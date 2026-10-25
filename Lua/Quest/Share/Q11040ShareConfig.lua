main_id = 11040
local tbl = {}
local n = 1104002
local v = 1104003
local n2 = 1104004
tbl[1] = 1104001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1104001"] = {},
    ["1104002"] = {
        npcs = {
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "Q11040Shatang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1104003"] = {
        npcs = {
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "Npc1587Born",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1104004"] = {
        npcs = {
            {
                id = 1020,
                alias = "Npc1020",
                script = "Actor/Npc/TempNPC",
                pos = "Q11040RSLYBef",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["1104001"] = {
        npcs = {
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "Q11040Shatang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1104002"] = {},
    ["1104003"] = {
        npcs = {
            {
                id = 1020,
                alias = "Npc1020",
                script = "Actor/Npc/TempNPC",
                pos = "Q11040RSLYBef",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1019,
                alias = "Npc1019",
                script = "Actor/Npc/TempNPC",
                pos = "Q11040Shatang",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1104004"] = {}
}

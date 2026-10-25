main_id = 22027
local tbl = {}
local n = 2202702
local v = 2202703
local n2 = 2202705
local n3 = 2202704
tbl[1] = 2202701
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["2202701"] = {}, ["2202702"] = {}, ["2202703"] = {}}

quest_data = {
    ["2202701"] = {
        npcs = {
            {
                id = 3045,
                alias = "Npc3045",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2202701xiangtai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2202702"] = {
        npcs = {
            {
                id = 3045,
                alias = "Npc3045",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2202702xiangtai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3001,
                alias = "Npc3001",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2202702mishengqiyue",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2202703"] = {},
    ["2202704"] = {
        npcs = {
            {
                id = 3045,
                alias = "Npc3045",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2202701xiangtai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2202705"] = {}
}

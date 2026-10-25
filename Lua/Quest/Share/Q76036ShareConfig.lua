main_id = 76036
local tbl = {}
local n = 7603602
local v = 7603603
tbl[1] = 7603601
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEACTIVE_ITEM_GIVING = {{"7603602"}}}}

rewind_data = {
    ["7603601"] = {},
    ["7603602"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13478:2132.364,108.600,11192.890]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15603,
                alias = "Npc15603",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13479:2132.157,108.643,11194.860,0.000,180.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7603603"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13478:2132.364,108.600,11192.890]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15603,
                alias = "Npc15603",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13479:2132.157,108.643,11194.860,0.000,180.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["7603601"] = {
        npcs = {
            {
                id = 1318,
                alias = "Npc1318",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13478:2132.364,108.600,11192.890]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 15603,
                alias = "Npc15603",
                script = "Actor/Npc/TempNPC",
                pos = "[3_13479:2132.157,108.643,11194.860,0.000,180.000,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7603602"] = {},
    ["7603603"] = {}
}

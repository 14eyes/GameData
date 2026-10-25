main_id = 73159
local tbl = {}
local n = 7315902
local v = 7315905
local n2 = 7315903
local n3 = 7315904
tbl[1] = 7315901
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7315902"] = {},
    ["7315903"] = {},
    ["7315904"] = {
        npcs = {
            {
                id = 20659,
                alias = "Npc20659",
                script = "Actor/Npc/TempNPC",
                pos = "Q7315902_N20659",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7315905"] = {}
}

quest_data = {
    ["7315901"] = {},
    ["7315902"] = {
        npcs = {
            {
                id = 20659,
                alias = "Npc20659",
                script = "Actor/Npc/TempNPC",
                pos = "Q7315902_N20659",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    },
    ["7315903"] = {
        npcs = {
            {
                id = 20659,
                alias = "Npc20659",
                script = "Actor/Npc/TempNPC",
                pos = "Q7315902_N20659",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7315904"] = {},
    ["7315905"] = {
        npcs = {
            {
                id = 20659,
                alias = "Npc20659",
                script = "Actor/Npc/TempNPC",
                pos = "Q7315902_N20659",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                bornShoesOffset = 1
            }
        }
    }
}

main_id = 41160
local tbl = {}
local n = 4116001
local v = 4116002
local n2 = 4116003
tbl[1] = 4116004
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100666"}}}}

rewind_data = {
    ["4116001"] = {
        npcs = {
            {
                id = 30028,
                alias = "Npc30028",
                script = "Actor/Npc/TempNPC",
                pos = "EQ41160_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4116003"] = {
        npcs = {
            {
                id = 30028,
                alias = "Npc30028",
                script = "Actor/Npc/TempNPC",
                pos = "EQ41160_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4116001"] = {
        npcs = {
            {
                id = 30028,
                alias = "Npc30028",
                script = "Actor/Npc/TempNPC",
                pos = "EQ41160_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4116002"] = {
        npcs = {
            {
                id = 30028,
                alias = "Npc30028",
                script = "Actor/Npc/TempNPC",
                pos = "EQ41160_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4116003"] = {
        npcs = {
            {
                id = 30028,
                alias = "Npc30028",
                script = "Actor/Npc/TempNPC",
                pos = "EQ41160_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4116004"] = {
        npcs = {
            {
                id = 30028,
                alias = "Npc30028",
                script = "Actor/Npc/TempNPC",
                pos = "EQ41160_NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

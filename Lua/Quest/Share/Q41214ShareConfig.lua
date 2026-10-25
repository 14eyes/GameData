main_id = 41214
local tbl = {}
local n = 4121402
local v = 4121403
local n2 = 4121404
local n3 = 4121405
tbl[1] = 4121401
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl

finish_action = {
    CLIENT = {},
    SERVER = {QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133008300"}, {"133008305"}, {"133008544"}}}
}

fail_action = {CLIENT = {}, SERVER = {}}

cancel_action = {
    CLIENT = {},
    SERVER = {QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133008300"}, {"133008305"}, {"133008544"}}}
}

rewind_data = {
    ["4121401"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q41214_abeiduo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4121402"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q41214_abeiduo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["4121401"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q41214_abeiduo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4121402"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q41214_abeiduo",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4121403"] = {},
    ["4121404"] = {},
    ["4121405"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q41214_End"}}}
}

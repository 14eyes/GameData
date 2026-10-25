main_id = 41211
local tbl = {}
local n = 4121105
local v = 4121106
local n2 = 4121102
local n3 = 4121103
local n4 = 4121104
local n5 = 4121113
local n6 = 4121109
local n7 = 4121110
local n8 = 4121111
local n9 = 4121112
local n10 = 4121107
local n11 = 4121108
tbl[1] = 4121101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
tbl[11] = n9
tbl[12] = n10
tbl[13] = n11
sub_ids = tbl

finish_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133008285"}, {"133002413"}, {"133002414"}, {"133008303"}, {"133008539"}, {"133008540"}}
    }
}

fail_action = {CLIENT = {}, SERVER = {}}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {
            {"133008285"},
            {"133002413"},
            {"133002414"},
            {"133008303"},
            {"133008304"},
            {"133008539"},
            {"133008540"}
        }
    }
}

rewind_data = {["4121101"] = {}, ["4121102"] = {}, ["4121104"] = {}, ["4121110"] = {}, ["4121112"] = {}}

quest_data = {
    ["4121101"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q41211_abeiduo1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4121102"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q41211_abeiduo2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4121103"] = {},
    ["4121104"] = {},
    ["4121105"] = {},
    ["4121106"] = {},
    ["4121107"] = {},
    ["4121108"] = {},
    ["4121109"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q41211_abeiduo2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q41211_Talk1"}}
    },
    ["4121110"] = {},
    ["4121111"] = {},
    ["4121112"] = {
        npcs = {
            {
                id = 1018,
                alias = "Npc1018",
                script = "Actor/Npc/TempNPC",
                pos = "Q41211_abeiduo3",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q41211_Talk2"}}
    },
    ["4121113"] = {}
}

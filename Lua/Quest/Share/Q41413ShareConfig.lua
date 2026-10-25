main_id = 41413
local tbl = {}
local n = 4141302
local v = 4141303
local n2 = 4141304
local n3 = 4141305
local n4 = 4141306
local n5 = 4141307
tbl[1] = 4141301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133007293"}, {"133007294"}}}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "133004927,1"
tbl3[1] = "3"
tbl3[2] = str
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["4141301"] = {},
    ["4141302"] = {
        npcs = {
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Quest/Q411/Qin",
                pos = "Q4141302Qin",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4141302Venti",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4141303"] = {
        npcs = {
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Quest/Q411/Qin",
                pos = "Q4141302Qin",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4141302Venti",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4141304"] = {
        npcs = {
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Quest/Q411/Qin",
                pos = "Q4141302Qin",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4141302Venti",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4141305"] = {},
    ["4141306"] = {},
    ["4141307"] = {}
}

quest_data = {
    ["4141301"] = {
        npcs = {
            {
                id = 1006,
                alias = "Qin",
                script = "Actor/Quest/Q411/Qin",
                pos = "Q4141302Qin",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4141302Venti",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["4141302"] = {},
    ["4141303"] = {},
    ["4141304"] = {},
    ["4141305"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4141307Venti",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4141306"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4141307Venti",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["4141307"] = {
        npcs = {
            {
                id = 1001,
                alias = "Wendy",
                script = "Actor/Quest/Q301/Wendy301",
                pos = "Q4141307Venti",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

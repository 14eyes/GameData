main_id = 13025
local tbl = {}
local n = 1302506
local v = 1302502
local n2 = 1302509
local n3 = 1302503
local n4 = 1302508
local n5 = 1302504
local n6 = 1302507
local n7 = 1302505
tbl[1] = 1302501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1302501"] = {},
    ["1302502"] = {},
    ["1302503"] = {},
    ["1302505"] = {},
    ["1302506"] = {},
    ["1302509"] = {}
}

quest_data = {
    ["1302501"] = {
        npcs = {
            {
                id = 13013,
                alias = "Npc13013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302501_N13013",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302501_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13106,
                alias = "Npc13106",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302405_N13106",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1302502"] = {
        npcs = {
            {
                id = 13066,
                alias = "Npc13066",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302502_N13066",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302502_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1302503"] = {
        npcs = {
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302503_N1052",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1302504"] = {
        npcs = {
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302503_N1052",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1302505"] = {
        npcs = {
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302503_N1052",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13065,
                alias = "Npc13065",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302505_N13065",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1302506"] = {
        npcs = {
            {
                id = 13013,
                alias = "Npc13013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302506_N13064",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302506_N13064",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 13064,
                alias = "Npc13064",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302506_N13064",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1302507"] = {
        npcs = {
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302503_N1052",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1302508"] = {
        npcs = {
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302503_N1052",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1302509"] = {
        npcs = {
            {
                id = 13066,
                alias = "Npc13066",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302509_N13066",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1052,
                alias = "Npc1052",
                script = "Actor/Npc/TempNPC",
                pos = "Q1302502_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q1302503_guide"}}
    }
}

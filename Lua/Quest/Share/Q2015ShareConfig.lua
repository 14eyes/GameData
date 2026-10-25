main_id = 2015
local tbl = {}
local n = 201502
local v = 201503
local n2 = 201504
local n3 = 201505
tbl[1] = 201501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["201501"] = {},
    ["201502"] = {
        npcs = {
            {
                id = 12072,
                alias = "Npc12072",
                script = "Actor/Npc/TempNPC",
                pos = "Q201407Zheping",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201503"] = {},
    ["201504"] = {},
    ["201505"] = {
        npcs = {
            {
                id = 12296,
                alias = "Npc12296",
                script = "Actor/Npc/TempNPC",
                pos = "Q201504_letter",
                scene_id = 20113,
                room_id = 1,
                data_index = 1
            }
        },
        gadgets = {
            {
                id = 71700323,
                alias = "Gadget71700323",
                pos = "Q201504_letter",
                scene_id = 20113,
                room_id = 1,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["201501"] = {
        npcs = {
            {
                id = 1037,
                alias = "Npc1037",
                script = "Actor/Npc/TempNPC",
                pos = "Q201501Xinhai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12072,
                alias = "Npc12072",
                script = "Actor/Npc/TempNPC",
                pos = "Q201407Zheping",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3146,
                alias = "Npc3146",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201501Xinhai",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q201501Wulang",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["201502"] = {
        npcs = {
            {
                id = 3146,
                alias = "Npc3146",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201501Xinhai",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201503"] = {},
    ["201504"] = {
        npcs = {
            {
                id = 10013,
                alias = "Npc10013",
                script = "Actor/Npc/TempNPC",
                pos = "Q201504Sanbing",
                scene_id = 20113,
                room_id = 1,
                data_index = 1
            },
            {
                id = 12296,
                alias = "Npc12296",
                script = "Actor/Npc/TempNPC",
                pos = "Q201504_letter",
                scene_id = 20113,
                room_id = 1,
                data_index = 2
            }
        },
        gadgets = {
            {
                id = 71700323,
                alias = "Gadget71700323",
                pos = "Q201504_letter",
                scene_id = 20113,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["201505"] = {
        npcs = {
            {
                id = 10013,
                alias = "Npc10013",
                script = "Actor/Npc/TempNPC",
                pos = "Q201504Sanbing",
                scene_id = 20113,
                room_id = 1,
                data_index = 1
            }
        }
    }
}

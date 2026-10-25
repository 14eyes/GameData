main_id = 19090
local tbl = {}
local n = 1909003
local v = 1909006
local n2 = 1909001
local n3 = 1909007
local n4 = 1909008
local n5 = 1909004
local n6 = 1909005
tbl[1] = 1909002
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100764"}, {"100765"}}}}
local tbl2 = {CLIENT = {}}
local server = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100764"}, {"100765"}}}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133003925"
tbl3[2] = str
local tbl4 = {}
local str2 = ""
tbl4[1] = "133003927"
tbl4[2] = str2
local tbl5 = {}
local str3 = ""
tbl5[1] = "133003007"
tbl5[2] = str3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[2] = tbl4
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[3] = tbl5
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
server.QUEST_EXEC_REMOVE_TRIAL_AVATAR = {{"500"}}
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["1909002"] = {},
    ["1909003"] = {
        gadgets = {
            {
                id = 70540011,
                alias = "Gadget70540011",
                pos = "Q1909002tree",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1909006"] = {},
    ["1909007"] = {
        gadgets = {
            {
                id = 70710344,
                alias = "Gadget70710344",
                pos = "Q1909001rabbit",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1909008"] = {
        gadgets = {
            {
                id = 70710344,
                alias = "Gadget70710344",
                pos = "Q1909001rabbit",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["1909001"] = {
        gadgets = {
            {
                id = 70710338,
                alias = "Gadget70710338",
                pos = "Q1909001point",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710344,
                alias = "Gadget70710344",
                pos = "Q1909001rabbit",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1909002"] = {
        gadgets = {
            {
                id = 70710356,
                alias = "Gadget70710356data1",
                pos = "Q1909002berry1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 70710356,
                alias = "Gadget70710356data2",
                pos = "Q1909002berry2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 70710356,
                alias = "Gadget70710356data3",
                pos = "Q1909002berry3",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 70710327,
                alias = "Gadget70710327",
                pos = "Q1909003target",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 70540011,
                alias = "Gadget70540011",
                pos = "Q1909002tree",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1909003"] = {},
    ["1909004"] = {},
    ["1909005"] = {},
    ["1909006"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q1909008Noel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1909007"] = {},
    ["1909008"] = {
        npcs = {
            {
                id = 1027,
                alias = "Npc1027",
                script = "Actor/Npc/TempNPC",
                pos = "Q1909006Noel",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

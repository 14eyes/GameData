main_id = 2018
local tbl = {}
local n = 201802
local v = 201803
local n2 = 201805
local n3 = 201806
local n4 = 201807
local n5 = 201804
tbl[1] = 201801
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

local tbl2 = {
    ["201801"] = {},
    ["201802"] = {},
    ["201803"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q201808Yaeko",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201804"] = {}
}

local tbl3 = {
    npcs = {
        {
            id = 3058,
            alias = "Npc3058",
            script = "Actor/Npc/NpcFSMBehaviour",
            pos = "Q201803_Soilder1",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        },
        {
            id = 3056,
            alias = "Npc3056",
            script = "Actor/Npc/NpcFSMBehaviour",
            pos = "Q201803_Soilder6",
            scene_id = 3,
            room_id = 0,
            data_index = 3
        },
        {
            id = 3059,
            alias = "Npc3059",
            script = "Actor/Npc/NpcFSMBehaviour",
            pos = "Q201803_Soilder4",
            scene_id = 3,
            room_id = 0,
            data_index = 4
        },
        {
            id = 3025,
            alias = "Npc3025",
            script = "Actor/Npc/NpcFSMBehaviour",
            pos = "Q201803_Soilder7",
            scene_id = 3,
            room_id = 0,
            data_index = 5
        }
    }
}

local quest_var = {}
local n6 = -1
local n7 = -1
local n8 = -1
local n9 = -1
quest_var[1] = 1
quest_var[2] = n6
quest_var[3] = n7
quest_var[4] = n8
quest_var[5] = n9
tbl3.quest_var = quest_var
tbl2["201806"] = tbl3
tbl2["201807"] = {}
rewind_data = tbl2

quest_data = {
    ["201801"] = {},
    ["201802"] = {
        npcs = {
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q201808Yaeko",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q201709Shenli",
                scene_id = 1060,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1033,
                alias = "Npc1033",
                script = "Actor/Npc/TempNPC",
                pos = "Q201709Tuoma",
                scene_id = 1060,
                room_id = 1,
                data_index = 3
            },
            {
                id = 1038,
                alias = "Npc1038",
                script = "Actor/Npc/TempNPC",
                pos = "Q201808Yaeko",
                scene_id = 3,
                room_id = 1,
                data_index = 4
            }
        },
        gadgets = {
            {
                id = 70710503,
                alias = "Gadget70710503",
                pos = "Q201802_Yushou",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201803"] = {
        npcs = {
            {
                id = 1038,
                alias = "Npc1038",
                script = "Actor/Npc/TempNPC",
                pos = "Q201803Jiutiao",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3058,
                alias = "Npc3058",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3055,
                alias = "Npc3055",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder4",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3056,
                alias = "Npc3056",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder6",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 3059,
                alias = "Npc3059",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder4",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 3025,
                alias = "Npc3025",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201803_Soilder7",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["201804"] = {
        npcs = {
            {
                id = 3053,
                alias = "Npc3053",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q201804Xiaoxing",
                scene_id = 1065,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201805"] = {
        npcs = {
            {
                id = 1038,
                alias = "Npc1038",
                script = "Actor/Npc/TempNPC",
                pos = "Q201803Jiutiao",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201806"] = {
        npcs = {
            {
                id = 1038,
                alias = "Npc1038",
                script = "Actor/Npc/TempNPC",
                pos = "Q201803Jiutiao",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["201807"] = {}
}

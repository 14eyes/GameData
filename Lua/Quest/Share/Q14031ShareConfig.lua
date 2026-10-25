main_id = 14031
local tbl = {}
local n = 1403104
local v = 1403102
tbl[1] = 1403101
tbl[2] = n
tbl[3] = v
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1403101"] = {},
    ["1403102"] = {},
    ["1403104"] = {
        npcs = {
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100726:3601.207,446.217,4470.934,-0.001,309.902,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["1403101"] = {
        npcs = {
            {
                id = 1077,
                alias = "Npc1077",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100683:3600.511,446.217,4470.299,0.000,328.168,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100726:3601.207,446.217,4470.934,-0.001,309.902,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1403102"] = {
        npcs = {
            {
                id = 1077,
                alias = "Npc1077",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8399:3538.486,445.895,4435.624,0.000,190.607,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1075,
                alias = "Npc1075",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8401:3533.340,445.895,4436.860,0.000,100.779,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1071,
                alias = "Npc1071",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100684:3537.241,446.167,4429.941,0.000,205.923,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1073,
                alias = "Npc1073",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100727:3536.075,446.167,4427.471,0.000,19.408,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1403104"] = {
        npcs = {
            {
                id = 1077,
                alias = "Npc1077",
                script = "Actor/Npc/TempNPC",
                pos = "[3_340100683:3600.511,446.217,4470.299,0.000,328.168,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

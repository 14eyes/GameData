main_id = 75015
local tbl = {}
local n = 7501506
local v = 7501502
local n2 = 7501505
local n3 = 7501503
local n4 = 7501504
tbl[1] = 7501501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7501501"] = {},
    ["7501502"] = {},
    ["7501503"] = {},
    ["7501504"] = {},
    ["7501505"] = {},
    ["7501506"] = {}
}

quest_data = {
    ["7501501"] = {},
    ["7501502"] = {},
    ["7501503"] = {
        npcs = {
            {
                id = 21460,
                alias = "Npc21460",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8775:-2451.501,201.977,8163.068,0.000,333.691,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7501504"] = {
        npcs = {
            {
                id = 21460,
                alias = "Npc21460",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8775:-2451.501,201.977,8163.068,0.000,333.691,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 21549,
                alias = "Npc21549",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8228:-2439.256,202.410,8154.888]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7501505"] = {
        npcs = {
            {
                id = 21549,
                alias = "Npc21549",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8228:-2439.256,202.410,8154.888]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7501506"] = {
        npcs = {
            {
                id = 21549,
                alias = "Npc21549",
                script = "Actor/Npc/TempNPC",
                pos = "[3_8228:-2439.256,202.410,8154.888]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

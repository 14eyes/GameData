main_id = 76043
local tbl = {}
local n = 7604302
tbl[1] = 7604301
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7604301"] = {}, ["7604302"] = {}}

quest_data = {
    ["7604301"] = {
        npcs = {
            {
                id = 1316,
                alias = "Npc1316",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_53:1.137,1.183,-52.988,0.000,216.707,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1317,
                alias = "Npc1317",
                script = "Actor/Npc/TempNPC",
                pos = "[1205_54:0.511,1.226,-54.188,0.000,10.613,0.000]",
                scene_id = 1205,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["7604302"] = {
        npcs = {
            {
                id = 7051,
                alias = "Npc7051",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360700178:1678.520,236.034,9517.342,0.000,166.840,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 7052,
                alias = "Npc7052",
                script = "Actor/Npc/TempNPC",
                pos = "[3_360700177:1678.818,237.117,9515.617,0.000,6.261,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

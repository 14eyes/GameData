main_id = 77000
local tbl = {}
local n = 7700001
local v = 7700003
local n2 = 7700004
local n3 = 7700005
tbl[1] = 7700002
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["7700001"] = {}, ["7700002"] = {}, ["7700003"] = {}, ["7700004"] = {}, ["7700005"] = {}}

quest_data = {
    ["7700001"] = {
        npcs = {
            {
                id = 1332,
                alias = "Npc1332",
                script = "Actor/Npc/TempNPC",
                pos = "[1159_7:66.733,-4.171,-465.882]",
                scene_id = 1159,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1335,
                alias = "Npc1335",
                script = "Actor/Npc/TempNPC",
                pos = "[1159_8:66.666,-4.171,-464.753,0.000,185.115,0.000]",
                scene_id = 1159,
                room_id = 1,
                data_index = 2,
                platformInfo = {
                    sceneId = 0,
                    groupId = 0,
                    configId = 0,
                    offsetPos = {x = 0.0, y = 0.0, z = 0.0},
                    offsetRot = {x = 0.0, y = 0.0, z = 0.0}
                }
            }
        }
    },
    ["7700002"] = {},
    ["7700003"] = {
        npcs = {
            {
                id = 1332,
                alias = "Npc1332",
                script = "Actor/Npc/TempNPC",
                pos = "[1159_7:66.733,-4.171,-465.882]",
                scene_id = 1159,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1335,
                alias = "Npc1335",
                script = "Actor/Npc/TempNPC",
                pos = "[1159_8:66.666,-4.171,-464.753,0.000,185.115,0.000]",
                scene_id = 1159,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["7700004"] = {},
    ["7700005"] = {}
}

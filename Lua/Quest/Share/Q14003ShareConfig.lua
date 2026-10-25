main_id = 14003
local tbl = {}
local n = 1400302
tbl[1] = 1400301
tbl[2] = n
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}
rewind_data = {["1400301"] = {}, ["1400302"] = {}}

quest_data = {
    ["1400301"] = {
        npcs = {
            {
                id = 1071,
                alias = "Npc1071",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5206:3482.423,445.895,4641.343,0.000,80.730,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1400302"] = {
        npcs = {
            {
                id = 1070,
                alias = "Npc1070",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5205:3484.052,445.895,4641.803,0.000,253.330,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1071,
                alias = "Npc1071",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5206:3482.423,445.895,4641.343,0.000,80.730,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1072,
                alias = "Npc1072",
                script = "Actor/Npc/TempNPC",
                pos = "[3_5207:3483.019,445.895,4640.656,0.000,37.936,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}

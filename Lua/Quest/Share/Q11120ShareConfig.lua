main_id = 11120
local tbl = {}
local n = 1112005
local v = 1112002
local n2 = 1112003
local n3 = 1112004
tbl[1] = 1112001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1112001"] = {},
    ["1112002"] = {
        npcs = {
            {
                id = 10377,
                alias = "Npc10377",
                script = "Actor/Npc/TempNPC",
                pos = "Q11120_Boss_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1112003"] = {
        npcs = {
            {
                id = 10377,
                alias = "Npc10377",
                script = "Actor/Npc/TempNPC",
                pos = "Q11120_Boss_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1112004"] = {},
    ["1112005"] = {}
}

quest_data = {
    ["1112001"] = {},
    ["1112002"] = {},
    ["1112003"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q11120_Zhongli_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 214801,
                alias = "Npc214801",
                script = "Actor/Npc/TempNPC",
                pos = "Q11120_Tiantiezui_Zhongli_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1112004"] = {
        npcs = {
            {
                id = 10232,
                alias = "Npc10232",
                script = "Actor/Npc/TempNPC",
                pos = "Q11120_Zhongli_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10377,
                alias = "Npc10377",
                script = "Actor/Npc/TempNPC",
                pos = "Q11120_Boss_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10376,
                alias = "Npc10376",
                script = "Actor/Npc/TempNPC",
                pos = "Q11120_Kun_Boss2_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1112005"] = {
        npcs = {
            {
                id = 10377,
                alias = "Npc10377",
                script = "Actor/Npc/TempNPC",
                pos = "Q11120_Boss_Pos",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

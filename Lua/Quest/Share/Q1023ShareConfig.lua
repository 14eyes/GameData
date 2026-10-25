main_id = 1023
local tbl = {}
local n = 102302
local v = 102303
local n2 = 102304
local n3 = 102305
local n4 = 102306
local n5 = 102307
local n6 = 102308
tbl[1] = 102301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
sub_ids = tbl
rewind_data = {}
quest_data = {}

quest_data["102303"] = {
    npcs = {
        {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Npc/TempNPC",
            pos = "Q102303Paimon",
            scene_id = 20101,
            room_id = 0,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 20101, pos = "Q102303Born"}}
}

quest_data["102302"] = {
    npcs = {
        {
            id = 10261,
            alias = "Npc10261",
            script = "Actor/Npc/TempNPC",
            pos = "Q102302XZFD",
            scene_id = 20101,
            room_id = 0,
            data_index = 0
        }
    },
    gadgets = {
        {
            id = 70710079,
            pos = "Q102302XZFD",
            alias = "Q102302XZFD",
            scene_id = 20101,
            room_id = 0,
            is_show_cutscene = false,
            chest_drop_id = 0
        }
    }
}

quest_data["102305"] = {
    npcs = {
        {
            id = 10200,
            alias = "Npc10200",
            script = "Actor/Npc/TempNPC",
            pos = "Q102305GZ",
            scene_id = 20101,
            room_id = 0,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 20101, pos = "Q102305Born"}}
}

quest_data["102304"] = {transmit_points = {{point_id = 1, scene_id = 20101, pos = "Q102302GZ"}}}

main_id = 1010
local tbl = {}
local n = 101002
local v = 101003
local n2 = 101004
local n3 = 101007
local n4 = 101008
local n5 = 101005
local n6 = 101006
tbl[1] = 101001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
sub_ids = tbl
rewind_data = {}
rewind_data["101002"] = {}
quest_data = {}

quest_data["101002"] = {
    npcs = {
        {
            id = 10235,
            alias = "Npc10235",
            script = "Actor/Npc/TempNPC",
            pos = "Q101002Infor",
            scene_id = 1033,
            room_id = 1,
            data_index = 0
        }
    }
}

quest_data["101003"] = {
    npcs = {
        {
            id = 10236,
            alias = "Npc10236",
            script = "Actor/Npc/TempNPC",
            pos = "Q1010Waiter01",
            scene_id = 3,
            data_index = 0
        },
        {
            id = 202201,
            alias = "Npc202201",
            script = "Actor/Npc/TempNPC",
            pos = "Q101003Licai",
            scene_id = 3,
            data_index = 0
        },
        {
            alias = "Npc10200",
            script = "Actor/Npc/TempNPC",
            id = 10200,
            pos = "Q101003Gz",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["101005"] = {
    npcs = {
        {
            id = 10232,
            alias = "Npc10232",
            script = "Actor/Npc/TempNPC",
            pos = "Q101005ZL",
            scene_id = 1034,
            room_id = 1,
            data_index = 0
        },
        {
            id = 10200,
            alias = "Npc10200",
            script = "Actor/Npc/TempNPC",
            pos = "Q101005GZ",
            scene_id = 1034,
            room_id = 1,
            data_index = 0
        }
    },
    transmit_points = {
        {point_id = 1, scene_id = 1034, pos = "Q101005Avatar"},
        {point_id = 2, scene_id = 1034, pos = "Q101005Leave"}
    }
}

quest_data["101006"] = {
    npcs = {
        {
            id = 10232,
            alias = "Npc10232",
            script = "Actor/Npc/TempNPC",
            pos = "Q1010Zhongli01",
            scene_id = 3,
            data_index = 0
        }
    }
}

quest_data["101007"] = {transmit_points = {{point_id = 1, scene_id = 1034, pos = "Q101005Avatar"}}}

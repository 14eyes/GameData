main_id = 19002
local tbl = {}
local n = 1900202
local v = 1900203
local n2 = 1900204
tbl[1] = 1900201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1900201"] = {},
    ["1900202"] = {},
    ["1900203"] = {
        npcs = {
            {
                id = 160201,
                alias = "Npc160201",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Albert02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 147101,
                alias = "Npc147101",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Victoria01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1900204"] = {}
}

quest_data = {
    ["1900201"] = {
        npcs = {
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 160201,
                alias = "Npc160201",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Albert01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 147101,
                alias = "Npc147101",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Victoria01",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "COOP101401Babala01",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1900202"] = {
        npcs = {
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 160201,
                alias = "Npc160201",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Albert01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 147101,
                alias = "Npc147101",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Victoria01",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "COOP101401Babala01",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1900203"] = {
        npcs = {
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "COOP101401Babala01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1900204"] = {
        npcs = {
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 147101,
                alias = "Npc147101",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Victoria01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "COOP101401Babala01",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}

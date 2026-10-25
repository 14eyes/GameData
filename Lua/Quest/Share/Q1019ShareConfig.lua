main_id = 1019
local tbl = {}
local n = 101907
local v = 101901
local n2 = 101902
local n3 = 101903
local n4 = 101904
local n5 = 101905
tbl[1] = 101906
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
rewind_data = {["101901"] = {}, ["101903"] = {}, ["101904"] = {}, ["101905"] = {}, ["101906"] = {}}

quest_data = {
    ["101901"] = {
        npcs = {
            {
                id = 1030,
                alias = "Npc1030",
                script = "Actor/Npc/TempNPC",
                pos = "Q101902_N1030",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "T101902_N1044",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "T101902_N1049",
                scene_id = 6,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["101902"] = {
        npcs = {
            {
                id = 1030,
                alias = "Npc1030",
                script = "Actor/Npc/TempNPC",
                pos = "Q101902_N1030",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "T101902_N1044",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "T101902_N1049",
                scene_id = 6,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["101903"] = {
        npcs = {
            {
                id = 1030,
                alias = "Npc1030",
                script = "Actor/Npc/TempNPC",
                pos = "Q101903_N1030_guide",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "T101903_N1048",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "T101903_N1049",
                scene_id = 6,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1049,
                alias = "Npc1049",
                script = "Actor/Npc/TempNPC",
                pos = "T101903_N1049",
                scene_id = 6,
                room_id = 0,
                data_index = 4
            }
        },
        transmit_points = {{point_id = 1, scene_id = 20130, pos = "T101904_N1048"}}
    },
    ["101904"] = {
        npcs = {
            {
                id = 1030,
                alias = "Npc1030",
                script = "Actor/Npc/TempNPC",
                pos = "Q101904_N1030",
                scene_id = 20130,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["101905"] = {
        npcs = {
            {
                id = 1030,
                alias = "Npc1030",
                script = "Actor/Npc/TempNPC",
                pos = "Q101905_N1030",
                scene_id = 20130,
                room_id = 1,
                data_index = 1
            },
            {
                id = 1048,
                alias = "Npc1048",
                script = "Actor/Npc/TempNPC",
                pos = "Q101905_N1048",
                scene_id = 20130,
                room_id = 1,
                data_index = 2
            }
        }
    },
    ["101906"] = {},
    ["101907"] = {}
}

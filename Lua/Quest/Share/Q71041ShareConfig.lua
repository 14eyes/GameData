main_id = 71041
local tbl = {}
local n = 7104104
local v = 7104108
local n2 = 7104107
local n3 = 7104101
local n4 = 7104102
local n5 = 7104109
local n6 = 7104110
local n7 = 7104111
tbl[1] = 7104103
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7104101"] = {},
    ["7104102"] = {},
    ["7104103"] = {},
    ["7104104"] = {
        npcs = {
            {
                id = 2617,
                alias = "Npc2617",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7104103_N2617",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7104107"] = {},
    ["7104108"] = {
        npcs = {
            {
                id = 2617,
                alias = "Npc2617",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7104103_N2617",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7104109"] = {},
    ["7104110"] = {},
    ["7104111"] = {}
}

quest_data = {
    ["7104101"] = {},
    ["7104102"] = {},
    ["7104103"] = {
        npcs = {
            {
                id = 2617,
                alias = "Npc2617",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7104103_N2617",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7104104"] = {},
    ["7104107"] = {
        npcs = {
            {
                id = 2617,
                alias = "Npc2617",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7104105_N2617",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20523,
                alias = "Npc20523",
                script = "Actor/Npc/TempNPC",
                pos = "Q7104105_N2617",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20006,
                alias = "Npc20006",
                script = "Actor/Npc/TempNPC",
                pos = "Q7104105_N2617",
                scene_id = 6,
                room_id = 0,
                data_index = 3
            }
        },
        transmit_points = {{point_id = 1, scene_id = 6, pos = "Q7104107"}}
    },
    ["7104108"] = {},
    ["7104109"] = {
        npcs = {
            {
                id = 20523,
                alias = "Npc20523",
                script = "Actor/Npc/TempNPC",
                pos = "Q7104105_N2617",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20543,
                alias = "Npc20543",
                script = "Actor/Npc/TempNPC",
                pos = "Q7104109_N20543",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20006,
                alias = "Npc20006",
                script = "Actor/Npc/TempNPC",
                pos = "Q7104105_N2617",
                scene_id = 6,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["7104110"] = {},
    ["7104111"] = {
        npcs = {
            {
                id = 20523,
                alias = "Npc20523",
                script = "Actor/Npc/TempNPC",
                pos = "Q7104111_N20523",
                scene_id = 6,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20006,
                alias = "Npc20006",
                script = "Actor/Npc/TempNPC",
                pos = "Q7104111_N20523",
                scene_id = 6,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

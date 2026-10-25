main_id = 24001
local tbl = {}
local n = 2400102
local v = 2400103
local n2 = 2400104
tbl[1] = 2400101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["2400101"] = {},
    ["2400102"] = {
        npcs = {
            {
                id = 5019,
                alias = "Npc5019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2400101_N5144",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2400103"] = {
        npcs = {
            {
                id = 5019,
                alias = "Npc5019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2400101_N5144",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13344,
                alias = "Npc13344",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4418:3455.919,463.397,3775.392,0.000,76.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2400104"] = {
        npcs = {
            {
                id = 5019,
                alias = "Npc5019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2400101_N5144",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2400101"] = {
        npcs = {
            {
                id = 5113,
                alias = "Npc5113",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2400101_N5144",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 5019,
                alias = "Npc5019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_4419:3494.114,458.962,3713.034,0.000,227.450,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "[3_340200055:3488.075,459.082,3718.606]"}}
    },
    ["2400102"] = {
        npcs = {
            {
                id = 5113,
                alias = "Npc5113",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200026:3489.619,459.175,3721.281]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13344,
                alias = "Npc13344",
                script = "Actor/Npc/TempNPC",
                pos = "[3_4418:3455.919,463.397,3775.392,0.000,76.600,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2400103"] = {
        npcs = {
            {
                id = 5113,
                alias = "Npc5113",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "[3_340200031:3459.929,463.550,3768.372,0.000,335.570,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2400104"] = {
        npcs = {
            {
                id = 5113,
                alias = "Npc5113",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q2400101_N5144",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

main_id = 19018
local tbl = {}
local n = 1901805
local v = 1901802
local n2 = 1901803
local n3 = 1901804
tbl[1] = 1901801
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1901801"] = {},
    ["1901803"] = {},
    ["1901805"] = {
        npcs = {
            {
                id = 505,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q19018_wulang1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["1901801"] = {
        npcs = {
            {
                id = 505,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q19018_wulang1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1034,
                alias = "Npc1034",
                script = "Actor/Npc/TempNPC",
                pos = "Q19018_bachognshenzi",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3030,
                alias = "Npc3030",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "C1901801_N3030_322000666",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 3045,
                alias = "Npc3045",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19018_Talk1",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q19018_wulang1",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            }
        }
    },
    ["1901802"] = {},
    ["1901803"] = {
        npcs = {
            {
                id = 505,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q19018_wulang1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q19018_wulang1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1901804"] = {
        npcs = {
            {
                id = 505,
                alias = "Coop_Gorou",
                script = "Actor/Npc/TempNPC",
                pos = "Q19018_Wulang2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q19018_Wulang2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1901805"] = {
        npcs = {
            {
                id = 3045,
                alias = "Npc3045",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q19018_Talk1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1039,
                alias = "Npc1039",
                script = "Actor/Npc/TempNPC",
                pos = "Q19018_wulang1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

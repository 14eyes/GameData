main_id = 22020
local tbl = {}
local n = 2202002
local v = 2202003
local n2 = 2202004
local n3 = 2202005
local n4 = 2202006
tbl[1] = 2202001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["2202001"] = {},
    ["2202002"] = {},
    ["2202003"] = {},
    ["2202004"] = {
        npcs = {
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22020_dahetian1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2202005"] = {
        npcs = {
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22020_dahetian5",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2202006"] = {}
}

quest_data = {
    ["2202001"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22020_longer",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2202002"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22020_longer",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3046,
                alias = "Npc3046",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22020_tianye",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3047,
                alias = "Npc3047",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22020_anteng",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2202003"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22020_longer",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3019,
                alias = "Npc3019",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22020_dahetian1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3020,
                alias = "Npc3020",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22020_shangshan",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2202004"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22020_longer",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2202005"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22020_longer",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2202006"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22020_longer",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

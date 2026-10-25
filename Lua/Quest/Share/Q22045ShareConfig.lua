main_id = 22045
local tbl = {}
local n = 2204502
local v = 2204503
local n2 = 2204504
tbl[1] = 2204501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100995"}, {"100996"}}}}

rewind_data = {
    ["2204501"] = {},
    ["2204502"] = {
        npcs = {
            {
                id = 3182,
                alias = "Npc3182",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22045_Dadao",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3189,
                alias = "Npc3189",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22041_QINZI",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2204503"] = {
        npcs = {
            {
                id = 3182,
                alias = "Npc3182",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22045_Dadao",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3189,
                alias = "Npc3189",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22041_QINZI",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2204504"] = {
        npcs = {
            {
                id = 3182,
                alias = "Npc3182",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22045_Dadao",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3189,
                alias = "Npc3189",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22041_QINZI",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["2204501"] = {
        npcs = {
            {
                id = 3182,
                alias = "Npc3182",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22045_Dadao",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3189,
                alias = "Npc3189",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22041_QINZI",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2204502"] = {
        npcs = {
            {
                id = 12130,
                alias = "Npc12130",
                script = "Actor/Npc/TempNPC",
                pos = "Q22045Target1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2204503"] = {
        npcs = {
            {
                id = 12130,
                alias = "Npc12130",
                script = "Actor/Npc/TempNPC",
                pos = "Q22045Target2",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2204504"] = {}
}

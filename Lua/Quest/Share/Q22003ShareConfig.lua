main_id = 22003
local tbl = {}
local n = 2200302
local v = 2200303
local n2 = 2200304
local n3 = 2200305
tbl[1] = 2200301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl

rewind_data = {
    ["2200301"] = {},
    ["2200302"] = {
        npcs = {
            {
                id = 220401,
                alias = "Npc220401",
                script = "Actor/Npc/TempNPC",
                pos = "Q22003YanXiaoBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            },
            {
                id = 220101,
                alias = "Npc220101",
                script = "Actor/Npc/TempNPC",
                pos = "Q22003JiangXueBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2200303"] = {
        npcs = {
            {
                id = 220401,
                alias = "Npc220401",
                script = "Actor/Npc/TempNPC",
                pos = "Q22003YanXiaoBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            },
            {
                id = 220101,
                alias = "Npc220101",
                script = "Actor/Npc/TempNPC",
                pos = "Q22003JiangXueBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2200304"] = {
        npcs = {
            {
                id = 220401,
                alias = "Npc220401",
                script = "Actor/Npc/TempNPC",
                pos = "Q22003YanXiaoBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            },
            {
                id = 220101,
                alias = "Npc220101",
                script = "Actor/Npc/TempNPC",
                pos = "Q22003JiangXueBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2200305"] = {
        npcs = {
            {
                id = 220401,
                alias = "Npc220401",
                script = "Actor/Npc/TempNPC",
                pos = "Q22003YanXiaoBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            },
            {
                id = 220101,
                alias = "Npc220101",
                script = "Actor/Npc/TempNPC",
                pos = "Q22003JiangXueBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2200301"] = {
        npcs = {
            {
                id = 220401,
                alias = "Npc220401",
                script = "Actor/Npc/TempNPC",
                pos = "Q22003YanXiaoBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            },
            {
                id = 220101,
                alias = "Npc220101",
                script = "Actor/Npc/TempNPC",
                pos = "Q22003JiangXueBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2200302"] = {
        npcs = {
            {
                id = 220401,
                alias = "Npc220401",
                script = "Actor/Npc/TempNPC",
                pos = "Q22003YanXiaoBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            },
            {
                id = 220101,
                alias = "Npc220101",
                script = "Actor/Npc/TempNPC",
                pos = "Q22003JiangXueBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2200303"] = {
        npcs = {
            {
                id = 220401,
                alias = "Npc220401",
                script = "Actor/Npc/TempNPC",
                pos = "Q22003YanXiaoBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            },
            {
                id = 220101,
                alias = "Npc220101",
                script = "Actor/Npc/TempNPC",
                pos = "Q22003JiangXueBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2200304"] = {
        npcs = {
            {
                id = 220401,
                alias = "Npc220401",
                script = "Actor/Npc/TempNPC",
                pos = "Q22003YanXiaoBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            },
            {
                id = 220101,
                alias = "Npc220101",
                script = "Actor/Npc/TempNPC",
                pos = "Q22003JiangXueBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2200305"] = {
        npcs = {
            {
                id = 220401,
                alias = "Npc220401",
                script = "Actor/Npc/TempNPC",
                pos = "Q22003YanXiaoBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 0
            },
            {
                id = 220101,
                alias = "Npc220101",
                script = "Actor/Npc/TempNPC",
                pos = "Q22003JiangXueBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

finish_action = {}
fail_action = {}
cancel_action = {}
finish_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100376"}}}}
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"100376"}}}}

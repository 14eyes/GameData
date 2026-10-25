main_id = 19000
local tbl = {}
local n = 1900002
local v = 1900003
local n2 = 1900004
local n3 = 1900005
local n4 = 1900006
local n5 = 1900007
local n6 = 1900008
local n7 = 1900009
local n8 = 1900010
local n9 = 1900011
tbl[1] = 1900001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
tbl[11] = n9
sub_ids = tbl

finish_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"201008005"}},
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133002408"}}
    }
}

fail_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"201008005"}},
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133002408"}}
    }
}

cancel_action = {
    CLIENT = {},
    SERVER = {
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"201008005"}},
        QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133002408"}}
    }
}

rewind_data = {
    ["1900001"] = {},
    ["1900002"] = {},
    ["1900003"] = {
        npcs = {
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1900004"] = {
        npcs = {
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1900005"] = {
        npcs = {
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1900006"] = {},
    ["1900007"] = {},
    ["1900008"] = {},
    ["1900009"] = {},
    ["1900010"] = {},
    ["1900011"] = {}
}

quest_data = {
    ["1900001"] = {
        npcs = {
            {
                id = 147101,
                alias = "Npc147101",
                script = "Actor/Npc/TempNPC",
                pos = "NpcFemaleInsomniaStand16Born",
                scene_id = 1008,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1900002"] = {
        npcs = {
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1900003"] = {},
    ["1900004"] = {},
    ["1900005"] = {},
    ["1900006"] = {},
    ["1900007"] = {
        npcs = {
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala03",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1900008"] = {
        npcs = {
            {
                id = 147101,
                alias = "Npc147101",
                script = "Actor/Npc/TempNPC",
                pos = "NpcFemaleInsomniaStand16Born",
                scene_id = 1008,
                room_id = 1,
                data_index = 1
            }
        }
    },
    ["1900009"] = {},
    ["1900010"] = {},
    ["1900011"] = {
        npcs = {
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala03",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

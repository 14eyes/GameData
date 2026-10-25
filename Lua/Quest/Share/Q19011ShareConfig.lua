main_id = 19011
local tbl = {}
local n = 1901102
local v = 1901103
local n2 = 1901104
local n3 = 1901105
local n4 = 1901106
local n5 = 1901107
local n6 = 1901108
local n7 = 1901109
tbl[1] = 1901101
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
    ["1901101"] = {},
    ["1901102"] = {},
    ["1901103"] = {},
    ["1901104"] = {},
    ["1901105"] = {},
    ["1901106"] = {},
    ["1901107"] = {},
    ["1901108"] = {},
    ["1901109"] = {}
}

quest_data = {
    ["1901101"] = {
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
    ["1901102"] = {
        npcs = {
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala05",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 10801,
                alias = "Npc1553",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP101401_Play_NPC_01",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 10802,
                alias = "Npc1555",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP101401_Play_NPC_02",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 10803,
                alias = "Npc1557",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP101401_Play_NPC_03",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1901103"] = {
        npcs = {
            {
                id = 10801,
                alias = "Npc1553",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP101401_Play_NPC_01",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1901104"] = {
        npcs = {
            {
                id = 10802,
                alias = "Npc1555",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP101401_Play_NPC_02",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1901105"] = {
        npcs = {
            {
                id = 10803,
                alias = "Npc1557",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "COOP101401_Play_NPC_03",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1901106"] = {
        npcs = {
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala05",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1901107"] = {
        npcs = {
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "COOP101401Babala05",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1901108"] = {
        npcs = {
            {
                id = 1008,
                alias = "Barbara",
                script = "Actor/Quest/Q413/Barbara",
                pos = "COOP101401Babala05",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1901109"] = {
        npcs = {
            {
                id = 501,
                alias = "Coop_Barbara",
                script = "Actor/Npc/TempNPC",
                pos = "COOP101401Babala06",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

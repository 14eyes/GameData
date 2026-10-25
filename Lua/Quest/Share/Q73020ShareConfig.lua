main_id = 73020
local tbl = {}
local n = 7302002
local v = 7302006
local n2 = 7302003
local n3 = 7302009
local n4 = 7302008
local n5 = 7302004
local n6 = 7302005
local n7 = 7302007
local n8 = 7302010
tbl[1] = 7302001
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
tbl[9] = n7
tbl[10] = n8
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7302001"] = {},
    ["7302002"] = {
        npcs = {
            {
                id = 20650,
                alias = "Npc20650",
                script = "Actor/Npc/TempNPC",
                pos = "Q7302001_N4192",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7302003"] = {},
    ["7302004"] = {},
    ["7302005"] = {
        npcs = {
            {
                id = 20733,
                alias = "Npc20733",
                script = "Actor/Npc/TempNPC",
                pos = "Q7302004_N20733",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7302006"] = {},
    ["7302007"] = {},
    ["7302008"] = {},
    ["7302009"] = {},
    ["7302010"] = {}
}

quest_data = {
    ["7302001"] = {
        npcs = {
            {
                id = 20650,
                alias = "Npc20650",
                script = "Actor/Npc/TempNPC",
                pos = "Q7302001_N4192",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4192,
                alias = "Npc4192",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7302001_N4192",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7302002"] = {
        npcs = {
            {
                id = 4192,
                alias = "Npc4192",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7302001_N4192",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7302003"] = {},
    ["7302004"] = {
        npcs = {
            {
                id = 20733,
                alias = "Npc20733",
                script = "Actor/Npc/TempNPC",
                pos = "Q7302004_N20733",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7302005"] = {
        npcs = {
            {
                id = 20650,
                alias = "Npc20650",
                script = "Actor/Npc/TempNPC",
                pos = "Q7302005_N20650",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4192,
                alias = "Npc4192",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7302005_N20650",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7302006"] = {
        npcs = {
            {
                id = 20650,
                alias = "Npc20650",
                script = "Actor/Npc/TempNPC",
                pos = "Q7302001_N4192",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4192,
                alias = "Npc4192",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7302001_N4192",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7302007"] = {},
    ["7302008"] = {},
    ["7302009"] = {},
    ["7302010"] = {
        npcs = {
            {
                id = 20650,
                alias = "Npc20650",
                script = "Actor/Npc/TempNPC",
                pos = "Q7302010_N20650",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4192,
                alias = "Npc4192",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7302010_N20650",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

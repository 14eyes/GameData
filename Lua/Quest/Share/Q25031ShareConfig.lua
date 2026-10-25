main_id = 25031
local tbl = {}
local n = 2503102
local v = 2503103
local n2 = 2503104
local n3 = 2503105
tbl[1] = 2503101
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133504240,133504634"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2503101"] = {},
    ["2503102"] = {
        npcs = {
            {
                id = 6087,
                alias = "Npc6087",
                script = "Actor/Npc/TempNPC",
                pos = "Q25030StartTamolei",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2503104"] = {
        npcs = {
            {
                id = 6087,
                alias = "Npc6087",
                script = "Actor/Npc/TempNPC",
                pos = "Q25030StartTamolei",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20088,
                alias = "NPC20088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400097:-1547.319,56.618,8115.397,0.000,159.239,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2503105"] = {
        npcs = {
            {
                id = 6087,
                alias = "Npc6087",
                script = "Actor/Npc/TempNPC",
                pos = "Q25030StartTamolei",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2503101"] = {
        npcs = {
            {
                id = 6087,
                alias = "Npc6087",
                script = "Actor/Npc/TempNPC",
                pos = "Q25030StartTamolei",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20088,
                alias = "NPC20088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400097:-1547.319,56.618,8115.397,0.000,159.239,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 20776,
                alias = "Npc20776",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400098:-1544.858,56.741,8114.367,0.000,282.567,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["2503102"] = {
        npcs = {
            {
                id = 20088,
                alias = "NPC20088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400097:-1547.319,56.618,8115.397,0.000,159.239,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20776,
                alias = "Npc20776",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400098:-1544.858,56.741,8114.367,0.000,282.567,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2503103"] = {
        npcs = {
            {
                id = 20088,
                alias = "NPC20088",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400097:-1547.319,56.618,8115.397,0.000,159.239,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20776,
                alias = "Npc20776",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400098:-1544.858,56.741,8114.367,0.000,282.567,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2503104"] = {
        npcs = {
            {
                id = 20776,
                alias = "Npc20776",
                script = "Actor/Npc/TempNPC",
                pos = "[3_350400098:-1544.858,56.741,8114.367,0.000,282.567,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2503105"] = {}
}

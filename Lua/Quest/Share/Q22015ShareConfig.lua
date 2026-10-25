main_id = 22015
local tbl = {}
local n = 2201502
local v = 2201503
local n2 = 2201504
local n3 = 2201505
tbl[1] = 2201501
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
local str = "0"
tbl3[1] = "133220144"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2201501"] = {},
    ["2201502"] = {
        npcs = {
            {
                id = 3041,
                alias = "Npc3041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22015_shanhu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2201504"] = {
        npcs = {
            {
                id = 3041,
                alias = "Npc3041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22015_shanhu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22015_longer",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2201505"] = {
        npcs = {
            {
                id = 3041,
                alias = "Npc3041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22015_shanhu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["2201501"] = {
        npcs = {
            {
                id = 3041,
                alias = "Npc3041",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22015_shanhu",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22015_longer",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2201502"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22015_longer",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2201503"] = {},
    ["2201504"] = {
        npcs = {
            {
                id = 3046,
                alias = "Npc3046",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22015_longer",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3047,
                alias = "Npc3047",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22015_longer",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2201505"] = {
        npcs = {
            {
                id = 3042,
                alias = "Npc3042",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22015_longer",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3046,
                alias = "Npc3046",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22015_longer",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 3047,
                alias = "Npc3047",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q22015_longer",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    }
}

main_id = 23042
local tbl = {}
local n = 2304202
local v = 2304203
local n2 = 2304204
local n3 = 2304205
local n4 = 2304206
tbl[1] = 2304201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}

local server = {
    QUEST_EXEC_DEL_ALL_SPECIFIC_PACK_ITEM = {{"120066"}},
    QUEST_EXEC_DEACTIVE_ITEM_GIVING = {{"2304204"}}
}

local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133308121"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["2304201"] = {},
    ["2304202"] = {
        npcs = {
            {
                id = 4404,
                alias = "Npc4404",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23041_N4404",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4405,
                alias = "Npc4405",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73233_N4405",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2304203"] = {
        npcs = {
            {
                id = 4404,
                alias = "Npc4404",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23041_N4404",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4405,
                alias = "Npc4405",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73233_N4405",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2304204"] = {
        npcs = {
            {
                id = 4404,
                alias = "Npc4404",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23041_N4404",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4405,
                alias = "Npc4405",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73233_N4405",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2304205"] = {
        npcs = {
            {
                id = 4404,
                alias = "Npc4404",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23041_N4404",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4405,
                alias = "Npc4405",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73233_N4405",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2304206"] = {}
}

quest_data = {
    ["2304201"] = {
        npcs = {
            {
                id = 4404,
                alias = "Npc4404",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q23041_N4404",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4405,
                alias = "Npc4405",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73233_N4405",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["2304202"] = {
        npcs = {
            {
                id = 4406,
                alias = "Npc4406",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73233_N4406",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["2304203"] = {},
    ["2304204"] = {},
    ["2304205"] = {},
    ["2304206"] = {
        npcs = {
            {
                id = 4404,
                alias = "Npc4404",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73233_N4404",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 4405,
                alias = "Npc4405",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q73233_N4405",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

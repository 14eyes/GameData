main_id = 70003
local tbl = {}
local n = 7000302
local v = 7000303
local n2 = 7000304
local n3 = 7000305
local n4 = 7000306
local n5 = 7000307
local n6 = 7000308
tbl[1] = 7000301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
tbl[7] = n5
tbl[8] = n6
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {}
local tbl3 = {}
local str = ""
tbl3[1] = "133004932"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2

rewind_data = {
    ["7000302"] = {},
    ["7000303"] = {
        npcs = {
            {
                id = 1445,
                alias = "Npc1445",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70003Alami",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7000304"] = {
        npcs = {
            {
                id = 1445,
                alias = "Npc1445",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70003Alami",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20219,
                alias = "Npc20219",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70003Cat1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7000305"] = {
        npcs = {
            {
                id = 1445,
                alias = "Npc1445",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70003Alami",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20219,
                alias = "Npc20219",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70003Cat1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7000306"] = {
        npcs = {
            {
                id = 1445,
                alias = "Npc1445",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70003Alami",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20219,
                alias = "Npc20219",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70003Cat1",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7000308"] = {
        npcs = {
            {
                id = 1445,
                alias = "Npc1445",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70003Alami",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7000301"] = {},
    ["7000302"] = {
        npcs = {
            {
                id = 1445,
                alias = "Npc1445",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70003Alami",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7000303"] = {
        npcs = {
            {
                id = 20219,
                alias = "Npc20219",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70003Cat1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7000304"] = {},
    ["7000305"] = {},
    ["7000306"] = {},
    ["7000307"] = {
        npcs = {
            {
                id = 20219,
                alias = "Npc20219",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70003Cat1",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7000308"] = {
        npcs = {
            {
                id = 1431,
                alias = "Npc1431",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q70003Margret",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

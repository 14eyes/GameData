main_id = 71803
local tbl = {}
local n = 7180302
local v = 7180303
local n2 = 7180304
local n3 = 7180305
local n4 = 7180306
tbl[1] = 7180301
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
tbl[6] = n4
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133107931"}}}}
fail_action = {CLIENT = {}, SERVER = {QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133107931"}}}}
cancel_action = {CLIENT = {}, SERVER = {QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = {{"133107931"}}}}

rewind_data = {
    ["7180301"] = {},
    ["7180302"] = {},
    ["7180303"] = {},
    ["7180304"] = {
        npcs = {
            {
                id = 2016,
                alias = "Npc2016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "WQ7180306NPCLanJie",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20180,
                alias = "Npc20180",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "WQ7180304NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7180305"] = {},
    ["7180306"] = {}
}

quest_data = {
    ["7180301"] = {
        npcs = {
            {
                id = 2016,
                alias = "Npc2016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "WQ7180306NPCLanJie",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20180,
                alias = "Npc20180",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "WQ7180304NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7180302"] = {
        npcs = {
            {
                id = 2016,
                alias = "Npc2016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "WQ7180306NPCLanJie",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20180,
                alias = "Npc20180",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "WQ7180304NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "WQ7180304TalkPos"}}
    },
    ["7180303"] = {
        npcs = {
            {
                id = 2016,
                alias = "Npc2016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "WQ7180306NPCLanJie",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20180,
                alias = "Npc20180",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "WQ7180304NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7180304"] = {
        npcs = {
            {
                id = 2016,
                alias = "Npc2016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "WQ7180306NPCLanJie",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20180,
                alias = "Npc20180",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "WQ7180304NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7180305"] = {
        npcs = {
            {
                id = 2016,
                alias = "Npc2016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "WQ7180306NPCLanJie",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20180,
                alias = "Npc20180",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "WQ7180304NPCBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7180306"] = {
        npcs = {
            {
                id = 2016,
                alias = "Npc2016",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "WQ7180306NPCLanJie",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 20180,
                alias = "Npc20180",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "WQ7180306NPCCat",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 2, scene_id = 3, pos = "WQ7180306Player"}}
    }
}

main_id = 72730
local tbl = {}
local n = 7273002
local v = 7273003
local n2 = 7273004
local n3 = 7273008
local n4 = 7273005
local n5 = 7273006
local n6 = 7273007
tbl[1] = 7273001
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
tbl3[1] = "133209096"
tbl3[2] = str
qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP[1] = tbl3
server.QUEST_EXEC_UNREGISTER_DYNAMIC_GROUP = qUEST_EXEC_UNREGISTER_DYNAMIC_GROUP
tbl2.SERVER = server
cancel_action = tbl2
rewind_data = {["7273001"] = {}, ["7273003"] = {}, ["7273005"] = {}, ["7273007"] = {}}

quest_data = {
    ["7273001"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q7273001_Q7273002_N1044",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q7273001_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q7273001_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 20268,
                alias = "Npc20268",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7273001_Q7273002_N1044",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 20269,
                alias = "Npc20269",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7273001_Q7273002_N1044",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 20270,
                alias = "Npc20270",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7273001_Q7273002_N1044",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["7273002"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q7273001_Q7273002_N1044",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 12278,
                alias = "Npc12278",
                script = "Actor/Npc/TempNPC",
                pos = "Q7273001_N12278",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 12276,
                alias = "Npc12276",
                script = "Actor/Npc/TempNPC",
                pos = "Q7273001_N12276",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 20268,
                alias = "Npc20268",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7273001_Q7273002_N1044",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 20269,
                alias = "Npc20269",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7273001_Q7273002_N1044",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 20270,
                alias = "Npc20270",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7273001_Q7273002_N1044",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "T7273005_T7273006_N1005"}}
    },
    ["7273003"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q7273003_Q7273004_Q7273101_Q7273102_N1044_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "T7273005_T7273006_N1005"}}
    },
    ["7273004"] = {
        npcs = {
            {
                id = 1044,
                alias = "Npc1044",
                script = "Actor/Npc/TempNPC",
                pos = "Q7273003_Q7273004_Q7273101_Q7273102_N1044_guide",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7273005"] = {
        npcs = {
            {
                id = 13069,
                alias = "Npc13069",
                script = "Actor/Npc/TempNPC",
                pos = "T7273005_N13019",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7273006"] = {
        npcs = {
            {
                id = 13069,
                alias = "Npc13069",
                script = "Actor/Npc/TempNPC",
                pos = "Q7273005_Q7273007_N13019",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7273007"] = {
        npcs = {
            {
                id = 13019,
                alias = "Npc13019",
                script = "Actor/Npc/TempNPC",
                pos = "Q7273005_Q7273007_N13019",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 13069,
                alias = "Npc13069",
                script = "Actor/Npc/TempNPC",
                pos = "Q7273005_Q7273007_N13019",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7273008"] = {}
}

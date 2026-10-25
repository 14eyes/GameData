main_id = 11032
local tbl = {}
local n = 1103202
local v = 1103203
local n2 = 1103205
local n3 = 1103204
tbl[1] = 1103201
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
local tbl2 = {CLIENT = {}}
local server = {}
local qUEST_EXEC_REFRESH_GROUP_SUITE = {}
local tbl3 = {}
local str = "201035001,1"
tbl3[1] = "1035"
tbl3[2] = str
local tbl4 = {}
local str2 = "133107154,1"
tbl4[1] = "3"
tbl4[2] = str2
qUEST_EXEC_REFRESH_GROUP_SUITE[1] = tbl3
qUEST_EXEC_REFRESH_GROUP_SUITE[2] = tbl4
server.QUEST_EXEC_REFRESH_GROUP_SUITE = qUEST_EXEC_REFRESH_GROUP_SUITE
tbl2.SERVER = server
finish_action = tbl2
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1103201"] = {
        npcs = {
            {
                id = 202901,
                alias = "Npc202901",
                script = "Actor/Npc/TempNPC",
                pos = "Q11032HuixinFin",
                scene_id = 1035,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11032GanyuFin",
                scene_id = 1035,
                room_id = 1,
                data_index = 3
            }
        }
    },
    ["1103202"] = {},
    ["1103204"] = {},
    ["1103205"] = {
        npcs = {
            {
                id = 214001,
                alias = "Npc214001",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiShi",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 214201,
                alias = "Npc214201",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiWen",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 214301,
                alias = "Npc214301",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiXiao",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    }
}

quest_data = {
    ["1103201"] = {
        npcs = {
            {
                id = 2029,
                alias = "Npc2029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q11031HuiXinBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 202901,
                alias = "Npc202901",
                script = "Actor/Npc/TempNPC",
                pos = "Q11032HuixinFin",
                scene_id = 1035,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11032GanyuFin",
                scene_id = 1035,
                room_id = 1,
                data_index = 3
            },
            {
                id = 214001,
                alias = "Npc214001",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiShi",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 214201,
                alias = "Npc214201",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiWen",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 214301,
                alias = "Npc214301",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiXiao",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1103202"] = {
        npcs = {
            {
                id = 2029,
                alias = "Npc2029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q11031HuiXinBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 202901,
                alias = "Npc202901",
                script = "Actor/Npc/TempNPC",
                pos = "Q11032HuixinFin",
                scene_id = 1035,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11032GanyuFin",
                scene_id = 1035,
                room_id = 1,
                data_index = 3
            },
            {
                id = 214001,
                alias = "Npc214001",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiShi",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 214201,
                alias = "Npc214201",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiWen",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 214301,
                alias = "Npc214301",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiXiao",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1103203"] = {
        npcs = {
            {
                id = 2029,
                alias = "Npc2029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q11031HuiXinBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 202901,
                alias = "Npc202901",
                script = "Actor/Npc/TempNPC",
                pos = "Q11032HuixinFin",
                scene_id = 1035,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11032GanyuFin",
                scene_id = 1035,
                room_id = 1,
                data_index = 3
            },
            {
                id = 214001,
                alias = "Npc214001",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiShi",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 214201,
                alias = "Npc214201",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiWen",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 214301,
                alias = "Npc214301",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiXiao",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1103204"] = {
        npcs = {
            {
                id = 2029,
                alias = "Npc2029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q11031HuiXinBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 202901,
                alias = "Npc202901",
                script = "Actor/Npc/TempNPC",
                pos = "Q11032HuixinFin",
                scene_id = 1035,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11032GanyuFin",
                scene_id = 1035,
                room_id = 1,
                data_index = 3
            },
            {
                id = 214001,
                alias = "Npc214001",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiShi",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 214201,
                alias = "Npc214201",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiWen",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 214301,
                alias = "Npc214301",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiXiao",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    },
    ["1103205"] = {
        npcs = {
            {
                id = 2029,
                alias = "Npc2029",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q11031HuiXinBorn",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 202901,
                alias = "Npc202901",
                script = "Actor/Npc/TempNPC",
                pos = "Q11032HuixinFin",
                scene_id = 1035,
                room_id = 1,
                data_index = 2
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11032GanyuFin",
                scene_id = 1035,
                room_id = 1,
                data_index = 3
            },
            {
                id = 214001,
                alias = "Npc214001",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiShi",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 214201,
                alias = "Npc214201",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiWen",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 214301,
                alias = "Npc214301",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiXiao",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            }
        }
    }
}

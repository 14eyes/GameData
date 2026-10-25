main_id = 11030
local tbl = {}
local n = 1103002
local v = 1103003
local n2 = 1103004
local n3 = 1103010
local n4 = 1103005
local n5 = 1103006
local n6 = 1103007
local n7 = 1103008
local n8 = 1103009
local n9 = 1103011
local n10 = 1103012
tbl[1] = 1103001
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
tbl[12] = n10
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1103001"] = {},
    ["1103002"] = {},
    ["1103003"] = {
        npcs = {
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030GanyuV2Born",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1103004"] = {
        npcs = {
            {
                id = 10258,
                alias = "Npc10258",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030AocangAfeiMove",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["1103006"] = {
        npcs = {
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030GanyuChallenge1Fin",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 10258,
                alias = "Npc10258",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030AocangAfeiMove",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            }
        }
    },
    ["1103007"] = {
        npcs = {
            {
                id = 10258,
                alias = "Npc10258",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030AocangAfeiMove",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030Xiao2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1103009"] = {
        npcs = {
            {
                id = 10258,
                alias = "Npc10258",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030AocangAfeiMove",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030Xiao2",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["1103010"] = {}
}

quest_data = {
    ["1103001"] = {
        npcs = {
            {
                id = 214001,
                alias = "Npc214001",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiShi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 214201,
                alias = "Npc214201",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiWen",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 214301,
                alias = "Npc214301",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiXiao",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            }
        }
    },
    ["1103002"] = {
        npcs = {
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030GanyuV2Born",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["1103003"] = {
        npcs = {
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030GanyuV2Born",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 10258,
                alias = "Npc10258",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030AocangAfeiMove",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1103004"] = {
        npcs = {
            {
                id = 10258,
                alias = "Npc10258",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030AocangAfeiMove",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030GanyuV2Born2",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q11030Challenge1Start2"}}
    },
    ["1103005"] = {
        npcs = {
            {
                id = 214001,
                alias = "Npc214001",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiShi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 214201,
                alias = "Npc214201",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiWen",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 214301,
                alias = "Npc214301",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiXiao",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030GanyuV2Born",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030GanyuV2Born2",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030GanyuChallenge1Fin",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030GanyuChallenge2Fin",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 10258,
                alias = "Npc10258",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030AocangAfeiMove",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030Xiao2",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        },
        transmit_points = {
            {point_id = 1, scene_id = 3, pos = "Q11030Challenge1Start2"},
            {point_id = 2, scene_id = 3, pos = "Q11030Challenge1FinTrans"}
        }
    },
    ["1103006"] = {
        npcs = {
            {
                id = 214001,
                alias = "Npc214001",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiShi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 214201,
                alias = "Npc214201",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiWen",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 214301,
                alias = "Npc214301",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiXiao",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030GanyuV2Born",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030GanyuV2Born2",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030GanyuChallenge2Fin",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 10258,
                alias = "Npc10258",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030AocangAfeiMove",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030Xiao2",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["1103007"] = {
        npcs = {
            {
                id = 214001,
                alias = "Npc214001",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiShi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 214201,
                alias = "Npc214201",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiWen",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 214301,
                alias = "Npc214301",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiXiao",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030GanyuV2Born",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030GanyuV2Born2",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030GanyuChallenge1Fin",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030GanyuChallenge2Fin",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 10258,
                alias = "Npc10258",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030AocangAfeiMove",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030Xiao2",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["1103008"] = {
        npcs = {
            {
                id = 214001,
                alias = "Npc214001",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiShi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 214201,
                alias = "Npc214201",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiWen",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 214301,
                alias = "Npc214301",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiXiao",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030GanyuV2Born",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030GanyuV2Born2",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030GanyuChallenge1Fin",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030GanyuChallenge2Fin",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 10258,
                alias = "Npc10258",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030AocangAfeiMove",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030Xiao2",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        }
    },
    ["1103009"] = {
        npcs = {
            {
                id = 214001,
                alias = "Npc214001",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiShi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 214201,
                alias = "Npc214201",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiWen",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 214301,
                alias = "Npc214301",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiXiao",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030GanyuV2Born",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030GanyuV2Born2",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030GanyuChallenge1Fin",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030GanyuChallenge2Fin",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 10258,
                alias = "Npc10258",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030AocangAfeiMove",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030Xiao2",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            },
            {
                id = 10342,
                alias = "Npc10342",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030VisitNPC",
                scene_id = 3,
                room_id = 0,
                data_index = 10
            }
        }
    },
    ["1103010"] = {
        npcs = {
            {
                id = 214001,
                alias = "Npc214001",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiShi",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 214201,
                alias = "Npc214201",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiWen",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 214301,
                alias = "Npc214301",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030SanMiShuBaiXiao",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030GanyuV2Born",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030GanyuV2Born2",
                scene_id = 3,
                room_id = 0,
                data_index = 5
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030GanyuChallenge1Fin",
                scene_id = 3,
                room_id = 0,
                data_index = 6
            },
            {
                id = 1015,
                alias = "Npc1015",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030GanyuChallenge2Fin",
                scene_id = 3,
                room_id = 0,
                data_index = 7
            },
            {
                id = 10258,
                alias = "Npc10258",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030AocangAfeiMove",
                scene_id = 3,
                room_id = 0,
                data_index = 8
            },
            {
                id = 10204,
                alias = "Xiao",
                script = "Actor/Npc/TempNPC",
                pos = "Q11030Xiao2",
                scene_id = 3,
                room_id = 0,
                data_index = 9
            }
        },
        transmit_points = {{point_id = 1, scene_id = 3, pos = "Q11030Challenge1Start2"}}
    }
}

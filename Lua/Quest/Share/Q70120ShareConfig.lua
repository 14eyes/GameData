main_id = 70120
local tbl = {}
local n = 7012014
local v = 7012015
local n2 = 7012002
local n3 = 7012006
local n4 = 7012011
local n5 = 7012003
local n6 = 7012007
local n7 = 7012012
local n8 = 7012005
local n9 = 7012010
local n10 = 7012013
local n11 = 7012004
local n12 = 7012008
local n13 = 7012009
tbl[1] = 7012001
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
tbl[13] = n11
tbl[14] = n12
tbl[15] = n13
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7012001"] = {},
    ["7012002"] = {},
    ["7012003"] = {},
    ["7012004"] = {
        npcs = {
            {
                id = 17217,
                alias = "Npc17217",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18150:8284.829,381.599,6572.923,0.000,292.524,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7012005"] = {},
    ["7012006"] = {},
    ["7012007"] = {},
    ["7012008"] = {},
    ["7012009"] = {},
    ["7012010"] = {},
    ["7012011"] = {},
    ["7012012"] = {},
    ["7012013"] = {},
    ["7012014"] = {},
    ["7012015"] = {
        npcs = {
            {
                id = 17217,
                alias = "Npc17217",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18150:8284.829,381.599,6572.923,0.000,292.524,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    }
}

quest_data = {
    ["7012001"] = {
        npcs = {
            {
                id = 17217,
                alias = "Npc17217",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18150:8284.829,381.599,6572.923,0.000,292.524,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 17218,
                alias = "Npc17218",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18151:8253.638,397.812,6506.508,0.000,138.779,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2,
                spawnStateParams = {
                    isResetStateOnReuse = true,
                    lookAtParam = {lookPos = {x = 0.0, y = 0.0, z = 0.0}},
                    freestyleParam = {freestyleType = 4100},
                    emotionParam = {autoBlink = true}
                }
            },
            {
                id = 17219,
                alias = "Npc17219",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18152:8352.008,385.191,6418.281,355.925,126.410,16.677]",
                scene_id = 3,
                room_id = 0,
                data_index = 3,
                spawnStateParams = {
                    isResetStateOnReuse = true,
                    lookAtParam = {lookPos = {x = 0.0, y = 0.0, z = 0.0}},
                    freestyleParam = {freestyleType = 4121},
                    emotionParam = {autoBlink = true}
                }
            },
            {
                id = 17220,
                alias = "Npc17220",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18153:8201.851,382.603,6410.739,0.000,126.708,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 4,
                spawnStateParams = {
                    isResetStateOnReuse = true,
                    lookAtParam = {lookPos = {x = 0.0, y = 0.0, z = 0.0}},
                    freestyleParam = {freestyleType = 4120},
                    emotionParam = {autoBlink = true}
                }
            }
        }
    },
    ["7012002"] = {
        npcs = {
            {
                id = 17218,
                alias = "Npc17218",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18151:8253.638,397.812,6506.508,0.000,138.779,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                spawnStateParams = {
                    isResetStateOnReuse = true,
                    lookAtParam = {lookPos = {x = 0.0, y = 0.0, z = 0.0}},
                    freestyleParam = {freestyleType = 4100},
                    emotionParam = {autoBlink = true}
                }
            }
        }
    },
    ["7012003"] = {
        npcs = {
            {
                id = 17220,
                alias = "Npc17220",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18153:8201.851,382.603,6410.739,0.000,126.708,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                spawnStateParams = {
                    isResetStateOnReuse = true,
                    lookAtParam = {lookPos = {x = 0.0, y = 0.0, z = 0.0}},
                    freestyleParam = {freestyleType = 4120},
                    emotionParam = {autoBlink = true}
                }
            }
        }
    },
    ["7012004"] = {},
    ["7012005"] = {
        npcs = {
            {
                id = 17219,
                alias = "Npc17219",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18152:8352.008,385.191,6418.281,355.925,126.410,16.677]",
                scene_id = 3,
                room_id = 0,
                data_index = 1,
                spawnStateParams = {
                    isResetStateOnReuse = true,
                    lookAtParam = {lookPos = {x = 0.0, y = 0.0, z = 0.0}},
                    freestyleParam = {freestyleType = 4121},
                    emotionParam = {autoBlink = true}
                }
            }
        }
    },
    ["7012006"] = {
        npcs = {
            {
                id = 17218,
                alias = "Npc17218",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18151:8253.638,397.812,6506.508,0.000,138.779,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7012007"] = {
        npcs = {
            {
                id = 17220,
                alias = "Npc17220",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18153:8201.851,382.603,6410.739,0.000,126.708,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7012008"] = {
        npcs = {
            {
                id = 17217,
                alias = "Npc17217",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18692:8288.873,380.266,6573.938,0.000,302.743,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7012009"] = {
        npcs = {
            {
                id = 17217,
                alias = "Npc17217",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18157:8290.521,380.430,6572.714,0.000,106.651,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 17218,
                alias = "Npc17218",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18154:8293.053,380.688,6572.063,0.000,291.698,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 17219,
                alias = "Npc17219",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18156:8293.383,380.430,6573.349,359.734,179.321,0.199]",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 17220,
                alias = "Npc17220",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18155:8292.507,380.430,6570.964,359.778,336.089,359.753]",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["7012010"] = {
        npcs = {
            {
                id = 17219,
                alias = "Npc17219",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18152:8352.008,385.191,6418.281,355.925,126.410,16.677]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7012011"] = {
        npcs = {
            {
                id = 17217,
                alias = "Npc17217",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18150:8284.829,381.599,6572.923,0.000,292.524,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 17218,
                alias = "Npc17218",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18154:8293.053,380.688,6572.063,0.000,291.698,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7012012"] = {
        npcs = {
            {
                id = 17217,
                alias = "Npc17217",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18150:8284.829,381.599,6572.923,0.000,292.524,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 17220,
                alias = "Npc17220",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18155:8292.507,380.430,6570.964,359.778,336.089,359.753]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7012013"] = {
        npcs = {
            {
                id = 17217,
                alias = "Npc17217",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18150:8284.829,381.599,6572.923,0.000,292.524,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 17219,
                alias = "Npc17219",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18156:8293.383,380.430,6573.349,359.734,179.321,0.199]",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7012014"] = {
        npcs = {
            {
                id = 17217,
                alias = "Npc17217",
                script = "Actor/Npc/TempNPC",
                pos = "[3_18150:8284.829,381.599,6572.923,0.000,292.524,0.000]",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7012015"] = {}
}

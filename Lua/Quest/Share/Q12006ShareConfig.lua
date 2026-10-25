main_id = 12006
local tbl = {}
local n = 1200602
local v = 1200603
local n2 = 1200607
local n3 = 1200608
local n4 = 1200606
local n5 = 1200605
local n6 = 1200604
tbl[1] = 1200601
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
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["1200601"] = {
        npcs = {
            {
                id = 3044,
                alias = "Npc3044",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200601FoodOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1200602"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3044,
                alias = "Npc3044",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200601FoodOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1200603"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3044,
                alias = "Npc3044",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200601FoodOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200602FoodAyakaCook",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1200604"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3044,
                alias = "Npc3044",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200601FoodOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["1200605"] = {},
    ["1200606"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3044,
                alias = "Npc3044",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200601FoodOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["1200601"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3044,
                alias = "Npc3044",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200601FoodOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200601FoodAyakaSit",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200602FoodAyakaCook",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1200602"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3044,
                alias = "Npc3044",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200601FoodOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200601FoodAyakaSit",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200602FoodAyakaCook",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1200603"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3044,
                alias = "Npc3044",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200601FoodOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200601FoodAyakaSit",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200602FoodAyakaCook",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1200604"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3044,
                alias = "Npc3044",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200601FoodOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200601FoodAyakaSit",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200602FoodAyakaCook",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1200605"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3044,
                alias = "Npc3044",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200601FoodOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200601FoodAyakaSit",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200602FoodAyakaCook",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    },
    ["1200606"] = {
        npcs = {
            {
                id = 3006,
                alias = "Npc3006",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200501Mio",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3044,
                alias = "Npc3044",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200601FoodOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200601FoodAyakaSit",
                scene_id = 3,
                room_id = 0,
                data_index = 3
            },
            {
                id = 1013,
                alias = "Npc1013",
                script = "Actor/Npc/TempNPC",
                pos = "Q1200602FoodAyakaCook",
                scene_id = 3,
                room_id = 0,
                data_index = 4
            }
        }
    }
}

main_id = 10201
local tbl = {}
local n = 1020102
local v = 1020103
local n2 = 1020104
local n3 = 1020105
local n4 = 1020106
local n5 = 1020107
local n6 = 1020108
local n7 = 1020109
local n8 = 1020110
local n9 = 1020111
local n10 = 1020112
local n11 = 1020113
local n12 = 1020114
local n13 = 1020115
local n14 = 1020116
tbl[1] = 1020101
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
tbl[16] = n14
sub_ids = tbl
rewind_data = {}
quest_data = {}

quest_data["1020101"] = {
    npcs = {
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10201KleeSpawn3",
            scene_id = 20031,
            room_id = 1,
            data_index = 1
        },
        {
            id = 10091,
            alias = "Npc10091",
            script = "Actor/Npc/TempNPC",
            pos = "Q1020102AbyssSpawn5",
            scene_id = 20031,
            room_id = 1,
            data_index = 2
        },
        {
            id = 10093,
            alias = "Npc10093",
            script = "Actor/Npc/TempNPC",
            pos = "Q1020102AbyssSpawn6",
            scene_id = 20031,
            room_id = 1,
            data_index = 3
        }
    }
}

quest_data["1020102"] = {
    npcs = {
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10201KleeSpawn3",
            scene_id = 20031,
            room_id = 1,
            data_index = 1
        },
        {
            id = 10091,
            alias = "Npc10091",
            script = "Actor/Npc/TempNPC",
            pos = "Q1020102AbyssSpawn5",
            scene_id = 20031,
            room_id = 1,
            data_index = 2
        },
        {
            id = 10093,
            alias = "Npc10093",
            script = "Actor/Npc/TempNPC",
            pos = "Q1020102AbyssSpawn6",
            scene_id = 20031,
            room_id = 1,
            data_index = 3
        }
    }
}

quest_data["1020103"] = {
    npcs = {
        {
            id = 10091,
            alias = "Npc10091",
            script = "Actor/Npc/TempNPC",
            pos = "Q1020102AbyssSpawn",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q10201AvatarSpawn"}}
}

quest_data["1020114"] = {
    npcs = {
        {
            id = 10091,
            alias = "Npc10091",
            script = "Actor/Npc/TempNPC",
            pos = "Q1020102AbyssSpawn2",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    },
    transmit_points = {
        {point_id = 1, scene_id = 3, pos = "Q10201AvatarSpawn3"},
        {point_id = 2, scene_id = 3, pos = "Q10201AvatarSpawn"}
    }
}

quest_data["1020104"] = {
    npcs = {
        {
            id = 10091,
            alias = "Npc10091",
            script = "Actor/Npc/TempNPC",
            pos = "Q1020102AbyssRoute3",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q10201AvatarSpawn"}}
}

quest_data["1020105"] = {transmit_points = {{point_id = 1, scene_id = 3, pos = "Q10201AvatarSpawn"}}}

quest_data["1020115"] = {
    npcs = {
        {
            id = 10091,
            alias = "Npc10091",
            script = "Actor/Npc/TempNPC",
            pos = "Q1020102AbyssSpawn3",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    },
    transmit_points = {
        {point_id = 1, scene_id = 3, pos = "Q10201AvatarSpawn4"},
        {point_id = 2, scene_id = 3, pos = "Q10201AvatarSpawn"}
    }
}

quest_data["1020106"] = {
    npcs = {
        {
            id = 10091,
            alias = "Npc10091",
            script = "Actor/Npc/TempNPC",
            pos = "Q1020102AbyssRoute6",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q10201AvatarSpawn"}}
}

quest_data["1020107"] = {
    npcs = {
        {
            id = 10091,
            alias = "Npc10091",
            script = "Actor/Npc/TempNPC",
            pos = "Q1020102AbyssSpawn4",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q10201AvatarSpawn"}}
}

quest_data["1020108"] = {
    npcs = {
        {
            id = 10091,
            alias = "Npc10091",
            script = "Actor/Npc/TempNPC",
            pos = "Q1020102AbyssSpawn4",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        },
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10201KleeSpawn3",
            scene_id = 20031,
            room_id = 1,
            data_index = 2
        },
        {
            id = 10093,
            alias = "Npc10093",
            script = "Actor/Npc/TempNPC",
            pos = "Q1020102AbyssSpawn6",
            scene_id = 20031,
            room_id = 1,
            data_index = 3
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q10201AvatarSpawn2"}}
}

quest_data["1020109"] = {
    npcs = {
        {
            id = 10091,
            alias = "Npc10091",
            script = "Actor/Npc/TempNPC",
            pos = "Q1020102AbyssSpawn4",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        },
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10201KleeSpawn3",
            scene_id = 20031,
            room_id = 1,
            data_index = 2
        },
        {
            id = 10093,
            alias = "Npc10093",
            script = "Actor/Npc/TempNPC",
            pos = "Q1020102AbyssSpawn6",
            scene_id = 20031,
            room_id = 1,
            data_index = 3
        }
    }
}

quest_data["1020112"] = {
    npcs = {
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10201KleeSpawn1",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        },
        {
            id = 10091,
            alias = "Npc10091",
            script = "Actor/Npc/TempNPC",
            pos = "Q1020102AbyssSpawn5",
            scene_id = 20031,
            room_id = 1,
            data_index = 2
        },
        {
            id = 10093,
            alias = "Npc10093",
            script = "Actor/Npc/TempNPC",
            pos = "Q1020102AbyssSpawn6",
            scene_id = 20031,
            room_id = 1,
            data_index = 3
        }
    },
    gadgets = {
        {
            id = 70300117,
            pos = "Q10201BombSpawn",
            alias = "Q10201Bomb",
            scene_id = 3,
            room_id = 0,
            is_show_cutscene = false,
            chest_drop_id = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q10201AvatarSpawn"}}
}

quest_data["1020113"] = {
    npcs = {
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10201KleeSpawn2",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        },
        {
            id = 10093,
            alias = "Npc10093",
            script = "Actor/Npc/TempNPC",
            pos = "Q1020102AbyssSpawn6",
            scene_id = 20031,
            room_id = 1,
            data_index = 2
        },
        {
            id = 10091,
            alias = "Npc10091",
            script = "Actor/Npc/TempNPC",
            pos = "Q1020102AbyssSpawn5",
            scene_id = 20031,
            room_id = 1,
            data_index = 3
        }
    },
    transmit_points = {{point_id = 1, scene_id = 3, pos = "Q10201AvatarSpawn2"}}
}

quest_data["1020110"] = {
    npcs = {
        {
            id = 10093,
            alias = "Npc10093",
            script = "Actor/Npc/TempNPC",
            pos = "Q1020102AbyssSpawn6",
            scene_id = 20031,
            room_id = 1,
            data_index = 1
        },
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10201KleeSpawn3",
            scene_id = 20031,
            room_id = 1,
            data_index = 2
        },
        {
            id = 10091,
            alias = "Npc10091",
            script = "Actor/Npc/TempNPC",
            pos = "Q1020102AbyssSpawn5",
            scene_id = 20031,
            room_id = 1,
            data_index = 3
        }
    }
}

quest_data["1020111"] = {
    npcs = {
        {
            id = 10090,
            alias = "Npc10090",
            script = "Actor/Npc/TempNPC",
            pos = "Q10201KleeSpawn3",
            scene_id = 20031,
            room_id = 1,
            data_index = 1
        },
        {
            id = 10091,
            alias = "Npc10091",
            script = "Actor/Npc/TempNPC",
            pos = "Q1020102AbyssSpawn5",
            scene_id = 20031,
            room_id = 1,
            data_index = 2
        },
        {
            id = 10093,
            alias = "Npc10093",
            script = "Actor/Npc/TempNPC",
            pos = "Q1020102AbyssSpawn6",
            scene_id = 20031,
            room_id = 1,
            data_index = 3
        }
    },
    gadgets = {
        {
            id = 70300117,
            pos = "Q10201BombSpawn",
            alias = "Q10201Bomb",
            scene_id = 20031,
            room_id = 1,
            is_show_cutscene = false,
            chest_drop_id = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 20031, pos = "Q10201AvatarSpawn"}}
}

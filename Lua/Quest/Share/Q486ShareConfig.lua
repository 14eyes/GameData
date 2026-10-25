main_id = 486
local tbl = {}
local n = 48602
local v = 48603
local n2 = 48604
local n3 = 48605
local n4 = 48606
local n5 = 48607
local n6 = 48608
local n7 = 48609
local n8 = 48610
local n9 = 48611
local n10 = 48612
local n11 = 48613
local n12 = 48614
local n13 = 48615
tbl[1] = 48601
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
rewind_data = {}
rewind_data["48601"] = {}
rewind_data["48602"] = {}
rewind_data["48603"] = {}

rewind_data["48604"] = {
    npcs = {
        {
            alias = "CatNpc",
            script = "Actor/Npc/TempNPC",
            id = 10031,
            pos = "Q48605NPC",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

rewind_data["48605"] = {}

rewind_data["48606"] = {
    npcs = {
        {
            alias = "Qin",
            script = "Actor/Npc/TempNPC",
            id = 1006,
            pos = "Q48607Qin",
            scene_id = 1004,
            room_id = 100402,
            data_index = 1
        },
        {
            alias = "CatNpc",
            script = "Actor/Npc/TempNPC",
            id = 10031,
            pos = "Q48605NPC",
            scene_id = 3,
            room_id = 0,
            data_index = 2
        }
    }
}

rewind_data["48607"] = {
    npcs = {
        {
            alias = "Qin",
            script = "Actor/Npc/TempNPC",
            id = 1006,
            pos = "Q48607Qin",
            scene_id = 1004,
            room_id = 100402,
            data_index = 0
        }
    }
}

rewind_data["48608"] = {}

rewind_data["48610"] = {
    npcs = {
        {
            alias = "CatNpc",
            script = "Actor/Npc/TempNPC",
            id = 10031,
            pos = "Q48701NPC",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    }
}

quest_data = {}

quest_data["48603"] = {
    npcs = {
        {
            alias = "NPC10030",
            script = "Actor/Npc/TempNPC",
            id = 10030,
            pos = "Q48603Npc",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["48604"] = {
    npcs = {
        {
            alias = "CatNpc",
            script = "Actor/Npc/TempNPC",
            id = 10031,
            pos = "Q48605NPC",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        }
    }
}

quest_data["48605"] = {
    npcs = {
        {
            alias = "CatNpc",
            script = "Actor/Npc/TempNPC",
            id = 10031,
            pos = "Q48605NPC",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "CatNpc",
            script = "Actor/Npc/TempNPC",
            id = 10031,
            pos = "Q48701NPC",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    }
}

quest_data["48606"] = {
    npcs = {
        {
            alias = "Qin",
            script = "Actor/Npc/TempNPC",
            id = 1006,
            pos = "Q48607Qin",
            scene_id = 1004,
            room_id = 100402,
            data_index = 0
        },
        {
            alias = "Barbara",
            script = "Actor/Npc/TempNPC",
            id = 1008,
            pos = "Q48608Babara",
            scene_id = 1008,
            room_id = 1,
            data_index = 0
        }
    }
}

quest_data["48607"] = {
    npcs = {
        {
            alias = "CatNpc",
            script = "Actor/Npc/TempNPC",
            id = 10031,
            pos = "Q48701NPC",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Qin",
            script = "Actor/Npc/TempNPC",
            id = 1006,
            pos = "Q48607Qin",
            scene_id = 1004,
            room_id = 100402,
            data_index = 0
        },
        {
            alias = "Barbara",
            script = "Actor/Npc/TempNPC",
            id = 1008,
            pos = "Q48608Babara",
            scene_id = 1008,
            room_id = 1,
            data_index = 0
        }
    }
}

quest_data["48608"] = {
    npcs = {
        {
            alias = "Barbara",
            script = "Actor/Npc/TempNPC",
            id = 1008,
            pos = "Q48608Babara",
            scene_id = 1008,
            room_id = 1,
            data_index = 0
        }
    },
    transmit_points = {{point_id = 1, scene_id = 1008, pos = "Q48608Player"}}
}

quest_data["48609"] = {
    npcs = {
        {
            alias = "Gaia",
            script = "Actor/Npc/TempNPC",
            id = 1004,
            pos = "Q48610KaeyaLeave",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "Barbara",
            script = "Actor/Npc/TempNPC",
            id = 1008,
            pos = "Q48608Babara",
            scene_id = 1008,
            room_id = 1,
            data_index = 0
        }
    }
}

quest_data["48610"] = {
    npcs = {
        {
            alias = "Gaia",
            script = "Actor/Npc/TempNPC",
            id = 1004,
            pos = "Q48610KaeyaLeave",
            scene_id = 3,
            room_id = 0,
            data_index = 0
        },
        {
            alias = "CatNpc",
            script = "Actor/Npc/TempNPC",
            id = 10031,
            pos = "Q48701NPC",
            scene_id = 3,
            room_id = 0,
            data_index = 1
        }
    }
}

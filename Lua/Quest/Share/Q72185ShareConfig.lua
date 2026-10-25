main_id = 72185
local tbl = {}
local n = 7218502
local v = 7218503
local n2 = 7218504
local n3 = 7218505
tbl[1] = 7218501
tbl[2] = n
tbl[3] = v
tbl[4] = n2
tbl[5] = n3
sub_ids = tbl
finish_action = {CLIENT = {}, SERVER = {}}
fail_action = {CLIENT = {}, SERVER = {}}
cancel_action = {CLIENT = {}, SERVER = {}}

rewind_data = {
    ["7218501"] = {},
    ["7218502"] = {
        npcs = {
            {
                id = 3044,
                alias = "Npc3044",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200601FoodOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7218503"] = {
        npcs = {
            {
                id = 3044,
                alias = "Npc3044",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200601FoodOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3024,
                alias = "Npc3024",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7218502Matsumoto",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7218504"] = {
        npcs = {
            {
                id = 3044,
                alias = "Npc3044",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200601FoodOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3024,
                alias = "Npc3024",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7218502Matsumoto",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7218505"] = {
        npcs = {
            {
                id = 3044,
                alias = "Npc3044",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200601FoodOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3024,
                alias = "Npc3024",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7218502Matsumoto",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    }
}

quest_data = {
    ["7218501"] = {
        npcs = {
            {
                id = 3044,
                alias = "Npc3044",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200601FoodOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            }
        }
    },
    ["7218502"] = {
        npcs = {
            {
                id = 3044,
                alias = "Npc3044",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q1200601FoodOwner",
                scene_id = 3,
                room_id = 0,
                data_index = 1
            },
            {
                id = 3024,
                alias = "Npc3024",
                script = "Actor/Npc/NpcFSMBehaviour",
                pos = "Q7218502Matsumoto",
                scene_id = 3,
                room_id = 0,
                data_index = 2
            }
        }
    },
    ["7218503"] = {},
    ["7218504"] = {},
    ["7218505"] = {}
}

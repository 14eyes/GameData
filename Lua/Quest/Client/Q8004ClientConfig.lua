return {
    MainID = 8004,
    ActorAlias = "8004",
    SubIDs = {
        q800401 = 800401,
        q800402 = 800402,
        q800407 = 800407,
        q800406 = 800406,
        q800403 = 800403,
        q800405 = 800405,
        q800404 = 800404
    },
    Npcs = {
        Npc2078Data = {
            id = 2078,
            alias = "Npc2078",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc12423Data = {
            id = 12423,
            alias = "Npc12423",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1022Data = {
            id = 1022,
            alias = "Npc1022",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc12427Data = {
            id = 12427,
            alias = "Npc12427",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        Q800403_TriggerIn = {
            alias = "Q800403_TriggerIn",
            script = "Actor/Gadget/Q800403_TriggerIn",
            id = 70900002,
            point = sceneData:GetDummyPoint(6, "Q800403_guide_Door")
        },
        Q800404_TriggerIn = {
            alias = "Q800404_TriggerIn",
            script = "Actor/Gadget/Q800404_TriggerIn",
            id = 70900002,
            point = sceneData:GetDummyPoint(6, "Q800403_guide")
        },
        NarratorWithId_800401 = {narratorId = 800401, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
    }
}

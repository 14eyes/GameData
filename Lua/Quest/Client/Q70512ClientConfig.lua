return {
    MainID = 70512,
    ActorAlias = "70512",
    SubIDs = {
        q7051201 = 7051201,
        q7051203 = 7051203,
        q7051204 = 7051204,
        q7051205 = 7051205,
        q7051206 = 7051206,
        q7051207 = 7051207,
        q7051202 = 7051202
    },
    Npcs = {
        Npc1531Data = {
            id = 1531,
            alias = "Npc1531",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc30192Data = {
            id = 30192,
            alias = "Npc30192",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1529Data = {
            id = 1529,
            alias = "Npc1529",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        NarratorWithId_7051201 = {narratorId = 7051201, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        Q7051201_TriggerIn = {
            alias = "Q7051201_TriggerIn",
            script = "Actor/Gadget/Q7051201_TriggerIn",
            id = 3,
            point = sceneData:GetDummyPoint(3, "Q7051202_N1531")
        },
        Q7051203_TriggerIn = {
            alias = "Q7051203_TriggerIn",
            script = "Actor/Gadget/Q7051203_TriggerIn",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q7051203_guide")
        },
        NarratorWithId_7051202 = {narratorId = 7051202, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        Q7051205_TriggerIn = {
            alias = "Q7051205_TriggerIn",
            script = "Actor/Gadget/Q7051205_TriggerIn",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q7051205_guide")
        }
    }
}

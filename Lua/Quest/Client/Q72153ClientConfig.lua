return {
    MainID = 72153,
    ActorAlias = "72153",
    SubIDs = {
        q7215301 = 7215301,
        q7215302 = 7215302,
        q7215303 = 7215303,
        q7215304 = 7215304,
        q7215305 = 7215305,
        q7215306 = 7215306,
        q7215307 = 7215307,
        q7215308 = 7215308,
        q7215309 = 7215309,
        q7215310 = 7215310,
        q7215311 = 7215311,
        q7215312 = 7215312,
        q7215313 = 7215313,
        q7215314 = 7215314,
        q7215315 = 7215315,
        q7215316 = 7215316
    },
    Npcs = {
        NPC20088Data = {
            id = 20088,
            alias = "NPC20088",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc3082Data = {
            id = 3082,
            alias = "Npc3082",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc3077Data = {
            id = 3077,
            alias = "Npc3077",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc3080Data = {
            id = 3080,
            alias = "Npc3080",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        Walk1 = {sceneData:GetDummyPoint(3, "Q72153_ailani2").pos},
        Walk2 = {sceneData:GetDummyPoint(3, "Q72153_ailani3").pos},
        Walk3 = {
            sceneData:GetDummyPoint(3, "Q72153_ailani3").pos,
            sceneData:GetDummyPoint(3, "Q72153_ailani4").pos,
            sceneData:GetDummyPoint(3, "Q72153_ailani5").pos
        },
        KaicheA = {narratorId = 7215301, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        KaicheB = {narratorId = 7215302, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        KaicheC = {narratorId = 7215303, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        Kaiche11 = {
            {dialogID = 721539901, audioEvtName = "", duration = 3},
            {dialogID = 721539902, audioEvtName = "", duration = 3}
        },
        Kaiche22 = {{dialogID = 721539903, audioEvtName = "", duration = 4}},
        Kaiche33 = {
            {dialogID = 721539904, audioEvtName = "", duration = 3},
            {dialogID = 721539905, audioEvtName = "", duration = 3}
        }
    }
}

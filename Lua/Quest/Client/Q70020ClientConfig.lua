return {
    MainID = 70020,
    ActorAlias = "70020",
    SubIDs = {q7002001 = 7002001, q7002002 = 7002002, q7002003 = 7002003},
    Npcs = {
        Npc11008Data = {
            id = 11008,
            alias = "Npc11008",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc156501Data = {
            id = 156501,
            alias = "Npc156501",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        NarratorWithId = {narratorId = 7002001, pauseLen = 10, resumeLen = 5, tag = "Story"},
        Q70020Trigger_ = {
            alias = "Q70020Trigger",
            script = "Actor/Gadget/Q70020Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q7001901guild")
        },
        NarratorWithId2 = {narratorId = 7002002, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false},
        Q700201Trigger_ = {
            alias = "Q700201Trigger",
            script = "Actor/Gadget/Q700201Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q7002001qiuqiu")
        }
    }
}

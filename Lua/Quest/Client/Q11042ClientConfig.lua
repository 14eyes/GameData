return {
    MainID = 11042,
    ActorAlias = "11042",
    SubIDs = {
        q1104201 = 1104201,
        q1104202 = 1104202,
        q1104203 = 1104203,
        q1104204 = 1104204,
        q1104208 = 1104208,
        q1104209 = 1104209,
        q1104212 = 1104212,
        q1104213 = 1104213,
        q1104214 = 1104214,
        q1104215 = 1104215,
        q1104210 = 1104210,
        q1104211 = 1104211,
        q1104205 = 1104205,
        q1104206 = 1104206,
        q1104216 = 1104216,
        q1104207 = 1104207
    },
    Npcs = {
        Npc1018Data = {
            id = 1018,
            alias = "Npc1018",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc158701Data = {
            id = 158701,
            alias = "Npc158701",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Gadgets = {
        DrugData = {
            id = 70710229,
            alias = "DrugAlbedo",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Stonemark01 = {
            id = 70300118,
            alias = "Stonemark01",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Stonemark02 = {
            id = 70300118,
            alias = "Stonemark02",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Stonemark03 = {
            id = 70300118,
            alias = "Stonemark03",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Stonemark04 = {
            id = 70300118,
            alias = "Stonemark04",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Stonemark05 = {
            id = 70300118,
            alias = "Stonemark05",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        NarratorCollect = {narratorId = 1104204, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        NarratorDrink = {narratorId = 1104206, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        NarratorCollect1 = {narratorId = 1104202, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        NarratorCollect2 = {narratorId = 1104203, pauseLen = 10, resumeLen = 5, tag = "StoryCut"},
        Q1104205Trigger_ = {
            alias = "Q1104205Trigger",
            script = "Actor/Gadget/Q1104205Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q11042Albedo3")
        },
        Q1104201Trigger_ = {
            alias = "Q1104201Trigger",
            script = "Actor/Gadget/Q1104201Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q11042Albedo1")
        }
    }
}

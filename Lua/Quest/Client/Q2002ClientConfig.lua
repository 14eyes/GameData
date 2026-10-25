return {
    MainID = 2002,
    ActorAlias = "2002",
    SubIDs = {
        q200202 = 200202,
        q200203 = 200203,
        q200213 = 200213,
        q200204 = 200204,
        q200201 = 200201,
        q200205 = 200205,
        q200206 = 200206,
        q200207 = 200207,
        q200208 = 200208,
        q200209 = 200209,
        q200210 = 200210,
        q200211 = 200211,
        q200212 = 200212
    },
    Npcs = {
        Npc1031Data = {
            id = 1031,
            alias = "Npc1031",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc1032Data = {
            id = 1032,
            alias = "Npc1032",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc10414Data = {
            id = 10414,
            alias = "Npc10414",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc214301Data = {
            id = 214301,
            alias = "Npc214301",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc10419Data = {
            id = 10419,
            alias = "Npc10419",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc10420Data = {
            id = 10420,
            alias = "Npc10420",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Gadgets = {
        Gadget70710357Data = {
            id = 70710357,
            alias = "Gadget70710357",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Gadget70710358Data = {
            id = 70710358,
            alias = "Gadget70710358",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Gadget70710386Data = {
            id = 70710386,
            alias = "Gadget70710386",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    },
    Datas = {
        NarratorWithId01 = {narratorId = 200201, pauseLen = 10, resumeLen = 5, tag = "Story"},
        NarratorWithId02 = {narratorId = 200202, pauseLen = 10, resumeLen = 5, tag = "Story"},
        NarratorWithId03 = {narratorId = 200203, pauseLen = 10, resumeLen = 5, tag = "Story"},
        NarratorWithId04 = {narratorId = 200204, pauseLen = 10, resumeLen = 5, tag = "Story"},
        NarratorWithId05 = {narratorId = 200205, pauseLen = 10, resumeLen = 5, tag = "Story"},
        Q200205Trigger_ = {
            alias = "Q200205Trigger",
            script = "Actor/Gadget/Q200205Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q200205Target")
        },
        Q200207Trigger_ = {
            alias = "Q200207Trigger",
            script = "Actor/Gadget/Q200207Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q200207Target")
        },
        Q200201Trigger_ = {
            alias = "Q200201Trigger",
            script = "Actor/Gadget/Q200201Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q200201Trigger")
        },
        Q200202Trigger_ = {
            alias = "Q200202Trigger",
            script = "Actor/Gadget/Q200202Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q200011Trigger")
        },
        Q200209Trigger_ = {
            alias = "Q200209Trigger",
            script = "Actor/Gadget/Q200209Trigger",
            id = 70900002,
            point = sceneData:GetDummyPoint(3, "Q200209Npc")
        }
    }
}

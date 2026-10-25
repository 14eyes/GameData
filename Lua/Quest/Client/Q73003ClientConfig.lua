local Q73003ClientConfig = {
    MainID = 73003,
    ActorAlias = "73003",
    SubIDs = {
        q7300301 = 7300301,
        q7300302 = 7300302,
        q7300303 = 7300303,
        q7300317 = 7300317,
        q7300304 = 7300304,
        q7300310 = 7300310,
        q7300311 = 7300311,
        q7300315 = 7300315,
        q7300316 = 7300316,
        q7300312 = 7300312,
        q7300305 = 7300305,
        q7300306 = 7300306,
        q7300313 = 7300313,
        q7300314 = 7300314,
        q7300307 = 7300307,
        q7300308 = 7300308,
        q7300309 = 7300309
    },
    Npcs = {
        Npc4198Data = {
            id = 4198,
            alias = "Npc4198",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20594Data = {
            id = 20594,
            alias = "Npc20594",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20593Data = {
            id = 20593,
            alias = "Npc20593",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        PaimonData = {
            id = 1005,
            alias = "Paimon",
            script = "Actor/Quest/Q352/Paimon",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20647Data = {
            id = 20647,
            alias = "Npc20647",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20758Data = {
            id = 20758,
            alias = "Npc20758",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20759Data = {
            id = 20759,
            alias = "Npc20759",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc20813Data = {
            id = 20813,
            alias = "Npc20813",
            script = "Actor/Npc/TempNPC",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        },
        Npc4327Data = {
            id = 4327,
            alias = "Npc4327",
            script = "Actor/Npc/NpcFSMBehaviour",
            point = {pos = {x = 0, y = 0, z = 0}, rot = {x = 0, y = 0, z = 0}}
        }
    }
}

local datas = {
    NarratorTable1_ranaHint1 = {
        {dialogID = 730039901, audioEvtName = "", duration = 3},
        {dialogID = 730039902, audioEvtName = "", duration = 3}
    },
    NarratorTable2_ranaHint2 = {
        {dialogID = 730039903, audioEvtName = "", duration = 3},
        {dialogID = 730039904, audioEvtName = "", duration = 3}
    },
    NarratorTable5_ranaHint5 = {
        {dialogID = 730039909, audioEvtName = "", duration = 4},
        {dialogID = 730039910, audioEvtName = "", duration = 4}
    },
    NarratorTable6_PaimonHint1 = {{dialogID = 730039911, audioEvtName = "", duration = 4}},
    NarratorTable7_PaimonHint2 = {
        {dialogID = 730039912, audioEvtName = "", duration = 4},
        {dialogID = 730039913, audioEvtName = "", duration = 4},
        {dialogID = 730039914, audioEvtName = "", duration = 4}
    },
    NarratorTable8_PaimonHint3 = {{dialogID = 730039915, audioEvtName = "", duration = 4}},
    NarratorTable9_PaimonHint4 = {{dialogID = 730039916, audioEvtName = "", duration = 3}},
    NarratorTable10_PaimonHint5 = {{dialogID = 730039917, audioEvtName = "", duration = 4}},
    NarratorTable3_ranaHint3 = {
        {dialogID = 730039905, audioEvtName = "", duration = 3},
        {dialogID = 730039906, audioEvtName = "", duration = 3},
        {dialogID = 730039907, audioEvtName = "", duration = 3}
    },
    NarratorTable4_ranaHint4 = {{dialogID = 730039908, audioEvtName = "", duration = 3}}
}

local narratorWithId = {narratorId = 730039909, pauseLen = 10, resumeLen = 5, tag = "Story", startCheckPause = false}
local durationList = {}
local n = 5
durationList[1] = 3
durationList[2] = n
narratorWithId.durationList = durationList
datas.NarratorWithId = narratorWithId
datas.TextmapId = {"Quest_Black_Q730003"}
Q73003ClientConfig.Datas = datas
return Q73003ClientConfig

require("Actor/ActorCommon")

local Q413Config = {
    MainID = 413,
    ActorAlias = "413",
    ItemPoisonID = 100107,
    SubIDs = {
        q41300 = 41300,
        q41301 = 41301,
        q41302 = 41302,
        q41303 = 41303,
        q41304 = 41304,
        q41305 = 41305,
        q41306 = 41306,
        q41307 = 41307,
        q41308 = 41308,
        q41309 = 41309,
        q41310 = 41310,
        q41311 = 41311,
        q41312 = 41312,
        q41313 = 41313,
        q41314 = 41314,
        q41315 = 41315,
        q41316 = 41316,
        q41317 = 41317,
        q41318 = 41318
    },
    LisaData = {
        Lisa = "Lisa",
        LisaScript = "Actor/Quest/Q411/Lisa",
        LisaID = 1007,
        bornPos = sceneData:GetDummyPoint(3, "Q411LisaBorn").pos,
        bornDir = sceneData:GetDummyPoint(3, "Q411LisaBorn").rot
    },
    PaimonData = {Paimon = "Paimon", PaimonScript = "Actor/Quest/Q352/Paimon", PaimonID = 1005},
    BarbaraData = {
        Barbara = "Barbara",
        BarbaraScript = "Actor/Quest/Q413/Barbara",
        BarbaraID = 1008,
        bornPos = sceneData:GetDummyPoint(3, "Q413BarbaraBorn").pos,
        bornDir = sceneData:GetDummyPoint(3, "Q413BarbaraBorn").rot,
        hidePos = sceneData:GetDummyPoint(3, "Q413BarbaraHide").pos,
        hideDir = sceneData:GetDummyPoint(3, "Q413BarbaraHide").rot,
        livePos = sceneData:GetDummyPoint(20006, "Q413BabaraLive").pos,
        liveDir = sceneData:GetDummyPoint(20006, "Q413BabaraLive").rot,
        vanishPos = sceneData:GetDummyPoint(20006, "Q413BabaraVanish").pos,
        BeFollowLen = 10,
        BeFollowFailedLen = 50
    },
    PastorData = {
        Pastor = "Pastor",
        PastorScript = "Actor/Quest/Q413/Pastor",
        PastorID = 1108,
        bornPos = sceneData:GetDummyPoint(3, "Q413PastorBorn").pos,
        bornDir = sceneData:GetDummyPoint(3, "Q413PastorBorn").rot,
        showPos = sceneData:GetDummyPoint(3, "Q413PastorReport").pos,
        showDir = sceneData:GetDummyPoint(3, "Q413PastorReport").rot
    },
    CaptainData = {
        Captain = "Captain",
        CaptainScript = "Actor/Quest/Q413/Captain",
        CaptainID = 1109,
        CaptainPos = sceneData:GetDummyPoint(20006, "Q413Captain").pos,
        CaptainDir = sceneData:GetDummyPoint(20006, "Q413Captain").rot
    }
}

local soldierData = {Soldier = "Soldier", SoldierScript = "Actor/Quest/Q413/Soldier"}
local soldierIDs = {}
local n = 1111
local v = 1112
local n2 = 1113
local n3 = 1114
local n4 = 1115
soldierIDs[1] = 1110
soldierIDs[2] = n
soldierIDs[3] = v
soldierIDs[4] = n2
soldierIDs[5] = n3
soldierIDs[6] = n4
soldierData.SoldierIDs = soldierIDs

soldierData.SoldierPos = {
    sceneData:GetDummyPoint(20006, "Q413InjurySoldier1").pos,
    sceneData:GetDummyPoint(20006, "Q413InjurySoldier2").pos,
    sceneData:GetDummyPoint(20006, "Q413InjurySoldier3").pos,
    sceneData:GetDummyPoint(20006, "Q413WaitSoldier1").pos,
    sceneData:GetDummyPoint(20006, "Q413WaitSoldier2").pos,
    sceneData:GetDummyPoint(20006, "Q413WaitSoldier3").pos
}

soldierData.SoldierDir = {
    sceneData:GetDummyPoint(20006, "Q413InjurySoldier1").rot,
    sceneData:GetDummyPoint(20006, "Q413InjurySoldier2").rot,
    sceneData:GetDummyPoint(20006, "Q413InjurySoldier3").rot,
    sceneData:GetDummyPoint(20006, "Q413WaitSoldier1").rot,
    sceneData:GetDummyPoint(20006, "Q413WaitSoldier2").rot,
    sceneData:GetDummyPoint(20006, "Q413WaitSoldier3").rot
}

Q413Config.SoldierData = soldierData

Q413Config.NarratorFlow1 = {
    {dialogID = 4130501, audioEvtName = "", duration = 4},
    {dialogID = 4130502, audioEvtName = "", duration = 4}
}

Q413Config.NarratorFlow2 = {
    {dialogID = 4132501, audioEvtName = "", duration = 4},
    {dialogID = 4132502, audioEvtName = "", duration = 4},
    {dialogID = 4132503, audioEvtName = "", duration = 4}
}

Q413Config.NoReplyInter = {
    {
        {
            type = InteractionType.DIALOG,
            dialogType = DialogType.LOCK_FRAME,
            talkerName = "\232\138\173\232\138\173\230\139\137",
            content = "\230\136\145\229\133\136\229\142\187\228\186\134\239\188\140\228\189\160\228\185\159\229\191\171\230\157\165"
        }
    }
}

return Q413Config

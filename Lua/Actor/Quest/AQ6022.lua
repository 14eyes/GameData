require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6022 = class("Quest6022", QuestActorProxy)
Quest6022.defaultAlias = "Quest6022"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest6022:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest6022:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["602201"] = self.OnSubStart602201,
        ["602202"] = self.OnSubStart602202,
        ["602203"] = self.OnSubStart602203,
        ["602204"] = self.OnSubStart602204,
        ["602205"] = self.OnSubStart602205,
        ["602206"] = self.OnSubStart602206,
        ["602207"] = self.OnSubStart602207,
        ["602208"] = self.OnSubStart602208,
        ["602209"] = self.OnSubStart602209,
        ["602210"] = self.OnSubStart602210,
        ["602240"] = self.OnSubStart602240,
        ["602234"] = self.OnSubStart602234,
        ["602235"] = self.OnSubStart602235,
        ["602233"] = self.OnSubStart602233,
        ["602241"] = self.OnSubStart602241,
        ["602211"] = self.OnSubStart602211,
        ["602242"] = self.OnSubStart602242,
        ["602212"] = self.OnSubStart602212,
        ["602213"] = self.OnSubStart602213,
        ["602214"] = self.OnSubStart602214,
        ["602215"] = self.OnSubStart602215,
        ["602216"] = self.OnSubStart602216,
        ["602217"] = self.OnSubStart602217,
        ["602218"] = self.OnSubStart602218,
        ["602243"] = self.OnSubStart602243,
        ["602219"] = self.OnSubStart602219,
        ["602220"] = self.OnSubStart602220,
        ["602221"] = self.OnSubStart602221,
        ["602244"] = self.OnSubStart602244,
        ["602222"] = self.OnSubStart602222,
        ["602223"] = self.OnSubStart602223,
        ["602245"] = self.OnSubStart602245,
        ["602224"] = self.OnSubStart602224,
        ["602225"] = self.OnSubStart602225,
        ["602246"] = self.OnSubStart602246,
        ["602226"] = self.OnSubStart602226,
        ["602247"] = self.OnSubStart602247,
        ["602236"] = self.OnSubStart602236,
        ["602227"] = self.OnSubStart602227,
        ["602237"] = self.OnSubStart602237,
        ["602238"] = self.OnSubStart602238,
        ["602228"] = self.OnSubStart602228,
        ["602229"] = self.OnSubStart602229,
        ["602230"] = self.OnSubStart602230,
        ["602231"] = self.OnSubStart602231,
        ["602248"] = self.OnSubStart602248
    }
end

function Quest6022:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["602201"] = self.OnSubFinish602201,
        ["602202"] = self.OnSubFinish602202,
        ["602203"] = self.OnSubFinish602203,
        ["602204"] = self.OnSubFinish602204,
        ["602205"] = self.OnSubFinish602205,
        ["602206"] = self.OnSubFinish602206,
        ["602207"] = self.OnSubFinish602207,
        ["602208"] = self.OnSubFinish602208,
        ["602209"] = self.OnSubFinish602209,
        ["602210"] = self.OnSubFinish602210,
        ["602240"] = self.OnSubFinish602240,
        ["602234"] = self.OnSubFinish602234,
        ["602235"] = self.OnSubFinish602235,
        ["602233"] = self.OnSubFinish602233,
        ["602241"] = self.OnSubFinish602241,
        ["602211"] = self.OnSubFinish602211,
        ["602242"] = self.OnSubFinish602242,
        ["602212"] = self.OnSubFinish602212,
        ["602213"] = self.OnSubFinish602213,
        ["602214"] = self.OnSubFinish602214,
        ["602215"] = self.OnSubFinish602215,
        ["602216"] = self.OnSubFinish602216,
        ["602217"] = self.OnSubFinish602217,
        ["602218"] = self.OnSubFinish602218,
        ["602243"] = self.OnSubFinish602243,
        ["602219"] = self.OnSubFinish602219,
        ["602220"] = self.OnSubFinish602220,
        ["602221"] = self.OnSubFinish602221,
        ["602244"] = self.OnSubFinish602244,
        ["602222"] = self.OnSubFinish602222,
        ["602223"] = self.OnSubFinish602223,
        ["602245"] = self.OnSubFinish602245,
        ["602224"] = self.OnSubFinish602224,
        ["602225"] = self.OnSubFinish602225,
        ["602246"] = self.OnSubFinish602246,
        ["602226"] = self.OnSubFinish602226,
        ["602247"] = self.OnSubFinish602247,
        ["602236"] = self.OnSubFinish602236,
        ["602227"] = self.OnSubFinish602227,
        ["602237"] = self.OnSubFinish602237,
        ["602238"] = self.OnSubFinish602238,
        ["602228"] = self.OnSubFinish602228,
        ["602229"] = self.OnSubFinish602229,
        ["602230"] = self.OnSubFinish602230,
        ["602231"] = self.OnSubFinish602231,
        ["602248"] = self.OnSubFinish602248
    }
end

function Quest6022:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["602202"] = self.OnSubFailed602202,
        ["602204"] = self.OnSubFailed602204,
        ["602205"] = self.OnSubFailed602205,
        ["602206"] = self.OnSubFailed602206,
        ["602207"] = self.OnSubFailed602207,
        ["602208"] = self.OnSubFailed602208,
        ["602209"] = self.OnSubFailed602209,
        ["602210"] = self.OnSubFailed602210,
        ["602234"] = self.OnSubFailed602234,
        ["602235"] = self.OnSubFailed602235,
        ["602211"] = self.OnSubFailed602211,
        ["602212"] = self.OnSubFailed602212,
        ["602213"] = self.OnSubFailed602213,
        ["602214"] = self.OnSubFailed602214,
        ["602215"] = self.OnSubFailed602215,
        ["602216"] = self.OnSubFailed602216,
        ["602217"] = self.OnSubFailed602217,
        ["602218"] = self.OnSubFailed602218,
        ["602220"] = self.OnSubFailed602220,
        ["602221"] = self.OnSubFailed602221,
        ["602222"] = self.OnSubFailed602222,
        ["602223"] = self.OnSubFailed602223,
        ["602224"] = self.OnSubFailed602224,
        ["602225"] = self.OnSubFailed602225,
        ["602226"] = self.OnSubFailed602226,
        ["602227"] = self.OnSubFailed602227,
        ["602238"] = self.OnSubFailed602238,
        ["602229"] = self.OnSubFailed602229,
        ["602230"] = self.OnSubFailed602230,
        ["602231"] = self.OnSubFailed602231
    }
end

function Quest6022:Start()
    print("Start")
end

function Quest6022:OnDestroy()
    print("OnDestroy")
end

function Quest6022:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6022:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6022:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6022:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q602201Trigger")
    this:ActorDestroy("Q602203Trigger")
    this:ActorDestroy("Q602208Trigger")
    this:ActorDestroy("Q602216Trigger")
    this:ActorDestroy("Q602219Trigger")
    this:ActorDestroy("Q602228Trigger")
    this:ActorDestroy("Q602232Trigger")
    this:ActorDestroy("Q602237Trigger")
    this:ActorDestroy("Q602240Trigger")
    this:ActorDestroy("Q602233Trigger")
    this:ActorDestroy("Q602241Trigger")
    this:ActorDestroy("Q602242Trigger")
    this:ActorDestroy("Q602243Trigger")
    this:ActorDestroy("Q602245Trigger")
    this:ActorDestroy("Q602244Trigger")
    this:ActorDestroy("Q602246Trigger")
    this:ActorDestroy("Q602247Trigger")
    this:ActorDestroy("Q602236Trigger")
    this:ActorDestroy("Q602248Trigger")
    this:ActorDestroy("Q602203Trigger_Transmit")
    this:ActorDestroy("Q602241Trigger_Transmit")
    this:ActorDestroy("Q602242Trigger_Transmit")
    this:ActorDestroy("Q602236Trigger_Transmit")
    this:ActorDestroy("Q602237Trigger_Transmit")
    this:ActorDestroy("Q602228Trigger_Transmit")
    this:ActorDestroy("Q602248Trigger_Transmit")
    this:ActorDestroy("Q602219Trigger_Transmit")
    this:ActorDestroy("Q602225Trigger")
    this:ActorDestroy("Q602219Trigger_Transmit2")
    this:ActorDestroy("Q602220Trigger_Transmit")
    this:ActorDestroy("Q602221Trigger_Destroy")
    this:ActorDestroy("Q602201Trigger_Transmit")
    this:ActorDestroy("Q602201Trigger_Transmit_1")
end

function Quest6022:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest6022:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest6022:NpcCreateWithNoBlackData(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    this:CreateNoBlackTalkTriggerWithNpc("Q" .. arg1 .. "N" .. arg3 .. "Trigger", arg1, arg2, arg3, arg4, arg5, arg6, arg7)
end

function Quest6022:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest6022:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest6022:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest6022:SetExitDungeonUIFunc()
    actorUtils.SetOperationCardProgress(11)
end

function Quest6022:CancleExitDungeonUIFunc()
    actorUtils.HideOperationCard()
end

function Quest6022:GolumbiaMainPageControl(arg1)
    this:DisableMainPageWithConfigByQuest(arg1, "DisableNodKraiAQ6022GolumbiaHide")
end

function Quest6022:PlayerMainPageControl(arg1)
    this:DisableMainPageWithConfigByQuest(arg1, "DisableNodKraiAQ6022PlayerHide")
end

function Quest6022:OthersMainPageControl(arg1)
    this:DisableMainPageWithConfigByQuest(arg1, "DisableNodKraiAQ6022Others")
    actorUtils.BanUIByQuest(4, arg1, 6022)
    actorUtils.BanUIByQuest(16, arg1, 6022)
    actorUtils.BanUIByQuest(27, arg1, 6022)
end

function Quest6022:OnSubStart602201(arg1)
    print("OnSubStart602201")
    if this:GetQuestVar(602201, 0) == 0 then
        actorMgr:CreateActorWithPos("Q602201Trigger_Transmit", "Actor/Gadget/Q602201Trigger_Transmit", 70900002, 0, points._Q602201Trigger_TransmitPoint_.pos, points._Q602201Trigger_TransmitPoint_.rot, true, false, 3)
        actorMgr:CreateActorWithPos("Q602201Trigger_Transmit_1", "Actor/Gadget/Q602201Trigger_Transmit_1", 70900002, 0, points._Q602201Trigger_Transmit_1Point_.pos, points._Q602201Trigger_Transmit_1Point_.rot, true, false, 20322)
    end

    actorMgr:CreateActorWithPos("Q602201Trigger", "Actor/Gadget/Q602201Trigger", 70900002, 0, points._Q602201TriggerPoint_.pos, points._Q602201TriggerPoint_.rot, true, false, 20321)
end

function Quest6022:OnSubFinish602201(arg1)
    print("OnSubFinish602201")
    this:SetNavigationByMainId(6022, true)
    this:ActorDestroy("Q602201Trigger_Transmit")
    this:ActorDestroy("Q602201Trigger_Transmit_1")
end

function Quest6022:OnSubStart602202(arg1)
    print("OnSubStart602202")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc16190.id, 0, 602202, 30, true)
end

function Quest6022:OnSubFinish602202(arg1)
    print("OnSubFinish602202")
    this:NpcDestroyImmediately(20321, npcs.Npc16190.alias)
end

function Quest6022:OnSubFailed602202(arg1)
    print("OnSubFailed602202")
    this:DestroyNpcTrigger("Q602202N16190Trigger")
    this:DestroyQuestNpcActor(npcs.Npc16190.alias, 20321)
    this:RecycleAllRes()
end

function Quest6022:OnSubStart602203(arg1)
    print("OnSubStart602203")
    actorMgr:CreateActorWithPos("Q602203Trigger_Transmit", "Actor/Gadget/Q602203Trigger_Transmit", 70900002, 0, points._Q602203Trigger_TransmitPoint_.pos, points._Q602203Trigger_TransmitPoint_.rot, true, false, 20321)
    actorMgr:CreateActorWithPos("Q602203Trigger", "Actor/Gadget/Q602203Trigger", 70900002, 0, points._Q602203TriggerPoint_.pos, points._Q602203TriggerPoint_.rot, true, false, 20321)
end

function Quest6022:OnSubFinish602203(arg1)
    print("OnSubFinish602203")
    this:ActorDestroy("Q602203Trigger_Transmit")
    this:SetNavigationByMainId(6022, true)
end

function Quest6022:OnSubStart602204(arg1)
    print("OnSubStart602204")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1318.id, 0, 602204, 20, true)
    this:GolumbiaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6022:OnSubFinish602204(arg1)
    print("OnSubFinish602204")
    this:NpcDestroyImmediately(20321, npcs.Npc1318.alias)
end

function Quest6022:OnSubFailed602204(arg1)
    print("OnSubFailed602204")
    this:DestroyNpcTrigger("Q602204N1318Trigger")
    this:DestroyQuestNpcActor(npcs.Npc1318.alias, 20321)
    this:RecycleAllRes()
    this:GolumbiaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6022:OnSubStart602205(arg1)
    print("OnSubStart602205")
    this:DeployStoryByQuest(110602201)
    this:GolumbiaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6022:OnSubFinish602205(arg1)
    print("OnSubFinish602205")
end

function Quest6022:OnSubFailed602205(arg1)
    print("OnSubFailed602205")
    this:CancelStoryByQuest(110602201)
    this:RecycleAllRes()
    this:GolumbiaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6022:OnSubStart602206(arg1)
    print("OnSubStart602206")
    this:DeployStoryByQuest(110602201)
    this:GolumbiaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6022:OnSubFinish602206(arg1)
    print("OnSubFinish602206")
end

function Quest6022:OnSubFailed602206(arg1)
    print("OnSubFailed602206")
    this:CancelStoryByQuest(110602201)
    this:RecycleAllRes()
    this:GolumbiaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6022:OnSubStart602207(arg1)
    print("OnSubStart602207")
    this:DeployStoryByQuest(110602201)
    this:GolumbiaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6022:OnSubFinish602207(arg1)
    print("OnSubFinish602207")
    this:CancelStoryByQuest(110602201)
end

function Quest6022:OnSubFailed602207(arg1)
    print("OnSubFailed602207")
    this:CancelStoryByQuest(110602201)
    this:RecycleAllRes()
    this:GolumbiaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6022:OnSubStart602208(arg1)
    print("OnSubStart602208")
    actorMgr:CreateActorWithPos("Q602208Trigger", "Actor/Gadget/Q602208Trigger", 70900002, 0, points._Q602208TriggerPoint_.pos, points._Q602208TriggerPoint_.rot, true, false, 20321)
    this:DeployStoryByQuest(110602206)
    this:GolumbiaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6022:OnSubFinish602208(arg1)
    print("OnSubFinish602208")
end

function Quest6022:OnSubFailed602208(arg1)
    print("OnSubFailed602208")
    this:ActorDestroy("Q602208Trigger")
    this:CancelStoryByQuest(110602206)
    this:RecycleAllRes()
    this:GolumbiaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6022:OnSubStart602209(arg1)
    print("OnSubStart602209")
    this:DeployStoryByQuest(110602206)
    this:DeployStoryByQuest(110602202)
    this:GolumbiaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6022:OnSubFinish602209(arg1)
    print("OnSubFinish602209")
end

function Quest6022:OnSubFailed602209(arg1)
    print("OnSubFailed602209")
    this:CancelStoryByQuest(110602202)
    this:RecycleAllRes()
    this:GolumbiaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6022:OnSubStart602210(arg1)
    print("OnSubStart602210")
    this:NpcCreateWithNoBlackData(602210, 0, npcs.Npc1315.id, 0, 20, 602210, datas.NoBlackDataNormal)
    this:DeployStoryByQuest(110602206)
    this:DeployStoryByQuest(110602202)
    this:GolumbiaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6022:OnSubFinish602210(arg1)
    print("OnSubFinish602210")
    this:NpcDestroyImmediately(20321, npcs.Npc1315.alias)
    this:CancelStoryByQuest(110602206)
end

function Quest6022:OnSubFailed602210(arg1)
    print("OnSubFailed602210")
    this:DestroyQuestNpcActor(npcs.Npc1315.alias, 20321)
    this:CancelStoryByQuest(110602202)
    this:RecycleAllRes()
    this:GolumbiaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6022:OnSubStart602240(arg1)
    print("OnSubStart602240")
    actorMgr:CreateActorWithPos("Q602240Trigger", "Actor/Gadget/Q602240Trigger", 70900002, 0, points._Q602240TriggerPoint_.pos, points._Q602240TriggerPoint_.rot, true, false, 20321)
end

function Quest6022:OnSubFinish602240(arg1)
    print("OnSubFinish602240")
    this:SetNavigationByMainId(6022, true)
end

function Quest6022:OnSubStart602234(arg1)
    print("OnSubStart602234")
    this:DeployStoryByQuest(110602202)
    this:GolumbiaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6022:OnSubFinish602234(arg1)
    print("OnSubFinish602234")
end

function Quest6022:OnSubFailed602234(arg1)
    print("OnSubFailed602234")
    this:CancelStoryByQuest(110602202)
    this:RecycleAllRes()
    this:GolumbiaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6022:OnSubStart602235(arg1)
    print("OnSubStart602235")
    this:NpcCreateWithNoBlackData(602235, 0, npcs.Npc16190.id, 0, 15, 602235, datas.NoBlackDataNormal)
    this:DeployStoryByQuest(110602202)
    this:GolumbiaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6022:OnSubFinish602235(arg1)
    print("OnSubFinish602235")
    this:NpcDestroyImmediately(20321, npcs.Npc16190.alias)
    this:CancelStoryByQuest(110602202)
    this:GolumbiaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6022:OnSubFailed602235(arg1)
    print("OnSubFailed602235")
    this:DestroyQuestNpcActor(npcs.Npc16190.alias, 20321)
    this:CancelStoryByQuest(110602202)
    this:RecycleAllRes()
    this:GolumbiaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6022:OnSubStart602233(arg1)
    print("OnSubStart602233")
    actorMgr:CreateActorWithPos("Q602233Trigger", "Actor/Gadget/Q602233Trigger", 70900002, 0, points._Q602233TriggerPoint_.pos, points._Q602233TriggerPoint_.rot, true, false, 20321)
end

function Quest6022:OnSubFinish602233(arg1)
    print("OnSubFinish602233")
    this:SetNavigationByMainId(6022, true)
end

function Quest6022:OnSubStart602241(arg1)
    print("OnSubStart602241")
    actorMgr:CreateActorWithPos("Q602241Trigger", "Actor/Gadget/Q602241Trigger", 70900002, 0, points._Q602241TriggerPoint_.pos, points._Q602241TriggerPoint_.rot, true, false, 20321)
    actorMgr:CreateActorWithPos("Q602241Trigger_Transmit", "Actor/Gadget/Q602241Trigger_Transmit", 70900002, 0, points._Q602241Trigger_TransmitPoint_.pos, points._Q602241Trigger_TransmitPoint_.rot, true, false, 20321)
end

function Quest6022:OnSubFinish602241(arg1)
    print("OnSubFinish602241")
    this:CancelStoryByQuest(110602202)
    this:ActorDestroy("Q602241Trigger_Transmit")
    this:SetNavigationByMainId(6022, true)
end

function Quest6022:OnSubStart602211(arg1)
    print("OnSubStart602211")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1316.id, 0, 602211, 20, true)
end

function Quest6022:OnSubFinish602211(arg1)
    print("OnSubFinish602211")
    this:NpcDestroyImmediately(20321, npcs.Npc1316.alias)
end

function Quest6022:OnSubFailed602211(arg1)
    print("OnSubFailed602211")
    this:DestroyNpcTrigger("Q602211N1316Trigger")
    this:DestroyQuestNpcActor(npcs.Npc1316.alias, 20321)
    this:RecycleAllRes()
end

function Quest6022:OnSubStart602242(arg1)
    print("OnSubStart602242")
    actorMgr:CreateActorWithPos("Q602242Trigger", "Actor/Gadget/Q602242Trigger", 70900002, 0, points._Q602242TriggerPoint_.pos, points._Q602242TriggerPoint_.rot, true, false, 20321)
    actorMgr:CreateActorWithPos("Q602242Trigger_Transmit", "Actor/Gadget/Q602242Trigger_Transmit", 70900002, 0, points._Q602242Trigger_TransmitPoint_.pos, points._Q602242Trigger_TransmitPoint_.rot, true, false, 20321)
end

function Quest6022:OnSubFinish602242(arg1)
    print("OnSubFinish602242")
    this:ActorDestroy("Q602242Trigger_Transmit")
    this:SetNavigationByMainId(6022, true)
end

function Quest6022:OnSubStart602212(arg1)
    print("OnSubStart602212")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1318.id, 0, 602212, 15, true)
    this:GolumbiaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6022:OnSubFinish602212(arg1)
    print("OnSubFinish602212")
    this:NpcDestroyImmediately(20321, npcs.Npc1318.alias)
end

function Quest6022:OnSubFailed602212(arg1)
    print("OnSubFailed602212")
    this:DestroyNpcTrigger("Q602212N1318Trigger")
    this:DestroyQuestNpcActor(npcs.Npc1318.alias, 20321)
    this:RecycleAllRes()
    this:GolumbiaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6022:OnSubStart602213(arg1)
    print("OnSubStart602213")
    this:GolumbiaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6022:OnSubFinish602213(arg1)
    print("OnSubFinish602213")
end

function Quest6022:OnSubFailed602213(arg1)
    print("OnSubFailed602213")
    this:RecycleAllRes()
    this:GolumbiaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6022:OnSubStart602214(arg1)
    print("OnSubStart602214")
    this:GolumbiaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6022:OnSubFinish602214(arg1)
    print("OnSubFinish602214")
    this:QuestNarratorTask(datas.NarratorWithId_602207, nil)
end

function Quest6022:OnSubFailed602214(arg1)
    print("OnSubFailed602214")
    this:RecycleAllRes()
    this:GolumbiaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6022:OnSubStart602215(arg1)
    print("OnSubStart602215")
    this:DeployStoryByQuest(110602206)
    this:GolumbiaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6022:OnSubFinish602215(arg1)
    print("OnSubFinish602215")
    this:ClearNarratorTask()
end

function Quest6022:OnSubFailed602215(arg1)
    print("OnSubFailed602215")
    this:RecycleAllRes()
    this:GolumbiaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6022:OnSubStart602216(arg1)
    print("OnSubStart602216")
    actorMgr:CreateActorWithPos("Q602216Trigger", "Actor/Gadget/Q602216Trigger", 70900002, 0, points._Q602216TriggerPoint_.pos, points._Q602216TriggerPoint_.rot, true, false, 20321)
    this:DeployStoryByQuest(110602206)
    this:GolumbiaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6022:OnSubFinish602216(arg1)
    print("OnSubFinish602216")
end

function Quest6022:OnSubFailed602216(arg1)
    print("OnSubFailed602216")
    this:ActorDestroy("Q602216Trigger")
    this:CancelStoryByQuest(110602206)
    this:RecycleAllRes()
    this:GolumbiaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6022:OnSubStart602217(arg1)
    print("OnSubStart602217")
    this:DeployStoryByQuest(110602203)
    this:GolumbiaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6022:OnSubFinish602217(arg1)
    print("OnSubFinish602217")
    this:CancelStoryByQuest(110602206)
end

function Quest6022:OnSubFailed602217(arg1)
    print("OnSubFailed602217")
    this:CancelStoryByQuest(110602203)
    this:RecycleAllRes()
    this:GolumbiaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6022:OnSubStart602218(arg1)
    print("OnSubStart602218")
    this:NpcCreateWithNoBlackData(602218, 0, npcs.Npc16190.id, 0, 35, 602218, datas.NoBlackDataNormal)
    this:DeployStoryByQuest(110602203)
    this:GolumbiaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6022:OnSubFinish602218(arg1)
    print("OnSubFinish602218")
    this:NpcDestroyImmediately(20321, npcs.Npc16190.alias)
    this:CancelStoryByQuest(110602203)
    this:GolumbiaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6022:OnSubFailed602218(arg1)
    print("OnSubFailed602218")
    this:DestroyNpcTrigger("Q602218N16190Trigger")
    this:DestroyQuestNpcActor(npcs.Npc16190.alias, 20321)
    this:CancelStoryByQuest(110602203)
    this:RecycleAllRes()
    this:GolumbiaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6022:OnSubStart602243(arg1)
    print("OnSubStart602243")
    actorMgr:CreateActorWithPos("Q602243Trigger", "Actor/Gadget/Q602243Trigger", 70900002, 0, points._Q602243TriggerPoint_.pos, points._Q602243TriggerPoint_.rot, true, false, 20321)
end

function Quest6022:OnSubFinish602243(arg1)
    print("OnSubFinish602243")
    this:SetNavigationByMainId(6022, true)
end

function Quest6022:OnSubStart602219(arg1)
    print("OnSubStart602219")
    actorMgr:CreateActorWithPos("Q602219Trigger", "Actor/Gadget/Q602219Trigger", 70900002, 0, points._Q602219TriggerPoint_.pos, points._Q602219TriggerPoint_.rot, true, false, 20321)
    actorMgr:CreateActorWithPos("Q602219Trigger_Transmit", "Actor/Gadget/Q602219Trigger_Transmit", 70900002, 0, points._Q602219Trigger_TransmitPoint_.pos, points._Q602219Trigger_TransmitPoint_.rot, true, false, 20321)
    actorMgr:CreateActorWithPos("Q602219Trigger_Transmit2", "Actor/Gadget/Q602219Trigger_Transmit2", 70900002, 0, points._Q602219Trigger_Transmit2Point_.pos, points._Q602219Trigger_Transmit2Point_.rot, true, false, 20321)
end

function Quest6022:OnSubFinish602219(arg1)
    print("OnSubFinish602219")
    this:ActorDestroy("Q602219Trigger_Transmit")
    this:ActorDestroy("Q602219Trigger_Transmit2")
    this:SetNavigationByMainId(6022, true)
end

function Quest6022:OnSubStart602220(arg1)
    print("OnSubStart602220")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc12695.id, 0, 602220, 20, true)
    this:PlayerMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6022:OnSubFinish602220(arg1)
    print("OnSubFinish602220")
    this:NpcDestroyImmediately(20321, npcs.Npc12695.alias)
    actorMgr:CreateActorWithPos("Q602220Trigger_Transmit", "Actor/Gadget/Q602220Trigger_Transmit", 70900002, 0, points._Q602220Trigger_TransmitPoint_.pos, points._Q602220Trigger_TransmitPoint_.rot, true, false, 20321)
end

function Quest6022:OnSubFailed602220(arg1)
    print("OnSubFailed602220")
    this:DestroyNpcTrigger("Q602220N12695Trigger")
    this:DestroyQuestNpcActor(npcs.Npc12695.alias, 20321)
    this:RecycleAllRes()
    this:PlayerMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6022:OnSubStart602221(arg1)
    print("OnSubStart602221")
    this:DeployStoryByQuest(110602204)
    actorMgr:CreateActorWithPos("Q602221Trigger_Destroy", "Actor/Gadget/Q602221Trigger_Destroy", 70900002, 0, points._Q602221Trigger_DestroyPoint_.pos, points._Q602221Trigger_DestroyPoint_.rot, true, false, 20321)
    this:PlayerMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6022:OnSubFinish602221(arg1)
    print("OnSubFinish602221")
    this:ActorDestroy("Q602220Trigger_Transmit")
end

function Quest6022:OnSubFailed602221(arg1)
    print("OnSubFailed602221")
    this:ActorDestroy("Q602221Trigger_Destroy")
    this:CancelStoryByQuest(110602204)
    this:RecycleAllRes()
    this:PlayerMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6022:OnSubStart602244(arg1)
    print("OnSubStart602244")
    actorMgr:CreateActorWithPos("Q602244Trigger", "Actor/Gadget/Q602244Trigger", 70900002, 0, points._Q602244TriggerPoint_.pos, points._Q602244TriggerPoint_.rot, true, false, 20321)
end

function Quest6022:OnSubFinish602244(arg1)
    print("OnSubFinish602244")
    this:SetNavigationByMainId(6022, true)
end

function Quest6022:OnSubStart602222(arg1)
    print("OnSubStart602222")
    this:NpcCreateWithNoBlackData(602222, 0, npcs.Npc12695.id, 0, 39, 602222, datas.NoBlackDataNormal)
    this:DeployStoryByQuest(110602204)
    this:PlayerMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6022:OnSubFinish602222(arg1)
    print("OnSubFinish602222")
    this:NpcDestroyImmediately(20321, npcs.Npc12695.alias)
    this:QuestNarratorTask(datas.NarratorWithId_602214, nil)
end

function Quest6022:OnSubFailed602222(arg1)
    print("OnSubFailed602222")
    this:DestroyQuestNpcActor(npcs.Npc12695.alias, 20321)
    this:CancelStoryByQuest(110602204)
    this:RecycleAllRes()
    this:PlayerMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6022:OnSubStart602223(arg1)
    print("OnSubStart602223")
    this:DeployStoryByQuest(110602204)
    this:PlayerMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6022:OnSubFinish602223(arg1)
    print("OnSubFinish602223")
    this:ClearNarratorTask()
end

function Quest6022:OnSubFailed602223(arg1)
    print("OnSubFailed602223")
    this:CancelStoryByQuest(110602204)
    this:RecycleAllRes()
    this:PlayerMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6022:OnSubStart602245(arg1)
    print("OnSubStart602245")
    actorMgr:CreateActorWithPos("Q602245Trigger", "Actor/Gadget/Q602245Trigger", 70900002, 0, points._Q602245TriggerPoint_.pos, points._Q602245TriggerPoint_.rot, true, false, 20321)
end

function Quest6022:OnSubFinish602245(arg1)
    print("OnSubFinish602245")
    this:SetNavigationByMainId(6022, true)
end

function Quest6022:OnSubStart602224(arg1)
    print("OnSubStart602224")
    this:DeployStoryByQuest(110602204)
    this:PlayerMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6022:OnSubFinish602224(arg1)
    print("OnSubFinish602224")
end

function Quest6022:OnSubFailed602224(arg1)
    print("OnSubFailed602224")
    this:CancelStoryByQuest(110602204)
    this:RecycleAllRes()
    this:PlayerMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6022:OnSubStart602225(arg1)
    print("OnSubStart602225")
    this:DeployStoryByQuest(110602204)
    this:PlayerMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6022:OnSubFinish602225(arg1)
    print("OnSubFinish602225")
end

function Quest6022:OnSubFailed602225(arg1)
    print("OnSubFailed602225")
    this:ActorDestroy("Q602225Trigger")
    this:CancelStoryByQuest(110602204)
    this:RecycleAllRes()
    this:PlayerMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6022:OnSubStart602246(arg1)
    print("OnSubStart602246")
    actorMgr:CreateActorWithPos("Q602246Trigger", "Actor/Gadget/Q602246Trigger", 70900002, 0, points._Q602246TriggerPoint_.pos, points._Q602246TriggerPoint_.rot, true, false, 20321)
end

function Quest6022:OnSubFinish602246(arg1)
    print("OnSubFinish602246")
    this:SetNavigationByMainId(6022, true)
end

function Quest6022:OnSubStart602226(arg1)
    print("OnSubStart602226")
    this:NpcCreateWithNpcTriggerAndBlackscreen(602226, 0, 40, 1, npcs.Npc12695.id)
    this:DeployStoryByQuest(110602204)
    this:PlayerMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6022:OnSubFinish602226(arg1)
    print("OnSubFinish602226")
    this:NpcDestroyImmediately(20321, npcs.Npc12695.alias)
    this:CancelStoryByQuest(110602204)
    this:PlayerMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6022:OnSubFailed602226(arg1)
    print("OnSubFailed602226")
    this:DestroyNpcTrigger("Q602226N12695Trigger")
    this:DestroyQuestNpcActor(npcs.Npc12695.alias, 20321)
    this:CancelStoryByQuest(110602204)
    this:RecycleAllRes()
    this:PlayerMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6022:OnSubStart602247(arg1)
    print("OnSubStart602247")
    actorMgr:CreateActorWithPos("Q602247Trigger", "Actor/Gadget/Q602247Trigger", 70900002, 0, points._Q602247TriggerPoint_.pos, points._Q602247TriggerPoint_.rot, true, false, 20321)
end

function Quest6022:OnSubFinish602247(arg1)
    print("OnSubFinish602247")
    this:SetNavigationByMainId(6022, true)
end

function Quest6022:OnSubStart602236(arg1)
    print("OnSubStart602236")
    actorMgr:CreateActorWithPos("Q602236Trigger", "Actor/Gadget/Q602236Trigger", 70900002, 0, points._Q602236TriggerPoint_.pos, points._Q602236TriggerPoint_.rot, true, false, 20321)
    actorMgr:CreateActorWithPos("Q602236Trigger_Transmit", "Actor/Gadget/Q602236Trigger_Transmit", 70900002, 0, points._Q602236Trigger_TransmitPoint_.pos, points._Q602236Trigger_TransmitPoint_.rot, true, false, 20321)
end

function Quest6022:OnSubFinish602236(arg1)
    print("OnSubFinish602236")
    this:ActorDestroy("Q602236Trigger_Transmit")
    this:SetNavigationByMainId(6022, true)
end

function Quest6022:OnSubStart602227(arg1)
    print("OnSubStart602227")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1316.id, 0, 602227, 20, true)
end

function Quest6022:OnSubFinish602227(arg1)
    print("OnSubFinish602227")
    this:NpcDestroyImmediately(20321, npcs.Npc1316.alias)
end

function Quest6022:OnSubFailed602227(arg1)
    print("OnSubFailed602227")
    this:DestroyNpcTrigger("Q602227N1316Trigger")
    this:DestroyQuestNpcActor(npcs.Npc1316.alias, 20321)
    this:RecycleAllRes()
end

function Quest6022:OnSubStart602237(arg1)
    print("OnSubStart602237")
    actorMgr:CreateActorWithPos("Q602237Trigger_Transmit", "Actor/Gadget/Q602237Trigger_Transmit", 70900002, 0, points._Q602237Trigger_TransmitPoint_.pos, points._Q602237Trigger_TransmitPoint_.rot, true, false, 20321)
    actorMgr:CreateActorWithPos("Q602237Trigger", "Actor/Gadget/Q602237Trigger", 70900002, 0, points._Q602237TriggerPoint_.pos, points._Q602237TriggerPoint_.rot, true, false, 20321)
end

function Quest6022:OnSubFinish602237(arg1)
    print("OnSubFinish602237")
    this:ActorDestroy("Q602237Trigger_Transmit")
    this:SetNavigationByMainId(6022, true)
end

function Quest6022:OnSubStart602238(arg1)
    print("OnSubStart602238")
    this:NpcCreateWithNpcTrigger(npcs.Npc1324.id, 0, 10, 602238)
    this:GetQuestNpcActor(npcs.Npc1324.alias, 6022):SitOnChair(0, true)
    this:OthersMainPageControl(true)
end

function Quest6022:OnSubFinish602238(arg1)
    print("OnSubFinish602238")
    this:NpcDestroyImmediately(20321, npcs.Npc1324.alias)
    this:OthersMainPageControl(false)
end

function Quest6022:OnSubFailed602238(arg1)
    print("OnSubFailed602238")
    this:DestroyQuestNpcActor(npcs.Npc1324.alias, 20321)
    this:RecycleAllRes()
    this:OthersMainPageControl(false)
end

function Quest6022:OnSubStart602228(arg1)
    print("OnSubStart602228")
    actorMgr:CreateActorWithPos("Q602228Trigger", "Actor/Gadget/Q602228Trigger", 70900002, 0, points._Q602228TriggerPoint_.pos, points._Q602228TriggerPoint_.rot, true, false, 20321)
    actorMgr:CreateActorWithPos("Q602228Trigger_Transmit", "Actor/Gadget/Q602228Trigger_Transmit", 70900002, 0, points._Q602228Trigger_TransmitPoint_.pos, points._Q602228Trigger_TransmitPoint_.rot, true, false, 20321)
end

function Quest6022:OnSubFinish602228(arg1)
    print("OnSubFinish602228")
    this:ActorDestroy("Q602228Trigger_Transmit")
    this:SetNavigationByMainId(6022, true)
end

function Quest6022:OnSubStart602229(arg1)
    print("OnSubStart602229")
    this:LevelLoadFinishSafeCall(function(arg1)
        this:DeployStoryByQuest(110602206)
    end)

    this:GolumbiaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6022:OnSubFinish602229(arg1)
    print("OnSubFinish602229")
end

function Quest6022:OnSubFailed602229(arg1)
    print("OnSubFailed602229")
    this:ClearNarratorTask()
    this:RecycleAllRes()
    this:GolumbiaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6022:OnSubStart602230(arg1)
    print("OnSubStart602230")
    this:DeployStoryByQuest(110602206)
    this:GolumbiaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6022:OnSubFinish602230(arg1)
    print("OnSubFinish602230")
    this:GolumbiaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6022:OnSubFailed602230(arg1)
    print("OnSubFailed602230")
    this:CancelStoryByQuest(110602206)
    this:RecycleAllRes()
    this:GolumbiaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6022:OnSubStart602231(arg1)
    print("OnSubStart602231")
    local questVar = this:GetQuestVar(602231, 4)
    local v = this:GetQuestVar(602231, 4)
    if questVar == 0 then
        this:SetQuestVarByMainId(4, 1)
    elseif v == 1 then
        this:LevelReadySafeCall(function(arg1)
            if sceneData.currSceneID == 20321 then
                this:TransmitPlayerWithQuestIdByData(602248, 1, datas.TransmitDataWhite, nil, nil, nil)
            end
        end)
    end

    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc16190.id, 0, 602231, 20, true)
    actorMgr:CreateActorWithPos("Q602248Trigger_Transmit", "Actor/Gadget/Q602248Trigger_Transmit", 70900002, 0, points._Q602248Trigger_TransmitPoint_.pos, points._Q602248Trigger_TransmitPoint_.rot, true, false, 20321)
    this:DeployStoryByQuest(110602206)
    this:GolumbiaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6022:OnSubFinish602231(arg1)
    print("OnSubFinish602231")
    this:NpcDestroyImmediately(20321, npcs.Npc16190.alias)
    this:CancelStoryByQuest(110602206)
    this:ActorDestroy("Q602248Trigger_Transmit")
    this:GolumbiaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6022:OnSubFailed602231(arg1)
    print("OnSubFailed602231")
    this:DestroyQuestNpcActor(npcs.Npc16190.alias, 20321)
    this:ActorDestroy("Q602248Trigger_Transmit")
    this:RecycleAllRes()
    this:GolumbiaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6022:OnSubStart602248(arg1)
    print("OnSubStart602248")
    actorMgr:CreateActorWithPos("Q602248Trigger", "Actor/Gadget/Q602248Trigger", 70900002, 0, points._Q602248TriggerPoint_.pos, points._Q602248TriggerPoint_.rot, true, false, 20321)
    this:SetQuestVarByMainId(4, 0)
end

function Quest6022:OnSubFinish602248(arg1)
    print("OnSubFinish602248")
    this:SetNavigationByMainId(6022, true)
end

return Quest6022

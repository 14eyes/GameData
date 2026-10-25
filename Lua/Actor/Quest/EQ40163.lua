require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40163 = class("Quest40163", QuestActorProxy)
Quest40163.defaultAlias = "Quest40163"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40163:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40163:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4016301"] = self.OnSubStart4016301,
        ["4016302"] = self.OnSubStart4016302,
        ["4016320"] = self.OnSubStart4016320,
        ["4016322"] = self.OnSubStart4016322,
        ["4016321"] = self.OnSubStart4016321,
        ["4016303"] = self.OnSubStart4016303,
        ["4016304"] = self.OnSubStart4016304,
        ["4016329"] = self.OnSubStart4016329,
        ["4016305"] = self.OnSubStart4016305,
        ["4016306"] = self.OnSubStart4016306,
        ["4016327"] = self.OnSubStart4016327,
        ["4016330"] = self.OnSubStart4016330,
        ["4016307"] = self.OnSubStart4016307,
        ["4016308"] = self.OnSubStart4016308,
        ["4016309"] = self.OnSubStart4016309,
        ["4016325"] = self.OnSubStart4016325,
        ["4016326"] = self.OnSubStart4016326,
        ["4016310"] = self.OnSubStart4016310,
        ["4016311"] = self.OnSubStart4016311,
        ["4016312"] = self.OnSubStart4016312,
        ["4016313"] = self.OnSubStart4016313,
        ["4016314"] = self.OnSubStart4016314,
        ["4016315"] = self.OnSubStart4016315,
        ["4016316"] = self.OnSubStart4016316,
        ["4016328"] = self.OnSubStart4016328,
        ["4016323"] = self.OnSubStart4016323,
        ["4016324"] = self.OnSubStart4016324,
        ["4016331"] = self.OnSubStart4016331,
        ["4016317"] = self.OnSubStart4016317,
        ["4016318"] = self.OnSubStart4016318,
        ["4016319"] = self.OnSubStart4016319
    }
end

function Quest40163:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4016301"] = self.OnSubFinish4016301,
        ["4016302"] = self.OnSubFinish4016302,
        ["4016320"] = self.OnSubFinish4016320,
        ["4016322"] = self.OnSubFinish4016322,
        ["4016321"] = self.OnSubFinish4016321,
        ["4016303"] = self.OnSubFinish4016303,
        ["4016304"] = self.OnSubFinish4016304,
        ["4016329"] = self.OnSubFinish4016329,
        ["4016305"] = self.OnSubFinish4016305,
        ["4016306"] = self.OnSubFinish4016306,
        ["4016327"] = self.OnSubFinish4016327,
        ["4016330"] = self.OnSubFinish4016330,
        ["4016307"] = self.OnSubFinish4016307,
        ["4016308"] = self.OnSubFinish4016308,
        ["4016309"] = self.OnSubFinish4016309,
        ["4016325"] = self.OnSubFinish4016325,
        ["4016326"] = self.OnSubFinish4016326,
        ["4016310"] = self.OnSubFinish4016310,
        ["4016311"] = self.OnSubFinish4016311,
        ["4016312"] = self.OnSubFinish4016312,
        ["4016313"] = self.OnSubFinish4016313,
        ["4016314"] = self.OnSubFinish4016314,
        ["4016315"] = self.OnSubFinish4016315,
        ["4016316"] = self.OnSubFinish4016316,
        ["4016328"] = self.OnSubFinish4016328,
        ["4016323"] = self.OnSubFinish4016323,
        ["4016324"] = self.OnSubFinish4016324,
        ["4016331"] = self.OnSubFinish4016331,
        ["4016317"] = self.OnSubFinish4016317,
        ["4016318"] = self.OnSubFinish4016318,
        ["4016319"] = self.OnSubFinish4016319
    }
end

function Quest40163:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4016301"] = self.OnSubFailed4016301,
        ["4016302"] = self.OnSubFailed4016302,
        ["4016320"] = self.OnSubFailed4016320,
        ["4016322"] = self.OnSubFailed4016322,
        ["4016321"] = self.OnSubFailed4016321,
        ["4016303"] = self.OnSubFailed4016303,
        ["4016304"] = self.OnSubFailed4016304,
        ["4016329"] = self.OnSubFailed4016329,
        ["4016305"] = self.OnSubFailed4016305,
        ["4016306"] = self.OnSubFailed4016306,
        ["4016327"] = self.OnSubFailed4016327,
        ["4016330"] = self.OnSubFailed4016330,
        ["4016307"] = self.OnSubFailed4016307,
        ["4016308"] = self.OnSubFailed4016308,
        ["4016309"] = self.OnSubFailed4016309,
        ["4016325"] = self.OnSubFailed4016325,
        ["4016326"] = self.OnSubFailed4016326,
        ["4016310"] = self.OnSubFailed4016310,
        ["4016311"] = self.OnSubFailed4016311,
        ["4016312"] = self.OnSubFailed4016312,
        ["4016313"] = self.OnSubFailed4016313,
        ["4016314"] = self.OnSubFailed4016314,
        ["4016315"] = self.OnSubFailed4016315,
        ["4016316"] = self.OnSubFailed4016316,
        ["4016328"] = self.OnSubFailed4016328,
        ["4016323"] = self.OnSubFailed4016323,
        ["4016324"] = self.OnSubFailed4016324,
        ["4016331"] = self.OnSubFailed4016331,
        ["4016317"] = self.OnSubFailed4016317,
        ["4016318"] = self.OnSubFailed4016318,
        ["4016319"] = self.OnSubFailed4016319
    }
end

function Quest40163:Start()
    print("Start")
end

function Quest40163:OnDestroy()
    print("OnDestroy")
end

function Quest40163:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40163:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40163:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc30554.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30572.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30569.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30568.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30619.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30575.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc1075.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30574.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc2661.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30562.alias, 100)
    this:ActorDestroy("Q4016329Trigger")
    this:ActorDestroy("Q4016330Trigger")
    this:ActorDestroy("Q4016322Trigger")
    this:DestroyNpcTrigger("Q4016302N30554Trigger")
    this:DestroyNpcTrigger("Q4016304N2670Trigger")
    this:DestroyNpcTrigger("Q4016305N2670Trigger")
    this:DestroyNpcTrigger("Q4016307N2670Trigger")
    this:DestroyNpcTrigger("Q4016308N2670Trigger")
    this:DestroyNpcTrigger("Q4016309N2670Trigger")
    this:DestroyNpcTrigger("Q4016311N30575Trigger")
    this:DestroyNpcTrigger("Q4016318N2670Trigger")
    this:DestroyNpcTrigger("Q4016319N2670Trigger")
    this:DestroyNpcTrigger("Q4016326N30575Trigger")
    this:DestroyNpcTrigger("Q4016327N2670Trigger")
    this:DestroyNpcTrigger("Q4016328N30575Trigger")
    this:ActorDestroy("Q4016323Trigger")
    this:DisableMainPageWithConfigByQuest(false, "DisableFairyBookQuest")
    actorUtils.BanUIByQuest(2, false, 40163)
    this:ActorDestroy("Q4016331Trigger")
    this:ActorDestroy("Q4016331Trigger_1")
end

function Quest40163:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("FinishSubQuest4016324")
        actorUtils.FinishQuestID(false, 4016324)
    end
end

function Quest40163:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40163:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest40163:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest40163:OnSubStart4016301(arg1)
    print("OnSubStart4016301")
end

function Quest40163:OnSubFinish4016301(arg1)
    print("OnSubFinish4016301")
    this:QuestNarratorTask(datas.Narrator_4016301, nil)
end

function Quest40163:OnSubFailed4016301(arg1)
    print("OnSubFailed4016301")
end

function Quest40163:OnSubStart4016302(arg1)
    print("OnSubStart4016302")
    this:NpcCreateWithNpcTrigger(npcs.Npc30554.id, 4016302, 0, 15)
    this:CreateQuestNpc(arg1, npcs.Npc30572.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30569.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30568.id, 0, false, 0)
end

function Quest40163:OnSubFinish4016302(arg1)
    print("OnSubFinish4016302")
    this:SafeDestroyQuestNpc(npcs.Npc30554.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30572.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30569.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30568.alias, 100)
    this:ClearNarratorTask()
end

function Quest40163:OnSubFailed4016302(arg1)
    print("OnSubFailed4016302")
end

function Quest40163:OnSubStart4016320(arg1)
    print("OnSubStart4016320")
end

function Quest40163:OnSubFinish4016320(arg1)
    print("OnSubFinish4016320")
end

function Quest40163:OnSubFailed4016320(arg1)
    print("OnSubFailed4016320")
end

function Quest40163:OnSubStart4016322(arg1)
    print("OnSubStart4016322")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc2670.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc2661.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc2670.alias, 40163):SitOnChair(0, false)
        this:GetQuestNpcActor(npcs.Npc2661.alias, 40163):SitOnChair(0, false)
    end)

    actorMgr:CreateActorWithPos("Q4016322Trigger", "Actor/Gadget/Q4016322Trigger", 70900002, 0, points._Q4016322TriggerPoint_.pos, points._Q4016322TriggerPoint_.rot, true, false, 100)
end

function Quest40163:OnSubFinish4016322(arg1)
    print("OnSubFinish4016322")
    this:ActorDestroy("Q4016322Trigger")
    this:SafeDestroyQuestNpc(npcs.Npc30619.alias, 100)
end

function Quest40163:OnSubFailed4016322(arg1)
    print("OnSubFailed4016322")
end

function Quest40163:OnSubStart4016321(arg1)
    print("OnSubStart4016321")
end

function Quest40163:OnSubFinish4016321(arg1)
    print("OnSubFinish4016321")
end

function Quest40163:OnSubFailed4016321(arg1)
    print("OnSubFailed4016321")
end

function Quest40163:OnSubStart4016303(arg1)
    print("OnSubStart4016303")
    this:CreateQuestNpc(arg1, npcs.Npc30619.id, 0, false, 0)
end

function Quest40163:OnSubFinish4016303(arg1)
    print("OnSubFinish4016303")
    this:SafeDestroyQuestNpc(npcs.Npc30619.alias, 100)
end

function Quest40163:OnSubFailed4016303(arg1)
    print("OnSubFailed4016303")
    this:SafeDestroyQuestNpc(npcs.Npc30619.alias, 100)
end

function Quest40163:OnSubStart4016304(arg1)
    print("OnSubStart4016304")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2670.id, 4016304, 0, 49, 1)
end

function Quest40163:OnSubFinish4016304(arg1)
    print("OnSubFinish4016304")
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc2661.alias, 100)
end

function Quest40163:OnSubFailed4016304(arg1)
    print("OnSubFailed4016304")
end

function Quest40163:OnSubStart4016329(arg1)
    print("OnSubStart4016329")
    actorMgr:CreateActorWithPos("Q4016329Trigger", "Actor/Gadget/Q4016329Trigger", 70900002, 0, points._Q4016329TriggerPoint_.pos, points._Q4016329TriggerPoint_.rot, true, false, 100)
end

function Quest40163:OnSubFinish4016329(arg1)
    print("OnSubFinish4016329")
    this:QuestNarratorTask(datas.Narrator_4016307, nil)
    this:ActorDestroy("Q4016329Trigger")
end

function Quest40163:OnSubFailed4016329(arg1)
    print("OnSubFailed4016329")
    this:ActorDestroy("Q4016329Trigger")
end

function Quest40163:OnSubStart4016305(arg1)
    print("OnSubStart4016305")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2670.id, 4016305, 0, 15, 1)
end

function Quest40163:OnSubFinish4016305(arg1)
    print("OnSubFinish4016305")
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 100)
    this:ClearNarratorTask()
end

function Quest40163:OnSubFailed4016305(arg1)
    print("OnSubFailed4016305")
end

function Quest40163:OnSubStart4016306(arg1)
    print("OnSubStart4016306")
end

function Quest40163:OnSubFinish4016306(arg1)
    print("OnSubFinish4016306")
end

function Quest40163:OnSubFailed4016306(arg1)
    print("OnSubFailed4016306")
end

function Quest40163:OnSubStart4016327(arg1)
    print("OnSubStart4016327")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2670.id, 4016327, 0, 20, 1)
end

function Quest40163:OnSubFinish4016327(arg1)
    print("OnSubFinish4016327")
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 100)
end

function Quest40163:OnSubFailed4016327(arg1)
    print("OnSubFailed4016327")
end

function Quest40163:OnSubStart4016330(arg1)
    print("OnSubStart4016330")
    actorMgr:CreateActorWithPos("Q4016330Trigger", "Actor/Gadget/Q4016330Trigger", 70900002, 0, points._Q4016330TriggerPoint_.pos, points._Q4016330TriggerPoint_.rot, true, false, 100)
end

function Quest40163:OnSubFinish4016330(arg1)
    print("OnSubFinish4016330")
    this:ActorDestroy("Q4016330Trigger")
end

function Quest40163:OnSubFailed4016330(arg1)
    print("OnSubFailed4016330")
end

function Quest40163:OnSubStart4016307(arg1)
    print("OnSubStart4016307")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2670.id, 4016307, 0, 5, 1)
end

function Quest40163:OnSubFinish4016307(arg1)
    print("OnSubFinish4016307")
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 100)
end

function Quest40163:OnSubFailed4016307(arg1)
    print("OnSubFailed4016307")
end

function Quest40163:OnSubStart4016308(arg1)
    print("OnSubStart4016308")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2670.id, 4016308, 0, 5, 1)
end

function Quest40163:OnSubFinish4016308(arg1)
    print("OnSubFinish4016308")
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 100)
end

function Quest40163:OnSubFailed4016308(arg1)
    print("OnSubFailed4016308")
end

function Quest40163:OnSubStart4016309(arg1)
    print("OnSubStart4016309")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2670.id, 4016309, 0, 15, 1)
end

function Quest40163:OnSubFinish4016309(arg1)
    print("OnSubFinish4016309")
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 100)
end

function Quest40163:OnSubFailed4016309(arg1)
    print("OnSubFailed4016309")
end

function Quest40163:OnSubStart4016325(arg1)
    print("OnSubStart4016325")
end

function Quest40163:OnSubFinish4016325(arg1)
    print("OnSubFinish4016325")
end

function Quest40163:OnSubFailed4016325(arg1)
    print("OnSubFailed4016325")
end

function Quest40163:OnSubStart4016326(arg1)
    print("OnSubStart4016326")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc30575.id, 4016326, 0, 30, 1)
end

function Quest40163:OnSubFinish4016326(arg1)
    print("OnSubFinish4016326")
    this:SafeDestroyQuestNpc(npcs.Npc30575.alias, 100)
end

function Quest40163:OnSubFailed4016326(arg1)
    print("OnSubFailed4016326")
end

function Quest40163:OnSubStart4016310(arg1)
    print("OnSubStart4016310")
end

function Quest40163:OnSubFinish4016310(arg1)
    print("OnSubFinish4016310")
end

function Quest40163:OnSubFailed4016310(arg1)
    print("OnSubFailed4016310")
end

function Quest40163:OnSubStart4016311(arg1)
    print("OnSubStart4016311")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc30575.id, 4016311, 0, 30, 1)
end

function Quest40163:OnSubFinish4016311(arg1)
    print("OnSubFinish4016311")
    this:SafeDestroyQuestNpc(npcs.Npc30575.alias, 100)
end

function Quest40163:OnSubFailed4016311(arg1)
    print("OnSubFailed4016311")
end

function Quest40163:OnSubStart4016312(arg1)
    print("OnSubStart4016312")
end

function Quest40163:OnSubFinish4016312(arg1)
    print("OnSubFinish4016312")
end

function Quest40163:OnSubFailed4016312(arg1)
    print("OnSubFailed4016312")
end

function Quest40163:OnSubStart4016313(arg1)
    print("OnSubStart4016313")
end

function Quest40163:OnSubFinish4016313(arg1)
    print("OnSubFinish4016313")
end

function Quest40163:OnSubFailed4016313(arg1)
    print("OnSubFailed4016313")
end

function Quest40163:OnSubStart4016314(arg1)
    print("OnSubStart4016314")
end

function Quest40163:OnSubFinish4016314(arg1)
    print("OnSubFinish4016314")
end

function Quest40163:OnSubFailed4016314(arg1)
    print("OnSubFailed4016314")
end

function Quest40163:OnSubStart4016315(arg1)
    print("OnSubStart4016315")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1075.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1075.alias, 40163):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc1075.alias):SetNpcAnimator(3, "Add", 0, 0, true, true)
        this:GetQuestNpcActor(npcs.Npc1075.alias, 40163):SpawnAttachEx("FairyC_Navia")
        this:GetQuestNpcActor(npcs.Npc1075.alias, 40163):DisableInteeHeadCtrl(true)
    end)
end

function Quest40163:OnSubFinish4016315(arg1)
    print("OnSubFinish4016315")
end

function Quest40163:OnSubFailed4016315(arg1)
    print("OnSubFailed4016315")
end

function Quest40163:OnSubStart4016316(arg1)
    print("OnSubStart4016316")
    this:GetQuestNpcActor(npcs.Npc1075.alias, 40163):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1075.alias):SetNpcAnimator(3, "Add", 0, 0, true, true)
    this:GetQuestNpcActor(npcs.Npc1075.alias, 40163):SpawnAttachEx("FairyC_Navia")
    this:GetQuestNpcActor(npcs.Npc1075.alias, 40163):DisableInteeHeadCtrl(true)
end

function Quest40163:OnSubFinish4016316(arg1)
    print("OnSubFinish4016316")
    this:SafeDestroyQuestNpc(npcs.Npc1075.alias, 100)
    this:GetQuestNpcActor(npcs.Npc1075.alias, 40163):DisableInteeHeadCtrl(false)
end

function Quest40163:OnSubFailed4016316(arg1)
    print("OnSubFailed4016316")
end

function Quest40163:OnSubStart4016328(arg1)
    print("OnSubStart4016328")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc30575.id, 4016328, 0, 30, 1)
end

function Quest40163:OnSubFinish4016328(arg1)
    print("OnSubFinish4016328")
    this:SafeDestroyQuestNpc(npcs.Npc30575.alias, 100)
end

function Quest40163:OnSubFailed4016328(arg1)
    print("OnSubFailed4016328")
end

function Quest40163:OnSubStart4016323(arg1)
    print("OnSubStart4016323")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc30562.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc2670.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc2670.alias, 40163):DoFreeStyle(1190, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc2670.alias, 40163):DisableInteeHeadCtrl(true)
        actorMgr:CreateActorWithPos("Q4016323Trigger", "Actor/Gadget/Q4016323Trigger", 70900002, 0, points._Q4016323TriggerPoint_.pos, points._Q4016323TriggerPoint_.rot, true, false, 100)
    end)
end

function Quest40163:OnSubFinish4016323(arg1)
    print("OnSubFinish4016323")
    this:SafeDestroyQuestNpc(npcs.Npc30562.alias, 100)
    this:ActorDestroy("Q4016323Trigger")
end

function Quest40163:OnSubFailed4016323(arg1)
    print("OnSubFailed4016323")
end

function Quest40163:OnSubStart4016324(arg1)
    print("OnSubStart4016324")
end

function Quest40163:OnSubFinish4016324(arg1)
    print("OnSubFinish4016324")
end

function Quest40163:OnSubFailed4016324(arg1)
    print("OnSubFailed4016324")
end

function Quest40163:OnSubStart4016331(arg1)
    print("OnSubStart4016331")
    actorMgr:CreateActorWithPos("Q4016331Trigger", "Actor/Gadget/Q4016331Trigger", 70900002, 0, points._Q4016331TriggerPoint_.pos, points._Q4016331TriggerPoint_.rot, true, false, 100)
    actorMgr:CreateActorWithPos("Q4016331Trigger_1", "Actor/Gadget/Q4016331Trigger_1", 70900002, 0, points._Q4016331Trigger_1Point_.pos, points._Q4016331Trigger_1Point_.rot, true, false, 100)
end

function Quest40163:OnSubFinish4016331(arg1)
    print("OnSubFinish4016331")
    this:ActorDestroy("Q4016331Trigger")
    this:ActorDestroy("Q4016331Trigger_1")
end

function Quest40163:OnSubFailed4016331(arg1)
    print("OnSubFailed4016331")
    this:ActorDestroy("Q4016331Trigger")
    this:ActorDestroy("Q4016331Trigger_1")
end

function Quest40163:OnSubStart4016317(arg1)
    print("OnSubStart4016317")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1075.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc1075.alias):SetNpcAnimator(3, "Add", 0, 0, true, true)
        this:GetQuestNpcActor(npcs.Npc1075.alias, 40163):SpawnAttachEx("FairyC_Navia")
        this:GetQuestNpcActor(npcs.Npc1075.alias, 40163):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:DisableMainPageWithConfigByQuest(true, "DisableFairyBookQuest")
        actorUtils.BanUIByQuest(2, true, 40163)
    end)

    this:GetQuestNpcActor(npcs.Npc2670.alias, 40163):DisableInteeHeadCtrl(true)
end

function Quest40163:OnSubFinish4016317(arg1)
    print("OnSubFinish4016317")
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 100)
    this:TransmitPlayerWithQuestIdByData(4016317, 1, datas.TransmitData_1, nil, nil, nil)
    this:DisableMainPageWithConfigByQuest(false, "DisableFairyBookQuest")
    actorUtils.BanUIByQuest(2, false, 40163)
    this:GetQuestNpcActor(npcs.Npc2670.alias, 40163):DisableInteeHeadCtrl(false)
end

function Quest40163:OnSubFailed4016317(arg1)
    print("OnSubFailed4016317")
    this:DisableMainPageWithConfigByQuest(false, "DisableFairyBookQuest")
    actorUtils.BanUIByQuest(2, false, 40163)
end

function Quest40163:OnSubStart4016318(arg1)
    print("OnSubStart4016318")
    this:NpcCreateWithNpcTrigger(npcs.Npc2670.id, 4016318, 0, 20)
    this:GetQuestNpcActor(npcs.Npc2670.alias, 40163):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc30575.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc30574.id, 0, false, 0)
end

function Quest40163:OnSubFinish4016318(arg1)
    print("OnSubFinish4016318")
end

function Quest40163:OnSubFailed4016318(arg1)
    print("OnSubFailed4016318")
end

function Quest40163:OnSubStart4016319(arg1)
    print("OnSubStart4016319")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2670.id, 4016319, 0, 30, 1)
end

function Quest40163:OnSubFinish4016319(arg1)
    print("OnSubFinish4016319")
    this:SafeDestroyQuestNpc(npcs.Npc2670.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30575.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc30574.alias, 100)
    this:SafeDestroyQuestNpc(npcs.Npc1075.alias, 100)
end

function Quest40163:OnSubFailed4016319(arg1)
    print("OnSubFailed4016319")
end

return Quest40163

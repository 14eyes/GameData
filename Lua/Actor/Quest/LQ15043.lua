require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15043 = class("Quest15043", QuestActorProxy)
Quest15043.defaultAlias = "Quest15043"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest15043:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest15043:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1504391"] = self.OnSubStart1504391,
        ["1504393"] = self.OnSubStart1504393,
        ["1504390"] = self.OnSubStart1504390,
        ["1504323"] = self.OnSubStart1504323,
        ["1504324"] = self.OnSubStart1504324,
        ["1504325"] = self.OnSubStart1504325,
        ["1504301"] = self.OnSubStart1504301,
        ["1504302"] = self.OnSubStart1504302,
        ["1504320"] = self.OnSubStart1504320,
        ["1504306"] = self.OnSubStart1504306,
        ["1504307"] = self.OnSubStart1504307,
        ["1504308"] = self.OnSubStart1504308,
        ["1504315"] = self.OnSubStart1504315,
        ["1504317"] = self.OnSubStart1504317,
        ["1504318"] = self.OnSubStart1504318,
        ["1504303"] = self.OnSubStart1504303,
        ["1504304"] = self.OnSubStart1504304,
        ["1504321"] = self.OnSubStart1504321,
        ["1504305"] = self.OnSubStart1504305,
        ["1504319"] = self.OnSubStart1504319,
        ["1504309"] = self.OnSubStart1504309,
        ["1504310"] = self.OnSubStart1504310,
        ["1504311"] = self.OnSubStart1504311,
        ["1504312"] = self.OnSubStart1504312,
        ["1504322"] = self.OnSubStart1504322,
        ["1504313"] = self.OnSubStart1504313,
        ["1504314"] = self.OnSubStart1504314,
        ["1504316"] = self.OnSubStart1504316
    }
end

function Quest15043:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1504391"] = self.OnSubFinish1504391,
        ["1504393"] = self.OnSubFinish1504393,
        ["1504390"] = self.OnSubFinish1504390,
        ["1504323"] = self.OnSubFinish1504323,
        ["1504324"] = self.OnSubFinish1504324,
        ["1504325"] = self.OnSubFinish1504325,
        ["1504301"] = self.OnSubFinish1504301,
        ["1504302"] = self.OnSubFinish1504302,
        ["1504320"] = self.OnSubFinish1504320,
        ["1504306"] = self.OnSubFinish1504306,
        ["1504307"] = self.OnSubFinish1504307,
        ["1504308"] = self.OnSubFinish1504308,
        ["1504315"] = self.OnSubFinish1504315,
        ["1504317"] = self.OnSubFinish1504317,
        ["1504318"] = self.OnSubFinish1504318,
        ["1504303"] = self.OnSubFinish1504303,
        ["1504304"] = self.OnSubFinish1504304,
        ["1504321"] = self.OnSubFinish1504321,
        ["1504305"] = self.OnSubFinish1504305,
        ["1504319"] = self.OnSubFinish1504319,
        ["1504309"] = self.OnSubFinish1504309,
        ["1504310"] = self.OnSubFinish1504310,
        ["1504311"] = self.OnSubFinish1504311,
        ["1504312"] = self.OnSubFinish1504312,
        ["1504322"] = self.OnSubFinish1504322,
        ["1504313"] = self.OnSubFinish1504313,
        ["1504314"] = self.OnSubFinish1504314,
        ["1504316"] = self.OnSubFinish1504316
    }
end

function Quest15043:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1504311"] = self.OnSubFailed1504311, ["1504322"] = self.OnSubFailed1504322}
end

function Quest15043:Start()
    print("Start")
end

function Quest15043:OnDestroy()
    print("OnDestroy")
end

function Quest15043:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest15043:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest15043:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest15043:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q1504306Trigger")
    this:ActorDestroy("Q1504316Trigger")
    this:ActorDestroy("Q1504322Trigger")
    this:BanCrowdNpc(3522, 6, nil, false, true)
    this:BanCrowdNpc(3522, 7, nil, false, true)
    this:BanCrowdNpc(3522, 14, nil, false, true)
end

function Quest15043:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 150430201 then
        actorUtils.FinishQuestID(false, 1504320)
    end
end

function Quest15043:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest15043:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest15043:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest15043:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest15043:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest15043:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest15043:OnSubStart1504391(arg1)
    print("OnSubStart1504391")
    this:CreateQuestNpc(arg1, npcs.Npc21865.id, 0, false, 0)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21844.id, arg1)
    this:GetQuestNpcActor(npcs.Npc21844.alias, 15043):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc21844.alias, 15043):DisableInteeHeadCtrl(true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21845.id, arg1)
    this:GetQuestNpcActor(npcs.Npc21845.alias, 15043):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21846.id, arg1)
    this:GetQuestNpcActor(npcs.Npc21846.alias, 15043):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21856.id, arg1)
end

function Quest15043:OnSubFinish1504391(arg1)
    print("OnSubFinish1504391")
    this:SafeDestroyQuestNpc(npcs.Npc21865.alias, 3)
    this:NpcDestroyImmediately(3, npcs.Npc21844.alias)
    this:SafeDestroyQuestNpc(npcs.Npc21845.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21846.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21856.alias, 3)
    this:GetQuestNpcActor(npcs.Npc21844.alias, 15043):DisableInteeHeadCtrl(false)
end

function Quest15043:OnSubStart1504393(arg1)
    print("OnSubStart1504393")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1504393, 0, 20, 1, npcs.Npc21844.id)
end

function Quest15043:OnSubFinish1504393(arg1)
    print("OnSubFinish1504393")
    this:SafeDestroyQuestNpc(npcs.Npc21844.alias, 3)
end

function Quest15043:OnSubStart1504390(arg1)
    print("OnSubStart1504390")
end

function Quest15043:OnSubFinish1504390(arg1)
    print("OnSubFinish1504390")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1504301, nil)
    end)

    this:SetNavigationByMainId(15043, true)
end

function Quest15043:OnSubStart1504323(arg1)
    print("OnSubStart1504323")
end

function Quest15043:OnSubFinish1504323(arg1)
    print("OnSubFinish1504323")
end

function Quest15043:OnSubStart1504324(arg1)
    print("OnSubStart1504324")
end

function Quest15043:OnSubFinish1504324(arg1)
    print("OnSubFinish1504324")
end

function Quest15043:OnSubStart1504325(arg1)
    print("OnSubStart1504325")
end

function Quest15043:OnSubFinish1504325(arg1)
    print("OnSubFinish1504325")
end

function Quest15043:OnSubStart1504301(arg1)
    print("OnSubStart1504301")
    this:CreateQuestNpc(arg1, npcs.Npc21865.id, 0, false, 0)
end

function Quest15043:OnSubFinish1504301(arg1)
    print("OnSubFinish1504301")
    this:SafeDestroyQuestNpc(npcs.Npc21865.alias, 3)
end

function Quest15043:OnSubStart1504302(arg1)
    print("OnSubStart1504302")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1504302, 0, 20, 1, npcs.Npc6554.id)
end

function Quest15043:OnSubFinish1504302(arg1)
    print("OnSubFinish1504302")
    this:SafeDestroyQuestNpc(npcs.Npc6554.alias, 3)
end

function Quest15043:OnSubStart1504320(arg1)
    print("OnSubStart1504320")
end

function Quest15043:OnSubFinish1504320(arg1)
    print("OnSubFinish1504320")
end

function Quest15043:OnSubStart1504306(arg1)
    print("OnSubStart1504306")
    actorMgr:CreateActorWithPos("Q1504306Trigger", "Actor/Gadget/Q1504306Trigger", 70900002, 0, points._Q1504306TriggerPoint_.pos, points._Q1504306TriggerPoint_.rot, true, false, 3)
end

function Quest15043:OnSubFinish1504306(arg1)
    print("OnSubFinish1504306")
    this:QuestNarratorTask(datas.NarratorWithId_1504302, nil)
end

function Quest15043:OnSubStart1504307(arg1)
    print("OnSubStart1504307")
    this:NpcCreateWithNpcTrigger(npcs.Npc21877.id, 0, 20, 1504307)
    this:GetQuestNpcActor(npcs.Npc21877.alias, 15043):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest15043:OnSubFinish1504307(arg1)
    print("OnSubFinish1504307")
    this:SafeDestroyQuestNpc(npcs.Npc21877.alias, 3)
end

function Quest15043:OnSubStart1504308(arg1)
    print("OnSubStart1504308")
    this:DeployStoryByQuest(121504301)
end

function Quest15043:OnSubFinish1504308(arg1)
    print("OnSubFinish1504308")
end

function Quest15043:OnSubStart1504315(arg1)
    print("OnSubStart1504315")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(1504315, 0, 30, 1, npcs.Npc21844.id)
    end)
end

function Quest15043:OnSubFinish1504315(arg1)
    print("OnSubFinish1504315")
    this:SafeDestroyQuestNpc(npcs.Npc21844.alias, 3)
    this:CancelStoryByQuest(121504301)
end

function Quest15043:OnSubStart1504317(arg1)
    print("OnSubStart1504317")
end

function Quest15043:OnSubFinish1504317(arg1)
    print("OnSubFinish1504317")
end

function Quest15043:OnSubStart1504318(arg1)
    print("OnSubStart1504318")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1504318, 0, 30, 1, npcs.Npc21845.id)
end

function Quest15043:OnSubFinish1504318(arg1)
    print("OnSubFinish1504318")
    this:SafeDestroyQuestNpc(npcs.Npc21845.alias, 3)
end

function Quest15043:OnSubStart1504303(arg1)
    print("OnSubStart1504303")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21877.id, arg1)
    this:NpcCreateWithNpcTrigger(npcs.Npc21847.id, 0, 10, 1504303)
    this:GetQuestNpcActor(npcs.Npc21847.alias, 15043):SitOnChair(0, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21874.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc21874.alias, 15043):DoFreeStyle(1240, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc21874.alias, 15043):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc21877.alias, 15043):DisableInteeHeadCtrl(true)
    end)
end

function Quest15043:OnSubFinish1504303(arg1)
    print("OnSubFinish1504303")
    this:SafeDestroyQuestNpc(npcs.Npc21877.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21847.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21874.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1504303, nil)
    end)
end

function Quest15043:OnSubStart1504304(arg1)
    print("OnSubStart1504304")
    this:NpcCreateWithNpcTrigger(npcs.Npc21880.id, 0, 15, 1504304)
    this:GetQuestNpcActor(npcs.Npc21880.alias, 15043):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest15043:OnSubFinish1504304(arg1)
    print("OnSubFinish1504304")
end

function Quest15043:OnSubStart1504321(arg1)
    print("OnSubStart1504321")
    this:CreateQuestNpc(arg1, npcs.Npc21880.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21880.alias, 15043):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateSpeechBubbleTask(npcs.Npc21880.id, 150439807, 10, true, 5, 10, true, false)
end

function Quest15043:OnSubFinish1504321(arg1)
    print("OnSubFinish1504321")
end

function Quest15043:OnSubStart1504305(arg1)
    print("OnSubStart1504305")
    this:GetQuestNpcActor(npcs.Npc21880.alias, 15043):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateSpeechBubbleTask(npcs.Npc21880.id, 150439808, 10, true, 5, 10, true, false)
end

function Quest15043:OnSubFinish1504305(arg1)
    print("OnSubFinish1504305")
end

function Quest15043:OnSubStart1504319(arg1)
    print("OnSubStart1504319")
    this:CreateQuestNpc(arg1, npcs.Npc21880.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21880.alias, 15043):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc21847.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21847.alias, 15043):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc21847.alias, 15043):DisableInteeHeadCtrl(true)
    this:BanCrowdNpc(3522, 6, nil, true, true)
    this:BanCrowdNpc(3522, 7, nil, true, true)
    this:BanCrowdNpc(3522, 14, nil, true, true)
    this:CallDelayByQuest("WendyBubble", 3, function(arg1)
        this:CreateSpeechBubbleTask(npcs.Npc21847.id, 150439809, 10, true, 5, 10, false, false)
    end)
end

function Quest15043:OnSubFinish1504319(arg1)
    print("OnSubFinish1504319")
    this:BanCrowdNpc(3522, 6, nil, false, true)
    this:BanCrowdNpc(3522, 7, nil, false, true)
    this:BanCrowdNpc(3522, 14, nil, false, true)
    this:UnCallDelayByQuest("WendyBubble")
    this:ClearSpeechBubbleTask()
end

function Quest15043:OnSubStart1504309(arg1)
    print("OnSubStart1504309")
    this:NpcCreateWithNpcTrigger(npcs.Npc21880.id, 0, 30, 1504309)
    this:GetQuestNpcActor(npcs.Npc21880.alias, 15043):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc21847.alias, 15043):DisableInteeHeadCtrl(false)
end

function Quest15043:OnSubFinish1504309(arg1)
    print("OnSubFinish1504309")
    this:SafeDestroyQuestNpc(npcs.Npc21880.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21847.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_1504305, nil)
    end)
end

function Quest15043:OnSubStart1504310(arg1)
    print("OnSubStart1504310")
    this:NpcCreateWithNpcTrigger(npcs.Npc6553.id, 0, 10, 1504310)
    this:CreateQuestNpc(arg1, npcs.Npc21844.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21844.alias, 15043):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21845.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21845.alias, 15043):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21846.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21846.alias, 15043):DoFreeStyle(1220, true, nil, true, true, false, false)
end

function Quest15043:OnSubFinish1504310(arg1)
    print("OnSubFinish1504310")
    this:SafeDestroyQuestNpc(npcs.Npc21844.alias, 3)
end

function Quest15043:OnSubStart1504311(arg1)
    print("OnSubStart1504311")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc6553.id, arg1)
    this:GetQuestNpcActor(npcs.Npc6553.alias, 15043):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21845.id, arg1)
    this:GetQuestNpcActor(npcs.Npc21845.alias, 15043):DoFreeStyle(1220, true, nil, true, true, false, false)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21846.id, arg1)
    this:GetQuestNpcActor(npcs.Npc21846.alias, 15043):DoFreeStyle(1220, true, nil, true, true, false, false)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21847.id, arg1)
    this:GetQuestNpcActor(npcs.Npc21847.alias, 15043):DoFreeStyle(1220, true, nil, true, true, false, false)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21856.id, arg1)
    this:GetQuestNpcActor(npcs.Npc21856.alias, 15043):DoFreeStyle(8, true, nil, true, true, false, false)
    if actorUtils.IsMalePlayer() then
        this:ActionSafeCall(function(arg1_2)
            this:CreateQuestNpc(arg1, npcs.Npc1025.id, 0, false, 0)
            this:GetQuestNpcActor(npcs.Npc1025.alias, 15043):DoFreeStyle(1300, true, nil, true, true, false, false)
            this:GetQuestNpcActor(npcs.Npc1025.alias, 15043):SetPlayerNpcEnergy()
        end)
    else
        this:ActionSafeCall(function(arg1_2)
            this:CreateQuestNpc(arg1, npcs.Npc1026.id, 0, false, 0)
            this:GetQuestNpcActor(npcs.Npc1026.alias, 15043):DoFreeStyle(1300, true, nil, true, true, false, false)
            this:GetQuestNpcActor(npcs.Npc1026.alias, 15043):SetPlayerNpcEnergy()
        end)
    end

    this:NpcCreateWithActionSafeCall(0, npcs.Paimon.id, arg1)
    globalActor:DisablePaimonInProfilePage(datas.sceneIDList)
end

function Quest15043:OnSubFinish1504311(arg1)
    print("OnSubFinish1504311")
end

function Quest15043:OnSubFailed1504311(arg1)
    print("OnSubFailed1504311")
    this:SafeDestroyQuestNpc(npcs.Npc21847.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1025.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1026.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
    globalActor:ResumePaimonInProfilePage(datas.sceneIDList)
end

function Quest15043:OnSubStart1504312(arg1)
    print("OnSubStart1504312")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(1504312, 0, 15, 1, npcs.Npc6553.id)
end

function Quest15043:OnSubFinish1504312(arg1)
    print("OnSubFinish1504312")
    this:SafeDestroyQuestNpc(npcs.Npc6553.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21845.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21846.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21847.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21856.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Paimon.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1025.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1026.alias, 3)
    globalActor:ResumePaimonInProfilePage(datas.sceneIDList)
end

function Quest15043:OnSubStart1504322(arg1)
    print("OnSubStart1504322")
    actorMgr:CreateActorWithPos("Q1504322Trigger", "Actor/Gadget/Q1504322Trigger", 70900002, 0, points._Q1504322TriggerPoint_.pos, points._Q1504322TriggerPoint_.rot, true, false, 3)
end

function Quest15043:OnSubFinish1504322(arg1)
    print("OnSubFinish1504322")
end

function Quest15043:OnSubFailed1504322(arg1)
    print("OnSubFailed1504322")
    this:ActorDestroy("Q1504322Trigger")
end

function Quest15043:OnSubStart1504313(arg1)
    print("OnSubStart1504313")
end

function Quest15043:OnSubFinish1504313(arg1)
    print("OnSubFinish1504313")
end

function Quest15043:OnSubStart1504314(arg1)
    print("OnSubStart1504314")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1504314, 0, 15, 1, npcs.Npc6553.id)
end

function Quest15043:OnSubFinish1504314(arg1)
    print("OnSubFinish1504314")
    this:SafeDestroyQuestNpc(npcs.Npc6553.alias, 3)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("HolidayMemoryBookPage", 4)
    end)
end

function Quest15043:OnSubStart1504316(arg1)
    print("OnSubStart1504316")
    this:NpcCreateWithNpcTriggerAndBlackscreen(1504316, 0, 10, 1, npcs.Npc21847.id)
    actorMgr:CreateActorWithPos("Q1504316Trigger", "Actor/Gadget/Q1504316Trigger", 70900002, 0, points._Q1504316TriggerPoint_.pos, points._Q1504316TriggerPoint_.rot, true, false, 3)
end

function Quest15043:OnSubFinish1504316(arg1)
    print("OnSubFinish1504316")
    this:SafeDestroyQuestNpc(npcs.Npc21847.alias, 3)
    this:StopNarrator()
    this:ClearNarratorTask()
end

return Quest15043

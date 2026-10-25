require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40206 = class("Quest40206", QuestActorProxy)
Quest40206.defaultAlias = "Quest40206"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40206:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40206:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4020612"] = self.OnSubStart4020612,
        ["4020601"] = self.OnSubStart4020601,
        ["4020602"] = self.OnSubStart4020602,
        ["4020603"] = self.OnSubStart4020603,
        ["4020604"] = self.OnSubStart4020604,
        ["4020613"] = self.OnSubStart4020613,
        ["4020605"] = self.OnSubStart4020605,
        ["4020615"] = self.OnSubStart4020615,
        ["4020616"] = self.OnSubStart4020616,
        ["4020606"] = self.OnSubStart4020606,
        ["4020607"] = self.OnSubStart4020607,
        ["4020614"] = self.OnSubStart4020614,
        ["4020608"] = self.OnSubStart4020608,
        ["4020609"] = self.OnSubStart4020609,
        ["4020610"] = self.OnSubStart4020610,
        ["4020611"] = self.OnSubStart4020611
    }
end

function Quest40206:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4020612"] = self.OnSubFinish4020612,
        ["4020601"] = self.OnSubFinish4020601,
        ["4020602"] = self.OnSubFinish4020602,
        ["4020603"] = self.OnSubFinish4020603,
        ["4020604"] = self.OnSubFinish4020604,
        ["4020613"] = self.OnSubFinish4020613,
        ["4020605"] = self.OnSubFinish4020605,
        ["4020615"] = self.OnSubFinish4020615,
        ["4020616"] = self.OnSubFinish4020616,
        ["4020606"] = self.OnSubFinish4020606,
        ["4020607"] = self.OnSubFinish4020607,
        ["4020614"] = self.OnSubFinish4020614,
        ["4020608"] = self.OnSubFinish4020608,
        ["4020609"] = self.OnSubFinish4020609,
        ["4020610"] = self.OnSubFinish4020610,
        ["4020611"] = self.OnSubFinish4020611
    }
end

function Quest40206:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["4020606"] = self.OnSubFailed4020606, ["4020608"] = self.OnSubFailed4020608}
end

function Quest40206:Start()
    print("Start")
end

function Quest40206:OnDestroy()
    print("OnDestroy")
end

function Quest40206:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40206:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40206:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:UnCallDelayByQuest("delay1")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1312.alias, 1151)
    this:SafeDestroyQuestNpc(npcs.Npc1055.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15467.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15537.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15836.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15837.alias, 3)
    this:LightNotifyTo(npcs.Npc7007.alias, 0, true)
    this:ActorDestroy("Q4020614Trigger")
    this:ActorDestroy("Q4020616Trigger")
    this:ActorDestroy("Q4020615Trigger")
    this:DestroyNpcTrigger("Q4020601N1312Trigger")
    this:DestroyNpcTrigger("Q4020602N1055Trigger")
    this:DestroyNpcTrigger("Q4020603N1313Trigger")
    this:DestroyNpcTrigger("Q4020604N1313Trigger")
    this:DestroyNpcTrigger("Q4020605N1313Trigger")
    this:DestroyNpcTrigger("Q4020607N1313Trigger")
    this:DestroyNpcTrigger("Q4020609N1313Trigger")
    this:DestroyNpcTrigger("Q4020611N1313Trigger")
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiTour")
end

function Quest40206:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q4020614Trigger")
    this:ActorDestroy("Q4020616Trigger")
    this:ActorDestroy("Q4020615Trigger")
end

function Quest40206:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest40206:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest40206:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg3, arg2)
    end)
end

function Quest40206:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40206:OnSubStart4020612(arg1)
    print("OnSubStart4020612")
end

function Quest40206:OnSubFinish4020612(arg1)
    print("OnSubFinish4020612")
    this:QuestNarratorTask(datas.NarratorWithId_4020601, nil)
end

function Quest40206:OnSubStart4020601(arg1)
    print("OnSubStart4020601")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1312.id, 0, 4020601, 30, true)
end

function Quest40206:OnSubFinish4020601(arg1)
    print("OnSubFinish4020601")
end

function Quest40206:OnSubStart4020602(arg1)
    print("OnSubStart4020602")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4020602, 0, 15, 0, npcs.Npc1055.id)
    this:DailyNpcSafeHideSelf(npcs.Npc7007.alias, true, 1)
end

function Quest40206:OnSubFinish4020602(arg1)
    print("OnSubFinish4020602")
    this:SafeDestroyQuestNpc(npcs.Npc1312.alias, 1151)
end

function Quest40206:OnSubStart4020603(arg1)
    print("OnSubStart4020603")
    this:CreateQuestNpc(arg1, npcs.Npc1055.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1055.alias, 40206):DoFreeStyle(1090, true, nil, true, true, false, true)
    this:NpcCreateWithNpcTriggerAndBlackscreen(4020603, 0, 15, 0, npcs.Npc1313.id)
    this:DailyNpcSafeHideSelf(npcs.Npc7007.alias, true, 1)
end

function Quest40206:OnSubFinish4020603(arg1)
    print("OnSubFinish4020603")
    this:SafeDestroyQuestNpc(npcs.Npc1055.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 3)
    this:LightNotifyTo(npcs.Npc7007.alias, 0, true)
end

function Quest40206:OnSubStart4020604(arg1)
    print("OnSubStart4020604")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4020604, 0, 15, 0, npcs.Npc1313.id)
end

function Quest40206:OnSubFinish4020604(arg1)
    print("OnSubFinish4020604")
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 3)
end

function Quest40206:OnSubStart4020613(arg1)
    print("OnSubStart4020613")
    this:CreateQuestNpc(arg1, npcs.Npc15836.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc15837.id, 0, false, 0)
end

function Quest40206:OnSubFinish4020613(arg1)
    print("OnSubFinish4020613")
    this:SafeDestroyQuestNpc(npcs.Npc15836.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15837.alias, 3)
end

function Quest40206:OnSubStart4020605(arg1)
    print("OnSubStart4020605")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4020605, 0, 50, 0, npcs.Npc1313.id)
end

function Quest40206:OnSubFinish4020605(arg1)
    print("OnSubFinish4020605")
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 3)
end

function Quest40206:OnSubStart4020615(arg1)
    print("OnSubStart4020615")
    actorMgr:CreateActorWithPos("Q4020615Trigger", "Actor/Gadget/Q4020615Trigger", 70900002, 0, points._Q4020615TriggerPoint_.pos, points._Q4020615TriggerPoint_.rot, true, false, 3)
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiTour")
end

function Quest40206:OnSubFinish4020615(arg1)
    print("OnSubFinish4020615")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_4020602, nil)
    end)
end

function Quest40206:OnSubStart4020616(arg1)
    print("OnSubStart4020616")
    actorMgr:CreateActorWithPos("Q4020616Trigger", "Actor/Gadget/Q4020616Trigger", 70900002, 0, points._Q4020616TriggerPoint_.pos, points._Q4020616TriggerPoint_.rot, true, false, 3)
end

function Quest40206:OnSubFinish4020616(arg1)
    print("OnSubFinish4020616")
end

function Quest40206:OnSubStart4020606(arg1)
    print("OnSubStart4020606")
    this:DisableMainPageWithConfigByQuest(true, "DisableNodKraiTour")
end

function Quest40206:OnSubFinish4020606(arg1)
    print("OnSubFinish4020606")
    this:DisableMainPageWithConfigByQuest(false, "DisableNodKraiTour")
end

function Quest40206:OnSubFailed4020606(arg1)
    print("OnSubFailed4020606")
    this:ClearNarratorTask()
    this:ShowBlackScreenWithDialogText(0, 3, 0.5, nil, nil, nil, 0, false, true)
end

function Quest40206:OnSubStart4020607(arg1)
    print("OnSubStart4020607")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1313.id, 0, 4020607, 50, true)
end

function Quest40206:OnSubFinish4020607(arg1)
    print("OnSubFinish4020607")
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 3)
end

function Quest40206:OnSubStart4020614(arg1)
    print("OnSubStart4020614")
    actorMgr:CreateActorWithPos("Q4020614Trigger", "Actor/Gadget/Q4020614Trigger", 70900002, 0, points._Q4020614TriggerPoint_.pos, points._Q4020614TriggerPoint_.rot, true, false, 3)
end

function Quest40206:OnSubFinish4020614(arg1)
    print("OnSubFinish4020614")
    this:CallDelayByQuest("delay1", 10, function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_4020604, nil)
    end)
end

function Quest40206:OnSubStart4020608(arg1)
    print("OnSubStart4020608")
    this:CreateQuestNpc(arg1, npcs.Npc15467.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15467.alias, 40206):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc15537.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15537.alias, 40206):DoFreeStyle(1320, true, nil, true, true, false, false)
end

function Quest40206:OnSubFinish4020608(arg1)
    print("OnSubFinish4020608")
    this:SafeDestroyQuestNpc(npcs.Npc15467.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15537.alias, 3)
end

function Quest40206:OnSubFailed4020608(arg1)
    print("OnSubFailed4020608")
    this:SafeDestroyQuestNpc(npcs.Npc15467.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15537.alias, 3)
    this:ClearNarratorTask()
end

function Quest40206:OnSubStart4020609(arg1)
    print("OnSubStart4020609")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4020609, 0, 30, 0, npcs.Npc1313.id)
end

function Quest40206:OnSubFinish4020609(arg1)
    print("OnSubFinish4020609")
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 3)
end

function Quest40206:OnSubStart4020610(arg1)
    print("OnSubStart4020610")
end

function Quest40206:OnSubFinish4020610(arg1)
    print("OnSubFinish4020610")
end

function Quest40206:OnSubStart4020611(arg1)
    print("OnSubStart4020611")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4020611, 0, 30, 0, npcs.Npc1313.id)
end

function Quest40206:OnSubFinish4020611(arg1)
    print("OnSubFinish4020611")
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 3)
end

return Quest40206

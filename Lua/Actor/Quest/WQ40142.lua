require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40142 = class("Quest40142", QuestActorProxy)
Quest40142.defaultAlias = "Quest40142"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest40142:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest40142:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4014201"] = self.OnSubStart4014201,
        ["4014205"] = self.OnSubStart4014205,
        ["4014202"] = self.OnSubStart4014202,
        ["4014206"] = self.OnSubStart4014206,
        ["4014207"] = self.OnSubStart4014207,
        ["4014208"] = self.OnSubStart4014208,
        ["4014203"] = self.OnSubStart4014203,
        ["4014204"] = self.OnSubStart4014204
    }
end

function Quest40142:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4014201"] = self.OnSubFinish4014201,
        ["4014205"] = self.OnSubFinish4014205,
        ["4014202"] = self.OnSubFinish4014202,
        ["4014206"] = self.OnSubFinish4014206,
        ["4014207"] = self.OnSubFinish4014207,
        ["4014208"] = self.OnSubFinish4014208,
        ["4014203"] = self.OnSubFinish4014203,
        ["4014204"] = self.OnSubFinish4014204
    }
end

function Quest40142:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40142:Start()
    print("Start")
end

function Quest40142:OnDestroy()
    print("OnDestroy")
end

function Quest40142:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40142:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40142:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1077Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10232Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1021Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1073Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1076Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13862Data.alias, 3)
    this:DestroyNpcTrigger("Q4014202N1075Trigger")
    this:DestroyNpcTrigger("Q4014203N10232Trigger")
    this:DestroyNpcTrigger("Q4014205N13862Trigger")
    this:ActorDestroy("Q4014204Trigger")
    this:NpcDestroy(npcs.PaimonData.alias, 3)
end

function Quest40142:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if arg6 then
        n = 0
    end

    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, n, arg5, 0.5, 2)
end

function Quest40142:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest40142:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest40142:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest40142:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest40142:OnSubStart4014201(arg1)
    print("OnSubStart4014201")
end

function Quest40142:OnSubFinish4014201(arg1)
    print("OnSubFinish4014201")
    this:NarratorOnlyTaskByData(datas.Narrator_4014201, nil, 40142)
end

function Quest40142:OnSubStart4014205(arg1)
    print("OnSubStart4014205")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc13862Data.id, 4014205, 0, 10, 1)
end

function Quest40142:OnSubFinish4014205(arg1)
    print("OnSubFinish4014205")
    this:SafeDestroyQuestNpc(npcs.Npc13862Data.alias, 3)
    this:ClearNarratorTask()
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData)
end

function Quest40142:OnSubStart4014202(arg1)
    print("OnSubStart4014202")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(npcs.Npc1075Data.id, 4014202, 0, 15, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc1077Data.id, 0)
end

function Quest40142:OnSubFinish4014202(arg1)
    print("OnSubFinish4014202")
end

function Quest40142:OnSubStart4014206(arg1)
    print("OnSubStart4014206")
end

function Quest40142:OnSubFinish4014206(arg1)
    print("OnSubFinish4014206")
end

function Quest40142:OnSubStart4014207(arg1)
    print("OnSubStart4014207")
end

function Quest40142:OnSubFinish4014207(arg1)
    print("OnSubFinish4014207")
end

function Quest40142:OnSubStart4014208(arg1)
    print("OnSubStart4014208")
end

function Quest40142:OnSubFinish4014208(arg1)
    print("OnSubFinish4014208")
end

function Quest40142:OnSubStart4014203(arg1)
    print("OnSubStart4014203")
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithNpcTrigger(npcs.Npc10232Data.id, 4014203, 0, 30)
        this:CreateQuestNpc(arg1, npcs.Npc1075Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1077Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1021Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1073Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc1075Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1077Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc10232Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1021Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1073Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1075Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1077Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest40142:OnSubFinish4014203(arg1)
    print("OnSubFinish4014203")
    this:NarratorOnlyTaskByData(datas.Narrator_4014202, nil, 40142)
    this:DestroyQuestNpcActor(npcs.Npc1075Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1077Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc10232Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1021Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1073Data.alias, 3)
end

function Quest40142:OnSubStart4014204(arg1)
    print("OnSubStart4014204")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1075Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1077Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc10232Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1021Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1073Data.id, 0)
        this:NpcCreateWithNpcTrigger(npcs.Npc1076Data.id, 4014204, 0, 15)
        this:GetQuestNpcActor(npcs.Npc1076Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1021Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc10232Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1075Data.alias):DoFreeStyle(1220, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1073Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1077Data.alias):DoFreeStyle(1230, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc1075Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1077Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc10232Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1021Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1073Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest40142:OnSubFinish4014204(arg1)
    print("OnSubFinish4014204")
    this:CreateQuestOrphanNpc(arg1, npcs.Npc1076Data.id, 0, false, 0.5)
    actorMgr:CreateActorWithPos("Q4014204Trigger", "Actor/Gadget/Q4014204Trigger", 70900002, 0, points.TPos_Q4014204Trigger.pos, points.TPos_Q4014204Trigger.rot, true, false, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1075Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1077Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc10232Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1021Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1073Data.alias, 3)
    this:ClearNarratorTask()
    this:GetQuestNpcActor(npcs.Npc1076Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    local questGlobalVar = this:GetQuestGlobalVar(7110201)
    local v = this:GetQuestGlobalVar(7110301)
    local questGlobalVar2 = this:GetQuestGlobalVar(7110001)
    if questGlobalVar == 0 then
        this:SetNavigationByMainId(71102, true)
    elseif v == 0 then
        this:SetNavigationByMainId(71103, true)
    elseif questGlobalVar2 == 0 then
        this:SetNavigationByMainId(71100, true)
    end
end

return Quest40142

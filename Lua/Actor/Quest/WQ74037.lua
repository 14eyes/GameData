require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74037 = class("Quest74037", QuestActorProxy)
Quest74037.defaultAlias = "Quest74037"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest74037:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest74037:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7403701"] = self.OnSubStart7403701,
        ["7403702"] = self.OnSubStart7403702,
        ["7403703"] = self.OnSubStart7403703,
        ["7403704"] = self.OnSubStart7403704,
        ["7403707"] = self.OnSubStart7403707,
        ["7403705"] = self.OnSubStart7403705,
        ["7403706"] = self.OnSubStart7403706,
        ["7403708"] = self.OnSubStart7403708,
        ["7403709"] = self.OnSubStart7403709
    }
end

function Quest74037:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7403701"] = self.OnSubFinish7403701,
        ["7403702"] = self.OnSubFinish7403702,
        ["7403703"] = self.OnSubFinish7403703,
        ["7403704"] = self.OnSubFinish7403704,
        ["7403707"] = self.OnSubFinish7403707,
        ["7403705"] = self.OnSubFinish7403705,
        ["7403706"] = self.OnSubFinish7403706,
        ["7403708"] = self.OnSubFinish7403708,
        ["7403709"] = self.OnSubFinish7403709
    }
end

function Quest74037:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74037:Start()
    print("Start")
end

function Quest74037:OnDestroy()
    print("OnDestroy")
end

function Quest74037:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74037:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74037:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74037:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7403708)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 7403709)
    end
end

function Quest74037:OnSubStart7403701(arg1)
    print("OnSubStart7403701")
end

function Quest74037:OnSubFinish7403701(arg1)
    print("OnSubFinish7403701")
end

function Quest74037:OnSubStart7403702(arg1)
    print("OnSubStart7403702")
    actorMgr:CreateActorWithPos("Q74037Trigger2", "Actor/Gadget/Q74037Trigger2", 70900002, 0, points.TPos_Q74037Trigger2.pos, points.TPos_Q74037Trigger2.rot, true, false, 3)
    this:CreateQuestNpc(arg1, npcs.Npc5109Data.id, 0)
    this:NotifyTo(npcs.Npc5108Data.alias, 1, true)
end

function Quest74037:OnSubFinish7403702(arg1)
    print("OnSubFinish7403702")
end

function Quest74037:OnSubStart7403703(arg1)
    print("OnSubStart7403703")
    this:CreateQuestNpc(arg1, npcs.Npc13556Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc13556Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:NotifyTo(npcs.Npc5108Data.alias, 1, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5109Data.alias)
    questNpcActor:DoFreeStyle(1240, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest74037:OnSubFinish7403703(arg1)
    print("OnSubFinish7403703")
    this:DestroyQuestNpcActor(npcs.Npc13556Data.alias, 3)
end

function Quest74037:OnSubStart7403704(arg1)
    print("OnSubStart7403704")
    this:CreateQuestNpc(arg1, npcs.Npc5033Data.id, 0)
    this:NotifyTo(npcs.Npc5108Data.alias, 1, true)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc5109Data.alias)
    questNpcActor:DoFreeStyle(1240, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest74037:OnSubFinish7403704(arg1)
    print("OnSubFinish7403704")
end

function Quest74037:OnSubStart7403707(arg1)
    print("OnSubStart7403707")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13556Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    this:NotifyTo(npcs.Npc5108Data.alias, 1, true)
    local v = this:GetQuestNpcActor(npcs.Npc5109Data.alias)
    v:DoFreeStyle(1240, true, nil, true, true, false, true)
    v:DisableInteeHeadCtrl(true)
end

function Quest74037:OnSubFinish7403707(arg1)
    print("OnSubFinish7403707")
end

function Quest74037:OnSubStart7403705(arg1)
    print("OnSubStart7403705")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc13556Data.alias)
    questNpcActor:DoFreeStyle(1190, true, nil, true, true, false, true)
    questNpcActor:DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q74037Trigger", "Actor/Gadget/Q74037Trigger", 70900002, 0, points.TPos_Q74037Trigger.pos, points.TPos_Q74037Trigger.rot, true, false, 3)
    this:NotifyTo(npcs.Npc5108Data.alias, 1, true)
    local v = this:GetQuestNpcActor(npcs.Npc5109Data.alias)
    v:DoFreeStyle(1240, true, nil, true, true, false, true)
    v:DisableInteeHeadCtrl(true)
end

function Quest74037:OnSubFinish7403705(arg1)
    print("OnSubFinish7403705")
    this:LevelLoadFinishSafeCall(function(arg1_2)
        this:GetQuestNpcActor(npcs.Npc13556Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc5033Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc13556Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc5109Data.alias, 3)
        this:TransmitPlayerWithDialogTextById(arg1, 1, nil, 0, nil, nil)
    end)
end

function Quest74037:OnSubStart7403706(arg1)
    print("OnSubStart7403706")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc5109Data.id, 0)
        this:NotifyTo(npcs.Npc5108Data.alias, 1, true)
        actorMgr:CreateActorWithPos("Q74037Trigger1", "Actor/Gadget/Q74037Trigger1", 70900002, 0, {x = 3698.056, y = 485.0, z = 3630.036}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    end)
end

function Quest74037:OnSubFinish7403706(arg1)
    print("OnSubFinish7403706")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc5109Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc5109Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc5033Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc13556Data.alias, 3)
        this:LightNotifyTo(npcs.Npc5108Data.alias, 0, true)
    end)
end

function Quest74037:OnSubStart7403708(arg1)
    print("OnSubStart7403708")
end

function Quest74037:OnSubFinish7403708(arg1)
    print("OnSubFinish7403708")
end

function Quest74037:OnSubStart7403709(arg1)
    print("OnSubStart7403709")
end

function Quest74037:OnSubFinish7403709(arg1)
    print("OnSubFinish7403709")
end

return Quest74037

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73705 = class("Quest73705", QuestActorProxy)
Quest73705.defaultAlias = "Quest73705"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest73705:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest73705:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7370501"] = self.OnSubStart7370501,
        ["7370502"] = self.OnSubStart7370502,
        ["7370503"] = self.OnSubStart7370503
    }
end

function Quest73705:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7370501"] = self.OnSubFinish7370501,
        ["7370502"] = self.OnSubFinish7370502,
        ["7370503"] = self.OnSubFinish7370503
    }
end

function Quest73705:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73705:Start()
    print("Start")
end

function Quest73705:OnDestroy()
    print("OnDestroy")
end

function Quest73705:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73705:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73705:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ActorDestroy("Q73705Trigger")
    this:ActorDestroy("Q73705Trigger_1")
    this:DestroyQuestNpcActor(npcs.Npc1051.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1067.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1052.alias, 3)
    this:DestroyQuestNpcActor(npcs.Ambor.alias, 3)
end

function Quest73705:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q73705Trigger")
    this:ActorDestroy("Q73705Trigger_1")
    this:DestroyQuestNpcActor(npcs.Npc1051.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1067.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1052.alias, 3)
    this:DestroyQuestNpcActor(npcs.Ambor.alias, 3)
end

function Quest73705:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest73705:OnSubStart7370501(arg1)
    print("OnSubStart7370501")
    actorMgr:CreateActorWithPos("Q73705Trigger_1", "Actor/Gadget/Q73705Trigger_1", 70900002, 0, points._Q73705Trigger_1Point_.pos, points._Q73705Trigger_1Point_.rot, true, false, 3)
    this:CreateQuestNpc(arg1, npcs.Npc1051.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1067.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1067.alias, 73705):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1067.alias, 73705):DisableInteeHeadCtrl(true)
end

function Quest73705:OnSubFinish7370501(arg1)
    print("OnSubFinish7370501")
    this:DestroyQuestNpcActor(npcs.Npc1051.alias, 3)
end

function Quest73705:OnSubStart7370502(arg1)
    print("OnSubStart7370502")
    this:GetQuestNpcActor(npcs.Ambor.alias, 73705):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1067.alias, 73705):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1067.alias, 73705):DisableInteeHeadCtrl(true)
end

function Quest73705:OnSubFinish7370502(arg1)
    print("OnSubFinish7370502")
end

function Quest73705:OnSubStart7370503(arg1)
    print("OnSubStart7370503")
    actorMgr:CreateActorWithPos("Q73705Trigger", "Actor/Gadget/Q73705Trigger", 70900002, 0, points._Q73705TriggerPoint_.pos, points._Q73705TriggerPoint_.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Ambor.alias, 73705):DoFreeStyle(1220, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1067.alias, 73705):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1067.alias, 73705):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1067.alias, 73705):DisableInteeHeadCtrl(true)
end

function Quest73705:OnSubFinish7370503(arg1)
    print("OnSubFinish7370503")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1067.alias, 3)
        this:DestroyQuestNpcActor(npcs.Ambor.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc1052.alias, 3)
    end, function(arg1)
        this:ShowTutorialDialog(2411, nil)
    end, nil, 0, false, true)
end

return Quest73705

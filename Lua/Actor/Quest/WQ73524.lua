require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73524 = class("Quest73524", QuestActorProxy)
Quest73524.defaultAlias = "Quest73524"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest73524:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest73524:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7352401"] = self.OnSubStart7352401,
        ["7352402"] = self.OnSubStart7352402,
        ["7352403"] = self.OnSubStart7352403,
        ["7352405"] = self.OnSubStart7352405,
        ["7352406"] = self.OnSubStart7352406,
        ["7352404"] = self.OnSubStart7352404
    }
end

function Quest73524:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7352401"] = self.OnSubFinish7352401,
        ["7352402"] = self.OnSubFinish7352402,
        ["7352403"] = self.OnSubFinish7352403,
        ["7352405"] = self.OnSubFinish7352405,
        ["7352406"] = self.OnSubFinish7352406,
        ["7352404"] = self.OnSubFinish7352404
    }
end

function Quest73524:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7352403"] = self.OnSubFailed7352403}
end

function Quest73524:Start()
    print("Start")
end

function Quest73524:OnDestroy()
    print("OnDestroy")
end

function Quest73524:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73524:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73524:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1064Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1053Data.alias, 3)
    actorMgr:DestroyEntityActor("Q73524Trigger", 3, false)
end

function Quest73524:OnSubStart7352401(arg1)
    print("OnSubStart7352401")
end

function Quest73524:OnSubFinish7352401(arg1)
    print("OnSubFinish7352401")
end

function Quest73524:OnSubStart7352402(arg1)
    print("OnSubStart7352402")
end

function Quest73524:OnSubFinish7352402(arg1)
    print("OnSubFinish7352402")
end

function Quest73524:OnSubStart7352403(arg1)
    print("OnSubStart7352403")
    this:CreateQuestNpc(arg1, npcs.Npc1064Data.id, 0)
end

function Quest73524:OnSubFinish7352403(arg1)
    print("OnSubFinish7352403")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1064Data.alias, 3)
    end)
end

function Quest73524:OnSubFailed7352403(arg1)
    print("OnSubFailed7352403")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId, 2, nil, nil)
end

function Quest73524:OnSubStart7352405(arg1)
    print("OnSubStart7352405")
    actorMgr:CreateActorWithPos("Q73524Trigger", "Actor/Gadget/Q73524Trigger", 70900002, 0, points.TPos_Q73524Trigger.pos, points.TPos_Q73524Trigger.rot, true, false, 3)
end

function Quest73524:OnSubFinish7352405(arg1)
    print("OnSubFinish7352405")
end

function Quest73524:OnSubStart7352406(arg1)
    print("OnSubStart7352406")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1064Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc1053Data.id, 0)
        this:GetQuestNpcActor(npcs.Npc1064Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1053Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc1064Data.alias):DoFreeStyle(1170, true, nil, true, true, false, false)
    end)
end

function Quest73524:OnSubFinish7352406(arg1)
    print("OnSubFinish7352406")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1064Data.alias):DisableInteeHeadCtrl(false)
        this:GetQuestNpcActor(npcs.Npc1053Data.alias):DisableInteeHeadCtrl(false)
        this:DestroyQuestNpcActor(npcs.Npc1064Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc1053Data.alias, 3)
    end)
end

function Quest73524:OnSubStart7352404(arg1)
    print("OnSubStart7352404")
end

function Quest73524:OnSubFinish7352404(arg1)
    print("OnSubFinish7352404")
end

return Quest73524

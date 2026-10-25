require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73650 = class("Quest73650", QuestActorProxy)
Quest73650.defaultAlias = "Quest73650"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73650:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73650:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7365001"] = self.OnSubStart7365001, ["7365002"] = self.OnSubStart7365002}
end

function Quest73650:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7365001"] = self.OnSubFinish7365001, ["7365002"] = self.OnSubFinish7365002}
end

function Quest73650:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73650:Start()
    print("Start")
end

function Quest73650:OnDestroy()
    print("OnDestroy")
end

function Quest73650:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73650:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73650:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30225Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7365001BubbleTrigger", 3, false)
    actorMgr:DestroyEntityActor("Q7365002Trigger", 3, false)
end

function Quest73650:OnSubStart7365001(arg1)
    print("OnSubStart7365001")
    self:CreateQuestNpc(arg1, npcs.Npc30225Data.id, 1)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc30225Data.alias)
    questNpcActor:DoFreeStyle(1160, true, nil, true, true, false)
    questNpcActor:DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q7365001BubbleTrigger", "Actor/Gadget/Q7365001BubbleTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7365001_N30225").pos, sceneData:GetDummyPoint(3, "Q7365001_N30225").rot, true, false, 3)
end

function Quest73650:OnSubFinish7365001(arg1)
    print("OnSubFinish7365001")
    self:TransmitPlayerWithTextById(arg1, 1, datas.TextmapId, 3)
end

function Quest73650:OnSubStart7365002(arg1)
    print("OnSubStart7365002")
    self:CreateQuestNpc(arg1, npcs.Npc30225Data.id, 1)
    actorMgr:CreateActorWithPos("Q7365002Trigger", "Actor/Gadget/Q7365002Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7365002_N30225").pos, sceneData:GetDummyPoint(3, "Q7365002_N30225").rot, true, false, 3)
end

function Quest73650:OnSubFinish7365002(arg1)
    print("OnSubFinish7365002")
    self:SafeDestroyQuestNpc(npcs.Npc30225Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:ShowTutorialDialog(869)
    end)
end

return Quest73650

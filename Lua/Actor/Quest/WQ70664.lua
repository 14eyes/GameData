require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70664 = class("Quest70664", QuestActorProxy)
Quest70664.defaultAlias = "Quest70664"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70664:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70664:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7066401"] = self.OnSubStart7066401}
end

function Quest70664:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7066401"] = self.OnSubFinish7066401}
end

function Quest70664:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70664:Start()
    print("Start")
end

function Quest70664:OnDestroy()
    print("OnDestroy")
end

function Quest70664:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70664:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70664:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc30153Data.alias, 3)
end

function Quest70664:OnSubStart7066401(arg1)
    print("OnSubStart7066401")
    self:CreateQuestNpc(arg1, npcs.Npc30153Data.id, 0)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc30153Data.alias)
    questNpcActor:DoFreeStyle(1240, true, nil, true, true, false, false)
    questNpcActor:DisableInteeHeadCtrl(true)
end

function Quest70664:OnSubFinish7066401(arg1)
    print("OnSubFinish7066401")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc30153Data.alias)
        questNpcActor:DisableInteeHeadCtrl(false)
        questNpcActor:DoFreeStateTrigger()
        arg1:DestroyQuestNpcActor(npcs.Npc30153Data.alias, 3)
        arg1:ShowTutorialDialog(888)
    end)
end

return Quest70664

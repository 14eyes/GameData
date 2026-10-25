require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest1033 = class("Quest1033", QuestActorProxy)
Quest1033.defaultAlias = "Quest1033"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest1033:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest1033:OnSubStartHandlerBuild()
    self.subStartHandlers = {["103301"] = self.OnSubStart103301}
end

function Quest1033:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["103301"] = self.OnSubFinish103301}
end

function Quest1033:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest1033:Start()
    print("Start")
end

function Quest1033:OnDestroy()
    print("OnDestroy")
end

function Quest1033:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest1033:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest1033:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest1033:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest1033:OnSubStart103301(arg1)
    print("OnSubStart103301")
    self:NpcCreateWithActionSafeCall(arg1, npcs.XiaoData.id, 1)
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.XiaoData.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest1033:OnSubFinish103301(arg1)
    print("OnSubFinish103301")
    self:ActionSafeCall(function(arg1)
        arg1:DestroyQuestNpcActor(npcs.XiaoData.alias, 3)
    end)

    self:GetQuestNpcActor(npcs.XiaoData.alias):DisableInteeHeadCtrl(false)
end

return Quest1033

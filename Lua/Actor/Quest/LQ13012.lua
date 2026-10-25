require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest13012 = class("Quest13012", QuestActorProxy)
Quest13012.defaultAlias = "Quest13012"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest13012:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest13012:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1301201"] = self.OnSubStart1301201, ["1301202"] = self.OnSubStart1301202}
end

function Quest13012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1301201"] = self.OnSubFinish1301201, ["1301202"] = self.OnSubFinish1301202}
end

function Quest13012:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest13012:Start()
    print("Start")
end

function Quest13012:OnDestroy()
    print("OnDestroy")
end

function Quest13012:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest13012:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest13012:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest13012:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest13012:OnSubStart1301201(arg1)
    print("OnSubStart1301201")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1058Data.id, 1)
        arg1_2:GetQuestNpcActor(npcs.Npc1058Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    end)
end

function Quest13012:OnSubFinish1301201(arg1)
    print("OnSubFinish1301201")
    self:NpcDestroy(npcs.Npc1058Data.alias, 3)
end

function Quest13012:OnSubStart1301202(arg1)
    print("OnSubStart1301202")
end

function Quest13012:OnSubFinish1301202(arg1)
    print("OnSubFinish1301202")
end

return Quest13012

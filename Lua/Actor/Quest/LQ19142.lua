require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19142 = class("Quest19142", QuestActorProxy)
Quest19142.defaultAlias = "Quest19142"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19142:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19142:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1914201"] = self.OnSubStart1914201}
end

function Quest19142:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1914201"] = self.OnSubFinish1914201}
end

function Quest19142:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19142:Start()
    print("Start")
end

function Quest19142:OnDestroy()
    print("OnDestroy")
end

function Quest19142:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19142:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19142:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_ShinobuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 3)
end

function Quest19142:OnSubStart1914201(arg1)
    print("OnSubStart1914201")
    self:RequestCoopInteractionFromSubStartPoint(106501, 1914201)
    self:CreateQuestNpc(arg1, npcs.Npc1034Data.id, 2)
end

function Quest19142:OnSubFinish1914201(arg1)
    print("OnSubFinish1914201")
    self:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 3)
end

return Quest19142

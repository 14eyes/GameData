require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19088 = class("Quest19088", QuestActorProxy)
Quest19088.defaultAlias = "Quest19088"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19088:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19088:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1908801"] = self.OnSubStart1908801, ["1908802"] = self.OnSubStart1908802}
end

function Quest19088:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1908801"] = self.OnSubFinish1908801, ["1908802"] = self.OnSubFinish1908802}
end

function Quest19088:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1908801"] = self.OnSubFailed1908801, ["1908802"] = self.OnSubFailed1908802}
end

function Quest19088:Start()
    print("Start")
end

function Quest19088:OnDestroy()
    print("OnDestroy")
end

function Quest19088:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19088:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19088:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest19088:destroynpc()
    print("destroynpc")
    self:SafeDestroyQuestNpc(npcs.Npc140901Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
    self:NotifyTo("Npc1409", 0, true)
end

function Quest19088:OnSubStart1908801(arg1)
    print("OnSubStart1908801")
    self:RequestCoopInteractionFromSubStartPoint(103402, 1908801)
    self:CreateQuestNpc(arg1, npcs.Npc140901Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc1027Data.id, 1)
    self:NotifyTo("Npc1409", 1, true)
end

function Quest19088:OnSubFinish1908801(arg1)
    print("OnSubFinish1908801")
end

function Quest19088:OnSubFailed1908801(arg1)
    print("OnSubFailed1908801")
end

function Quest19088:OnSubStart1908802(arg1)
    print("OnSubStart1908802")
    self:RequestCoopInteractionFromSubStartPoint(103402, 1908802)
end

function Quest19088:OnSubFinish1908802(arg1)
    print("OnSubFinish1908802")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroynpc, nil, nil, "")
end

function Quest19088:OnSubFailed1908802(arg1)
    print("OnSubFailed1908802")
end

return Quest19088

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19089 = class("Quest19089", QuestActorProxy)
Quest19089.defaultAlias = "Quest19089"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19089:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19089:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1908901"] = self.OnSubStart1908901,
        ["1908902"] = self.OnSubStart1908902,
        ["1908903"] = self.OnSubStart1908903
    }
end

function Quest19089:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1908901"] = self.OnSubFinish1908901,
        ["1908902"] = self.OnSubFinish1908902,
        ["1908903"] = self.OnSubFinish1908903
    }
end

function Quest19089:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1908901"] = self.OnSubFailed1908901,
        ["1908902"] = self.OnSubFailed1908902,
        ["1908903"] = self.OnSubFailed1908903
    }
end

function Quest19089:Start()
    print("Start")
end

function Quest19089:OnDestroy()
    print("OnDestroy")
end

function Quest19089:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19089:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19089:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest19089:destroynpc()
    print("destroynpc")
    self:SafeDestroyQuestNpc(npcs.Npc140901Data.alias, 3)
    self:NotifyTo("Npc1409", 0, true)
end

function Quest19089:destroyNoel()
    print("destroyNoel")
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
end

function Quest19089:OnSubStart1908901(arg1)
    print("OnSubStart1908901")
    self:RequestCoopInteractionFromSubStartPoint(103402, 1908801)
    self:CreateQuestNpc(arg1, npcs.Npc1027Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc140901Data.id, 1)
    self:NotifyTo("Npc1409", 1, true)
end

function Quest19089:OnSubFinish1908901(arg1)
    print("OnSubFinish1908901")
end

function Quest19089:OnSubFailed1908901(arg1)
    print("OnSubFailed1908901")
end

function Quest19089:OnSubStart1908902(arg1)
    print("OnSubStart1908902")
    self:RequestCoopInteractionFromSubStartPoint(103402, 1908901)
end

function Quest19089:OnSubFinish1908902(arg1)
    print("OnSubFinish1908902")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroyNoel, nil, nil, "")
end

function Quest19089:OnSubFailed1908902(arg1)
    print("OnSubFailed1908902")
end

function Quest19089:OnSubStart1908903(arg1)
    print("OnSubStart1908903")
    self:RequestCoopInteractionFromSubStartPoint(103402, 1908902)
    self:CreateQuestNpc(arg1, npcs.Npc1027Data.id, 1)
end

function Quest19089:OnSubFinish1908903(arg1)
    print("OnSubFinish1908903")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroynpc, nil, nil, "")
end

function Quest19089:OnSubFailed1908903(arg1)
    print("OnSubFailed1908903")
end

return Quest19089

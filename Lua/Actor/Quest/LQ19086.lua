require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19086 = class("Quest19086", QuestActorProxy)
Quest19086.defaultAlias = "Quest19086"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19086:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19086:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1908601"] = self.OnSubStart1908601,
        ["1908603"] = self.OnSubStart1908603,
        ["1908604"] = self.OnSubStart1908604,
        ["1908608"] = self.OnSubStart1908608,
        ["1908606"] = self.OnSubStart1908606,
        ["1908607"] = self.OnSubStart1908607,
        ["1908605"] = self.OnSubStart1908605,
        ["1908602"] = self.OnSubStart1908602
    }
end

function Quest19086:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1908601"] = self.OnSubFinish1908601,
        ["1908603"] = self.OnSubFinish1908603,
        ["1908604"] = self.OnSubFinish1908604,
        ["1908608"] = self.OnSubFinish1908608,
        ["1908606"] = self.OnSubFinish1908606,
        ["1908607"] = self.OnSubFinish1908607,
        ["1908605"] = self.OnSubFinish1908605,
        ["1908602"] = self.OnSubFinish1908602
    }
end

function Quest19086:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1908601"] = self.OnSubFailed1908601,
        ["1908603"] = self.OnSubFailed1908603,
        ["1908604"] = self.OnSubFailed1908604,
        ["1908608"] = self.OnSubFailed1908608,
        ["1908606"] = self.OnSubFailed1908606,
        ["1908607"] = self.OnSubFailed1908607,
        ["1908605"] = self.OnSubFailed1908605,
        ["1908602"] = self.OnSubFailed1908602
    }
end

function Quest19086:Start()
    print("Start")
end

function Quest19086:OnDestroy()
    print("OnDestroy")
end

function Quest19086:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19086:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19086:OnMainCanceled(arg1)
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc140901Data.alias, 3)
    self:LightNotifyTo("Npc1409", 0, true)
end

function Quest19086:createNoel1()
    print("createNoel1")
    self:CreateQuestNpcById(1908605, npcs.Npc1027Data.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(103402, 1908601)
end

function Quest19086:destroyNoel()
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
end

function Quest19086:OnSubStart1908601(arg1)
    print("OnSubStart1908601")
    self:NotifyTo("Npc1409", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc140901Data.id, 2)
    self:RequestCoopInteractionFromSubStartPoint(103402, 1908601)
end

function Quest19086:OnSubFinish1908601(arg1)
    print("OnSubFinish1908601")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroyNoel, nil, nil, "")
end

function Quest19086:OnSubFailed1908601(arg1)
    print("OnSubFailed1908601")
end

function Quest19086:OnSubStart1908603(arg1)
    print("OnSubStart1908603")
    self:NotifyTo("Npc1409", 1, true)
end

function Quest19086:OnSubFinish1908603(arg1)
    print("OnSubFinish1908603")
end

function Quest19086:OnSubFailed1908603(arg1)
    print("OnSubFailed1908603")
end

function Quest19086:OnSubStart1908604(arg1)
    print("OnSubStart1908604")
    self:NotifyTo("Npc1409", 1, true)
end

function Quest19086:OnSubFinish1908604(arg1)
    print("OnSubFinish1908604")
    self:FinishQuestID(true, 1908608)
end

function Quest19086:OnSubFailed1908604(arg1)
    print("OnSubFailed1908604")
end

function Quest19086:OnSubStart1908608(arg1)
    print("OnSubStart1908608")
    self:NotifyTo("Npc1409", 1, true)
end

function Quest19086:OnSubFinish1908608(arg1)
    print("OnSubFinish1908608")
    self:FinishQuestID(true, 1908604)
end

function Quest19086:OnSubFailed1908608(arg1)
    print("OnSubFailed1908608")
end

function Quest19086:OnSubStart1908606(arg1)
    print("OnSubStart1908606")
    self:NotifyTo("Npc1409", 1, true)
    self:RequestCoopInteractionFromSubStartPoint(103402, 1908602)
    self:RequestInteraction(npcs.Npc140901Data.alias)
end

function Quest19086:OnSubFinish1908606(arg1)
    print("OnSubFinish1908606")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroyNoel, nil, nil, "")
end

function Quest19086:OnSubFailed1908606(arg1)
    print("OnSubFailed1908606")
end

function Quest19086:OnSubStart1908607(arg1)
    print("OnSubStart1908607")
    self:NotifyTo("Npc1409", 1, true)
    self:RequestCoopInteractionFromSubStartPoint(103402, 1908603)
    self:RequestInteraction(npcs.Npc140901Data.alias)
end

function Quest19086:OnSubFinish1908607(arg1)
    print("OnSubFinish1908607")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroyNoel, nil, nil, "")
end

function Quest19086:OnSubFailed1908607(arg1)
    print("OnSubFailed1908607")
end

function Quest19086:OnSubStart1908605(arg1)
    print("OnSubStart1908605")
end

function Quest19086:OnSubFinish1908605(arg1)
    print("OnSubFinish1908605")
end

function Quest19086:OnSubFailed1908605(arg1)
    print("OnSubFailed1908605")
end

function Quest19086:OnSubStart1908602(arg1)
    print("OnSubStart1908602")
end

function Quest19086:OnSubFinish1908602(arg1)
    print("OnSubFinish1908602")
end

function Quest19086:OnSubFailed1908602(arg1)
    print("OnSubFailed1908602")
end

return Quest19086

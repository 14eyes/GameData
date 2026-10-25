require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19085 = class("Quest19085", QuestActorProxy)
Quest19085.defaultAlias = "Quest19085"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19085:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19085:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1908501"] = self.OnSubStart1908501,
        ["1908502"] = self.OnSubStart1908502,
        ["1908504"] = self.OnSubStart1908504,
        ["1908503"] = self.OnSubStart1908503,
        ["1908505"] = self.OnSubStart1908505,
        ["1908506"] = self.OnSubStart1908506,
        ["1908508"] = self.OnSubStart1908508,
        ["1908507"] = self.OnSubStart1908507
    }
end

function Quest19085:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1908501"] = self.OnSubFinish1908501,
        ["1908502"] = self.OnSubFinish1908502,
        ["1908504"] = self.OnSubFinish1908504,
        ["1908503"] = self.OnSubFinish1908503,
        ["1908505"] = self.OnSubFinish1908505,
        ["1908506"] = self.OnSubFinish1908506,
        ["1908508"] = self.OnSubFinish1908508,
        ["1908507"] = self.OnSubFinish1908507
    }
end

function Quest19085:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1908501"] = self.OnSubFailed1908501,
        ["1908502"] = self.OnSubFailed1908502,
        ["1908504"] = self.OnSubFailed1908504,
        ["1908503"] = self.OnSubFailed1908503,
        ["1908505"] = self.OnSubFailed1908505,
        ["1908506"] = self.OnSubFailed1908506,
        ["1908508"] = self.OnSubFailed1908508,
        ["1908507"] = self.OnSubFailed1908507
    }
end

function Quest19085:Start()
    print("Start")
end

function Quest19085:OnDestroy()
    print("OnDestroy")
end

function Quest19085:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19085:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19085:OnMainCanceled(arg1)
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc151201Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc140901Data.alias, 3)
    self:LightNotifyTo("NPC1512", 0, true)
    self:LightNotifyTo("Npc1409", 0, true)
end

function Quest19085:destroyKaiselin()
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc151201Data.alias, 3)
    self:LightNotifyTo("NPC1512", 0, true)
end

function Quest19085:destroyNoel()
    print("destroyNoel")
    self:SafeDestroyQuestNpc(npcs.Npc1027Data.alias, 3)
end

function Quest19085:OnSubStart1908501(arg1)
    print("OnSubStart1908501")
    self:CreateQuestNpc(arg1, npcs.Npc151201Data.id, 2)
    self:NotifyTo("NPC1512", 1, true)
    self:RequestCoopInteractionFromSubStartPoint(103402, 1908501)
end

function Quest19085:OnSubFinish1908501(arg1)
    print("OnSubFinish1908501")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroyKaiselin, nil, nil, "")
end

function Quest19085:OnSubFailed1908501(arg1)
    print("OnSubFailed1908501")
end

function Quest19085:OnSubStart1908502(arg1)
    self:CreateQuestNpc(arg1, npcs.Npc140901Data.id, 2)
    self:NotifyTo("Npc1409", 1, true)
    self:RequestCoopInteractionFromSubStartPoint(103402, 1908502)
end

function Quest19085:OnSubFinish1908502(arg1)
    print("OnSubFinish1908502")
    self:ShowBlackScreen(0.5, 0.5, 0.5, self.destroyNoel, nil, nil, "")
end

function Quest19085:OnSubFailed1908502(arg1)
    print("OnSubFailed1908502")
end

function Quest19085:OnSubStart1908504(arg1)
    print("OnSubStart1908504")
end

function Quest19085:OnSubFinish1908504(arg1)
    print("OnSubFinish1908504")
end

function Quest19085:OnSubFailed1908504(arg1)
    print("OnSubFailed1908504")
end

function Quest19085:OnSubStart1908503(arg1)
    print("OnSubStart1908503")
end

function Quest19085:OnSubFinish1908503(arg1)
    print("OnSubFinish1908503")
end

function Quest19085:OnSubFailed1908503(arg1)
    print("OnSubFailed1908503")
end

function Quest19085:OnSubStart1908505(arg1)
    print("OnSubStart1908505")
end

function Quest19085:OnSubFinish1908505(arg1)
    print("OnSubFinish1908505")
end

function Quest19085:OnSubFailed1908505(arg1)
    print("OnSubFailed1908505")
end

function Quest19085:OnSubStart1908506(arg1)
    print("OnSubStart1908506")
end

function Quest19085:OnSubFinish1908506(arg1)
    print("OnSubFinish1908506")
end

function Quest19085:OnSubFailed1908506(arg1)
    print("OnSubFailed1908506")
end

function Quest19085:OnSubStart1908508(arg1)
    print("OnSubStart1908508")
end

function Quest19085:OnSubFinish1908508(arg1)
    print("OnSubFinish1908508")
end

function Quest19085:OnSubFailed1908508(arg1)
    print("OnSubFailed1908508")
end

function Quest19085:OnSubStart1908507(arg1)
    print("OnSubStart1908507")
end

function Quest19085:OnSubFinish1908507(arg1)
    print("OnSubFinish1908507")
end

function Quest19085:OnSubFailed1908507(arg1)
    print("OnSubFailed1908507")
end

return Quest19085

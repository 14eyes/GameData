require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19031 = class("Quest19031", QuestActorProxy)
Quest19031.defaultAlias = "Quest19031"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest19031:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest19031:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1903101"] = self.OnSubStart1903101,
        ["1903105"] = self.OnSubStart1903105,
        ["1903102"] = self.OnSubStart1903102,
        ["1903103"] = self.OnSubStart1903103,
        ["1903104"] = self.OnSubStart1903104,
        ["1903106"] = self.OnSubStart1903106
    }
end

function Quest19031:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1903101"] = self.OnSubFinish1903101,
        ["1903105"] = self.OnSubFinish1903105,
        ["1903102"] = self.OnSubFinish1903102,
        ["1903103"] = self.OnSubFinish1903103,
        ["1903104"] = self.OnSubFinish1903104,
        ["1903106"] = self.OnSubFinish1903106
    }
end

function Quest19031:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1903101"] = self.OnSubFailed1903101,
        ["1903105"] = self.OnSubFailed1903105,
        ["1903102"] = self.OnSubFailed1903102,
        ["1903103"] = self.OnSubFailed1903103,
        ["1903104"] = self.OnSubFailed1903104,
        ["1903106"] = self.OnSubFailed1903106
    }
end

function Quest19031:Start()
    print("Start")
end

function Quest19031:OnDestroy()
    print("OnDestroy")
end

function Quest19031:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19031:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19031:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1023Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10918Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10905Data1.alias, 3)
end

function Quest19031:OnSubStart1903101(arg1)
    print("OnSubStart1903101")
    self:RequestCoopInteractionFromSubStartPoint(103601, 1903109)
    self:CreateQuestNpc(arg1, npcs.Npc10918Data.id, 1)
    self:NotifyTo("Npc2311", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest19031:OnSubFinish1903101(arg1)
    print("OnSubFinish1903101")
    self:SafeDestroyQuestNpc(npcs.Npc10918Data.alias, 3)
end

function Quest19031:OnSubFailed1903101(arg1)
    print("OnSubFailed1903101")
end

function Quest19031:OnSubStart1903105(arg1)
    print("OnSubStart1903105")
    self:RequestCoopInteractionFromSubStartPoint(103601, 1903110)
    self:CreateQuestNpc(arg1, npcs.Npc1023Data1.id, 1)
    self:NotifyTo("Npc2311", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest19031:OnSubFinish1903105(arg1)
    print("OnSubFinish1903105")
end

function Quest19031:OnSubFailed1903105(arg1)
    print("OnSubFailed1903105")
end

function Quest19031:OnSubStart1903102(arg1)
    print("OnSubStart1903102")
    self:NotifyTo("Npc2311", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest19031:OnSubFinish1903102(arg1)
    print("OnSubFinish1903102")
end

function Quest19031:OnSubFailed1903102(arg1)
    print("OnSubFailed1903102")
end

function Quest19031:OnSubStart1903103(arg1)
    print("OnSubStart1903103")
    self:NotifyTo("Npc2311", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest19031:OnSubFinish1903103(arg1)
    print("OnSubFinish1903103")
end

function Quest19031:OnSubFailed1903103(arg1)
    print("OnSubFailed1903103")
end

function Quest19031:OnSubStart1903104(arg1)
    print("OnSubStart1903104")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    self:CallDelay(2, function(arg1_2)
        arg1_2:TransmitPlayerByQuestId(1903104, 1)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc10905Data.id, 1)
        arg1_2:RequestInteraction(npcs.Npc10905Data.alias)
    end)

    self:NotifyTo("Npc2311", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest19031:OnSubFinish1903104(arg1)
    print("OnSubFinish1903104")
    self:SafeDestroyQuestNpc(npcs.Npc10905Data.alias, 3)
end

function Quest19031:OnSubFailed1903104(arg1)
    print("OnSubFailed1903104")
end

function Quest19031:OnSubStart1903106(arg1)
    print("OnSubStart1903106")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    self:CallDelay(2, function(arg1_2)
        arg1_2:TransmitPlayerByQuestId(1903106, 1)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc10905Data.id, 1)
        arg1_2:RequestInteraction(npcs.Npc10905Data.alias)
    end)
end

function Quest19031:OnSubFinish1903106(arg1)
    print("OnSubFinish1903106")
    self:SafeDestroyQuestNpc(npcs.Npc10905Data1.alias, 3)
end

function Quest19031:OnSubFailed1903106(arg1)
    print("OnSubFailed1903106")
end

return Quest19031

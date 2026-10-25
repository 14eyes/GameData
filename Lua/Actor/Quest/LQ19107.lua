require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19107 = class("Quest19107", QuestActorProxy)
Quest19107.defaultAlias = "Quest19107"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19107:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19107:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1910701"] = self.OnSubStart1910701,
        ["1910702"] = self.OnSubStart1910702,
        ["1910703"] = self.OnSubStart1910703,
        ["1910704"] = self.OnSubStart1910704,
        ["1910705"] = self.OnSubStart1910705,
        ["1910706"] = self.OnSubStart1910706
    }
end

function Quest19107:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1910701"] = self.OnSubFinish1910701,
        ["1910702"] = self.OnSubFinish1910702,
        ["1910703"] = self.OnSubFinish1910703,
        ["1910704"] = self.OnSubFinish1910704,
        ["1910705"] = self.OnSubFinish1910705,
        ["1910706"] = self.OnSubFinish1910706
    }
end

function Quest19107:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1910701"] = self.OnSubFailed1910701,
        ["1910702"] = self.OnSubFailed1910702,
        ["1910703"] = self.OnSubFailed1910703,
        ["1910704"] = self.OnSubFailed1910704,
        ["1910705"] = self.OnSubFailed1910705,
        ["1910706"] = self.OnSubFailed1910706
    }
end

function Quest19107:Start()
    print("Start")
end

function Quest19107:OnDestroy()
    print("OnDestroy")
end

function Quest19107:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19107:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19107:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:LightNotifyTo(npcs.Npc1529Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1527Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1531Data.alias, 0, true)
    self:SafeDestroyQuestNpc(npcs.Coop_DionaData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc152901Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc152701Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10806Data.alias, 3)
    self:ActorDestroy("Q1910701Trigger")
end

function Quest19107:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19107:OnSubStart1910701(arg1)
    print("OnSubStart1910701")
    self:CreateQuestNpc(arg1, npcs.Coop_DionaData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc152901Data.id, 2)
    self:NotifyTo(npcs.Npc1529Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1527Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc10806Data.id, 4)
    self:NotifyTo(npcs.Npc1531Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(103901, 1910701)
    actorMgr:CreateActorWithPos("Q1910701Trigger", "Actor/Gadget/Q1910701Trigger", 70900002, 0, {x = -10.97958, y = 0.00674136, z = -23.17628}, {x = 0, y = 0, z = 0}, true, false, 1018)
end

function Quest19107:OnSubFinish1910701(arg1)
    print("OnSubFinish1910701")
end

function Quest19107:OnSubFailed1910701(arg1)
    print("OnSubFailed1910701")
end

function Quest19107:OnSubStart1910702(arg1)
    print("OnSubStart1910702")
    self:CreateQuestNpc(arg1, npcs.Npc152901Data.id, 1)
    self:NotifyTo(npcs.Npc1529Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc152701Data.id, 2)
    self:NotifyTo(npcs.Npc1527Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1531Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(103901, 1910702)
end

function Quest19107:OnSubFinish1910702(arg1)
    print("OnSubFinish1910702")
end

function Quest19107:OnSubFailed1910702(arg1)
    print("OnSubFailed1910702")
end

function Quest19107:OnSubStart1910703(arg1)
    print("OnSubStart1910703")
    self:CreateQuestNpc(arg1, npcs.Npc152901Data.id, 1)
    self:NotifyTo(npcs.Npc1529Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc152701Data.id, 2)
    self:NotifyTo(npcs.Npc1527Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1531Data.alias, 1, true)
end

function Quest19107:OnSubFinish1910703(arg1)
    print("OnSubFinish1910703")
end

function Quest19107:OnSubFailed1910703(arg1)
    print("OnSubFailed1910703")
end

function Quest19107:OnSubStart1910704(arg1)
    print("OnSubStart1910704")
    self:NotifyTo(npcs.Npc1529Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1527Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1531Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(103901, 1910703)
    self:RequestInteraction(npcs.Coop_DionaData.alias)
end

function Quest19107:OnSubFinish1910704(arg1)
    print("OnSubFinish1910704")
end

function Quest19107:OnSubFailed1910704(arg1)
    print("OnSubFailed1910704")
end

function Quest19107:OnSubStart1910705(arg1)
    print("OnSubStart1910705")
    self:CreateQuestNpc(arg1, npcs.Npc152901Data.id, 1)
    self:NotifyTo(npcs.Npc1529Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc152701Data.id, 2)
    self:NotifyTo(npcs.Npc1527Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1531Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(103901, 1910704)
    self:RequestInteraction(npcs.Npc10806Data.alias)
end

function Quest19107:OnSubFinish1910705(arg1)
    print("OnSubFinish1910705")
end

function Quest19107:OnSubFailed1910705(arg1)
    print("OnSubFailed1910705")
end

function Quest19107:OnSubStart1910706(arg1)
    print("OnSubStart1910706")
    self:CreateQuestNpc(arg1, npcs.Npc152901Data.id, 1)
    self:NotifyTo(npcs.Npc1529Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc152701Data.id, 2)
    self:NotifyTo(npcs.Npc1527Data.alias, 1, true)
    self:NotifyTo(npcs.Npc1531Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(103901, 1910705)
end

function Quest19107:OnSubFinish1910706(arg1)
    print("OnSubFinish1910706")
    self:SafeDestroyQuestNpc(npcs.Coop_DionaData.alias, 1018)
    self:SafeDestroyQuestNpc(npcs.Npc152901Data.alias, 1018)
    self:SafeDestroyQuestNpc(npcs.Npc152701Data.alias, 1018)
    self:SafeDestroyQuestNpc(npcs.Npc10806Data.alias, 1018)
    self:LightNotifyTo(npcs.Npc1529Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1527Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1531Data.alias, 0, true)
end

function Quest19107:OnSubFailed1910706(arg1)
    print("OnSubFailed1910706")
end

return Quest19107

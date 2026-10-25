require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70803 = class("Quest70803", QuestActorProxy)
Quest70803.defaultAlias = "Quest70803"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest70803:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest70803:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7080301"] = self.OnSubStart7080301, ["7080302"] = self.OnSubStart7080302}
end

function Quest70803:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7080301"] = self.OnSubFinish7080301, ["7080302"] = self.OnSubFinish7080302}
end

function Quest70803:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest70803:Start()
    print("Start")
end

function Quest70803:OnDestroy()
    print("OnDestroy")
end

function Quest70803:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70803:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70803:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1409Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1668Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1674Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1577Data.alias, 3)
    self:LightNotifyTo(npcs.Npc1409Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1668Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1674Data.alias, 0, true)
    self:LightNotifyTo(npcs.Npc1577Data.alias, 0, true)
end

function Quest70803:OnSubStart7080301(arg1)
    print("OnSubStart7080301")
end

function Quest70803:OnSubFinish7080301(arg1)
    print("OnSubFinish7080301")
end

function Quest70803:OnSubStart7080302(arg1)
    print("OnSubStart7080302")
    self:CreateQuestNpc(arg1, npcs.Npc1409Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1668Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc1674Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc1577Data.id, 4)
    actorMgr:CreateActorWithPos("Q7080302Trigger", "Actor/Gadget/Q7080302Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7080302_guide").pos, sceneData:GetDummyPoint(3, "Q7080302_guide").rot, true, false, 3)
end

function Quest70803:OnSubFinish7080302(arg1)
    print("OnSubFinish7080302")
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.3, 1, 0.3, function(arg1)
            arg1:SafeDestroyQuestNpc(npcs.Npc1409Data.alias, 3)
            arg1:SafeDestroyQuestNpc(npcs.Npc1668Data.alias, 3)
            arg1:SafeDestroyQuestNpc(npcs.Npc1674Data.alias, 3)
            arg1:SafeDestroyQuestNpc(npcs.Npc1577Data.alias, 3)
        end, nil, nil, "", false, true)
    end)
end

return Quest70803

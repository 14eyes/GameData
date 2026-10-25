require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73306 = class("Quest73306", QuestActorProxy)
Quest73306.defaultAlias = "Quest73306"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73306:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73306:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7330601"] = self.OnSubStart7330601}
end

function Quest73306:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7330601"] = self.OnSubFinish7330601}
end

function Quest73306:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73306:Start()
    print("Start")
end

function Quest73306:OnDestroy()
    print("OnDestroy")
end

function Quest73306:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73306:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73306:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73306:OnSubStart7330601(arg1)
    print("OnSubStart7330601")
    self:CreateQuestNpc(arg1, npcs.Npc1702Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4247Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc4218Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20723Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20724Data.id, 5)
    actorMgr:CreateActorWithPos("Q73306Trigger", "Actor/Gadget/Q73306Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "T7305508_N10000005").pos, sceneData:GetDummyPoint(3, "T7305508_N10000005").rot, true, false, 3)
end

function Quest73306:OnSubFinish7330601(arg1)
    print("OnSubFinish7330601")
    self:SafeDestroyQuestNpc(npcs.Npc1702Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4247Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4218Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20723Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20724Data.alias, 3)
end

return Quest73306

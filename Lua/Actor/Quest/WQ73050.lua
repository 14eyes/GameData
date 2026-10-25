require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73050 = class("Quest73050", QuestActorProxy)
Quest73050.defaultAlias = "Quest73050"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73050:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73050:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7305001"] = self.OnSubStart7305001,
        ["7305002"] = self.OnSubStart7305002,
        ["7305003"] = self.OnSubStart7305003,
        ["7305004"] = self.OnSubStart7305004
    }
end

function Quest73050:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7305001"] = self.OnSubFinish7305001,
        ["7305002"] = self.OnSubFinish7305002,
        ["7305003"] = self.OnSubFinish7305003,
        ["7305004"] = self.OnSubFinish7305004
    }
end

function Quest73050:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73050:Start()
    print("Start")
end

function Quest73050:OnDestroy()
    print("OnDestroy")
end

function Quest73050:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73050:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73050:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73050:OnSubStart7305001(arg1)
    print("OnSubStart7305001")
    self:CreateQuestNpc(arg1, npcs.Npc20605Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20606Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20607Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20608Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20816Data.id, 5)
end

function Quest73050:OnSubFinish7305001(arg1)
    print("OnSubFinish7305001")
end

function Quest73050:OnSubStart7305002(arg1)
    print("OnSubStart7305002")
    self:CreateQuestNpc(arg1, npcs.Npc4185Data.id, 1)
end

function Quest73050:OnSubFinish7305002(arg1)
    print("OnSubFinish7305002")
end

function Quest73050:OnSubStart7305003(arg1)
    print("OnSubStart7305003")
    self:CreateQuestNpc(arg1, npcs.Npc20576Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20577Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20578Data.id, 3)
end

function Quest73050:OnSubFinish7305003(arg1)
    print("OnSubFinish7305003")
end

function Quest73050:OnSubStart7305004(arg1)
    print("OnSubStart7305004")
end

function Quest73050:OnSubFinish7305004(arg1)
    print("OnSubFinish7305004")
end

return Quest73050

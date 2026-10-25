require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest2024 = class("Quest2024", QuestActorProxy)
Quest2024.defaultAlias = "Quest2024"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest2024:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest2024:OnSubStartHandlerBuild()
    self.subStartHandlers = {["202401"] = self.OnSubStart202401}
end

function Quest2024:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["202401"] = self.OnSubFinish202401}
end

function Quest2024:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["202401"] = self.OnSubFailed202401}
end

function Quest2024:Start()
    print("Start")
end

function Quest2024:OnDestroy()
    print("OnDestroy")
end

function Quest2024:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest2024:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest2024:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest2024:OnSubStart202401(arg1)
    print("OnSubStart202401")
    self:CreateQuestNpc(arg1, npcs.Npc1034Data.id, 1)
    actorMgr:CreateActorWithPos("Q2024Trigger", "Actor/Gadget/Q2024Trigger", 70900002, 0, {x = -2479.538, y = 446.9952, z = -4400.834}, {x = 0, y = 0, z = 0}, true, false)
    self:GetQuestNpcActor(npcs.Npc1034Data.alias):DoFreeStyle(1120)
end

function Quest2024:OnSubFinish202401(arg1)
    print("OnSubFinish202401")
    self:DestroyQuestNpcActor(npcs.Npc1034Data.alias, 3)
end

function Quest2024:OnSubFailed202401(arg1)
    print("OnSubFailed202401")
end

return Quest2024

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75074 = class("Quest75074", QuestActorProxy)
Quest75074.defaultAlias = "Quest75074"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest75074:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest75074:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7507401"] = self.OnSubStart7507401, ["7507402"] = self.OnSubStart7507402}
end

function Quest75074:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7507401"] = self.OnSubFinish7507401, ["7507402"] = self.OnSubFinish7507402}
end

function Quest75074:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75074:Start()
    print("Start")
end

function Quest75074:OnDestroy()
    print("OnDestroy")
end

function Quest75074:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75074:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75074:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75074:OnSubStart7507401(arg1)
    print("OnSubStart7507401")
    this:CreateQuestNpc(arg1, npcs.Npc6169Data.id, 0, false, 0)
end

function Quest75074:OnSubFinish7507401(arg1)
    print("OnSubFinish7507401")
end

function Quest75074:OnSubStart7507402(arg1)
    print("OnSubStart7507402")
end

function Quest75074:OnSubFinish7507402(arg1)
    print("OnSubFinish7507402")
    this:CreateQuestNpcWithTrigger("Q75074Trigger", 7507402, 6169, 0, 0, 2)
end

return Quest75074

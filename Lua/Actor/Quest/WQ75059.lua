require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75059 = class("Quest75059", QuestActorProxy)
Quest75059.defaultAlias = "Quest75059"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest75059:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest75059:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7505901"] = self.OnSubStart7505901, ["7505902"] = self.OnSubStart7505902}
end

function Quest75059:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7505901"] = self.OnSubFinish7505901, ["7505902"] = self.OnSubFinish7505902}
end

function Quest75059:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75059:Start()
    print("Start")
end

function Quest75059:OnDestroy()
    print("OnDestroy")
end

function Quest75059:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75059:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75059:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75059:OnSubStart7505901(arg1)
    print("OnSubStart7505901")
    this:CreateQuestNpc(arg1, npcs.Npc6163Data.id, 0, false, 0)
end

function Quest75059:OnSubFinish7505901(arg1)
    print("OnSubFinish7505901")
end

function Quest75059:OnSubStart7505902(arg1)
    print("OnSubStart7505902")
    this:CreateQuestNpcWithTrigger("Q75059Trigger", 7505902, 6163, 0, 5, 2)
end

function Quest75059:OnSubFinish7505902(arg1)
    print("OnSubFinish7505902")
end

return Quest75059

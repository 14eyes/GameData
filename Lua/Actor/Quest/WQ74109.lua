require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74109 = class("Quest74109", QuestActorProxy)
Quest74109.defaultAlias = "Quest74109"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74109:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74109:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7410901"] = self.OnSubStart7410901}
end

function Quest74109:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7410901"] = self.OnSubFinish7410901}
end

function Quest74109:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74109:Start()
    print("Start")
end

function Quest74109:OnDestroy()
    print("OnDestroy")
end

function Quest74109:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74109:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74109:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74109:OnSubStart7410901(arg1)
    print("OnSubStart7410901")
    this:CreateQuestNpc(arg1, npcs.Npc21082Data.id, 1)
end

function Quest74109:OnSubFinish7410901(arg1)
    print("OnSubFinish7410901")
end

return Quest74109

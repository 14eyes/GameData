require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75040 = class("Quest75040", QuestActorProxy)
Quest75040.defaultAlias = "Quest75040"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest75040:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest75040:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7504001"] = self.OnSubStart7504001}
end

function Quest75040:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7504001"] = self.OnSubFinish7504001}
end

function Quest75040:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75040:Start()
    print("Start")
end

function Quest75040:OnDestroy()
    print("OnDestroy")
end

function Quest75040:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75040:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75040:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75040:OnSubStart7504001(arg1)
    print("OnSubStart7504001")
    this:CreateQuestNpc(arg1, npcs.Npc21661Data.id, 0, false, 0)
end

function Quest75040:OnSubFinish7504001(arg1)
    print("OnSubFinish7504001")
    this:SafeDestroyQuestNpc(npcs.Npc21661Data.alias, 3)
end

return Quest75040

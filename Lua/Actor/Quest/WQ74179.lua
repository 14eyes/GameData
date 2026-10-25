require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74179 = class("Quest74179", QuestActorProxy)
Quest74179.defaultAlias = "Quest74179"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74179:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74179:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7417901"] = self.OnSubStart7417901, ["7417902"] = self.OnSubStart7417902}
end

function Quest74179:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7417901"] = self.OnSubFinish7417901, ["7417902"] = self.OnSubFinish7417902}
end

function Quest74179:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74179:Start()
    print("Start")
end

function Quest74179:OnDestroy()
    print("OnDestroy")
end

function Quest74179:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74179:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74179:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74179:OnSubStart7417901(arg1)
    print("OnSubStart7417901")
    this:CreateQuestNpc(arg1, npcs.Npc21357Data.id, 0)
end

function Quest74179:OnSubFinish7417901(arg1)
    print("OnSubFinish7417901")
end

function Quest74179:OnSubStart7417902(arg1)
    print("OnSubStart7417902")
end

function Quest74179:OnSubFinish7417902(arg1)
    print("OnSubFinish7417902")
end

return Quest74179

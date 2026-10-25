require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74171 = class("Quest74171", QuestActorProxy)
Quest74171.defaultAlias = "Quest74171"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74171:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74171:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7417101"] = self.OnSubStart7417101}
end

function Quest74171:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7417101"] = self.OnSubFinish7417101}
end

function Quest74171:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74171:Start()
    print("Start")
end

function Quest74171:OnDestroy()
    print("OnDestroy")
end

function Quest74171:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74171:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74171:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74171:OnSubStart7417101(arg1)
    print("OnSubStart7417101")
    this:CreateQuestNpc(arg1, npcs.Npc5296Data.id, 0)
end

function Quest74171:OnSubFinish7417101(arg1)
    print("OnSubFinish7417101")
    this:SafeDestroyQuestNpc(npcs.Npc5296Data.alias, 3)
end

return Quest74171

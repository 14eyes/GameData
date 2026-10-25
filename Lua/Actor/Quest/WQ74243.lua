require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74243 = class("Quest74243", QuestActorProxy)
Quest74243.defaultAlias = "Quest74243"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74243:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74243:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7424301"] = self.OnSubStart7424301}
end

function Quest74243:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7424301"] = self.OnSubFinish7424301}
end

function Quest74243:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74243:Start()
    print("Start")
end

function Quest74243:OnDestroy()
    print("OnDestroy")
end

function Quest74243:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74243:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74243:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74243:OnSubStart7424301(arg1)
    print("OnSubStart7424301")
    this:CreateQuestNpc(arg1, npcs.Npc21548Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21548Data.alias):DisableInteeHeadCtrl(true)
end

function Quest74243:OnSubFinish7424301(arg1)
    print("OnSubFinish7424301")
    this:SafeDestroyQuestNpc(npcs.Npc21548Data.alias, 3)
end

return Quest74243

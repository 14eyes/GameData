require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74139 = class("Quest74139", QuestActorProxy)
Quest74139.defaultAlias = "Quest74139"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74139:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74139:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7413901"] = self.OnSubStart7413901}
end

function Quest74139:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7413901"] = self.OnSubFinish7413901}
end

function Quest74139:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74139:Start()
    print("Start")
end

function Quest74139:OnDestroy()
    print("OnDestroy")
end

function Quest74139:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74139:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74139:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74139:OnSubStart7413901(arg1)
    print("OnSubStart7413901")
    this:CreateQuestNpc(arg1, npcs.Npc5303Data.id, 0)
end

function Quest74139:OnSubFinish7413901(arg1)
    print("OnSubFinish7413901")
    this:SafeDestroyQuestNpc(npcs.Npc5303Data.alias, 1080)
end

return Quest74139

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74160 = class("Quest74160", QuestActorProxy)
Quest74160.defaultAlias = "Quest74160"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74160:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74160:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7416001"] = self.OnSubStart7416001}
end

function Quest74160:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7416001"] = self.OnSubFinish7416001}
end

function Quest74160:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74160:Start()
    print("Start")
end

function Quest74160:OnDestroy()
    print("OnDestroy")
end

function Quest74160:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74160:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74160:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74160:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest74160:OnSubStart7416001(arg1)
    print("OnSubStart7416001")
    this:CreateQuestNpc(arg1, npcs.Npc5041Data.id, 0)
    this:DailyNpcSafeHideSelf(npcs.Npc5041Data.alias, 1, true)
end

function Quest74160:OnSubFinish7416001(arg1)
    print("OnSubFinish7416001")
    this:SafeDestroyQuestNpc(npcs.Npc5041Data.alias, 3)
end

return Quest74160

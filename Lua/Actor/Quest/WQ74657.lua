require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74657 = class("Quest74657", QuestActorProxy)
Quest74657.defaultAlias = "Quest74657"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74657:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74657:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7465701"] = self.OnSubStart7465701, ["7465702"] = self.OnSubStart7465702}
end

function Quest74657:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7465701"] = self.OnSubFinish7465701, ["7465702"] = self.OnSubFinish7465702}
end

function Quest74657:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74657:Start()
    print("Start")
end

function Quest74657:OnDestroy()
    print("OnDestroy")
end

function Quest74657:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74657:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74657:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc5136Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5136Data.alias, 0, true)
end

function Quest74657:OnSubStart7465701(arg1)
    print("OnSubStart7465701")
    this:NotifyTo(npcs.Npc5136Data.alias, 2, true)
end

function Quest74657:OnSubFinish7465701(arg1)
    print("OnSubFinish7465701")
end

function Quest74657:OnSubStart7465702(arg1)
    print("OnSubStart7465702")
    this:NotifyTo(npcs.Npc5136Data.alias, 2, true)
end

function Quest74657:OnSubFinish7465702(arg1)
    print("OnSubFinish7465702")
    this:ShowBlackScreenWithDialogText(0.3, 1.2, 0.3, function(arg1)
        this:LightNotifyTo(npcs.Npc5136Data.alias, 0, true)
    end, nil, nil, 0, false, true)
end

return Quest74657

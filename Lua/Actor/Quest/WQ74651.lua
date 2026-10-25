require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74651 = class("Quest74651", QuestActorProxy)
Quest74651.defaultAlias = "Quest74651"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74651:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74651:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7465101"] = self.OnSubStart7465101, ["7465102"] = self.OnSubStart7465102}
end

function Quest74651:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7465101"] = self.OnSubFinish7465101, ["7465102"] = self.OnSubFinish7465102}
end

function Quest74651:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74651:Start()
    print("Start")
end

function Quest74651:OnDestroy()
    print("OnDestroy")
end

function Quest74651:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74651:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74651:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc5002Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5002Data.alias, 0, true)
end

function Quest74651:OnSubStart7465101(arg1)
    print("OnSubStart7465101")
    this:NotifyTo(npcs.Npc5002Data.alias, 2, true)
end

function Quest74651:OnSubFinish7465101(arg1)
    print("OnSubFinish7465101")
end

function Quest74651:OnSubStart7465102(arg1)
    print("OnSubStart7465102")
    this:NotifyTo(npcs.Npc5002Data.alias, 2, true)
end

function Quest74651:OnSubFinish7465102(arg1)
    print("OnSubFinish7465102")
    this:ShowBlackScreenWithDialogText(0.3, 1.2, 0.3, function(arg1)
        this:LightNotifyTo(npcs.Npc5002Data.alias, 0, true)
    end, nil, nil, 0, false, true)
end

return Quest74651

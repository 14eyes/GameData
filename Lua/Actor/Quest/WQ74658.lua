require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74658 = class("Quest74658", QuestActorProxy)
Quest74658.defaultAlias = "Quest74658"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74658:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74658:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7465801"] = self.OnSubStart7465801, ["7465802"] = self.OnSubStart7465802}
end

function Quest74658:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7465801"] = self.OnSubFinish7465801, ["7465802"] = self.OnSubFinish7465802}
end

function Quest74658:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74658:Start()
    print("Start")
end

function Quest74658:OnDestroy()
    print("OnDestroy")
end

function Quest74658:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74658:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74658:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc5138Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5138Data.alias, 0, true)
end

function Quest74658:OnSubStart7465801(arg1)
    print("OnSubStart7465801")
    this:NotifyTo(npcs.Npc5138Data.alias, 2, true)
end

function Quest74658:OnSubFinish7465801(arg1)
    print("OnSubFinish7465801")
end

function Quest74658:OnSubStart7465802(arg1)
    print("OnSubStart7465802")
    this:NotifyTo(npcs.Npc5138Data.alias, 2, true)
end

function Quest74658:OnSubFinish7465802(arg1)
    print("OnSubFinish7465802")
    this:ShowBlackScreenWithDialogText(0.3, 1.2, 0.3, function(arg1)
        this:LightNotifyTo(npcs.Npc5138Data.alias, 0, true)
    end, nil, nil, 0, false, true)
end

return Quest74658

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74655 = class("Quest74655", QuestActorProxy)
Quest74655.defaultAlias = "Quest74655"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74655:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74655:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7465501"] = self.OnSubStart7465501, ["7465502"] = self.OnSubStart7465502}
end

function Quest74655:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7465501"] = self.OnSubFinish7465501, ["7465502"] = self.OnSubFinish7465502}
end

function Quest74655:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74655:Start()
    print("Start")
end

function Quest74655:OnDestroy()
    print("OnDestroy")
end

function Quest74655:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74655:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74655:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc5014Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5014Data.alias, 0, true)
end

function Quest74655:OnSubStart7465501(arg1)
    print("OnSubStart7465501")
    this:NotifyTo(npcs.Npc5014Data.alias, 2, true)
end

function Quest74655:OnSubFinish7465501(arg1)
    print("OnSubFinish7465501")
end

function Quest74655:OnSubStart7465502(arg1)
    print("OnSubStart7465502")
    this:NotifyTo(npcs.Npc5014Data.alias, 2, true)
end

function Quest74655:OnSubFinish7465502(arg1)
    print("OnSubFinish7465502")
    this:ShowBlackScreenWithDialogText(0.3, 1.2, 0.3, function(arg1)
        this:LightNotifyTo(npcs.Npc5014Data.alias, 0, true)
    end, nil, nil, 0, false, true)
end

return Quest74655

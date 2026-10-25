require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74654 = class("Quest74654", QuestActorProxy)
Quest74654.defaultAlias = "Quest74654"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74654:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74654:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7465401"] = self.OnSubStart7465401, ["7465402"] = self.OnSubStart7465402}
end

function Quest74654:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7465401"] = self.OnSubFinish7465401, ["7465402"] = self.OnSubFinish7465402}
end

function Quest74654:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74654:Start()
    print("Start")
end

function Quest74654:OnDestroy()
    print("OnDestroy")
end

function Quest74654:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74654:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74654:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc5013Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5013Data.alias, 0, true)
end

function Quest74654:OnSubStart7465401(arg1)
    print("OnSubStart7465401")
    this:NotifyTo(npcs.Npc5013Data.alias, 2, true)
end

function Quest74654:OnSubFinish7465401(arg1)
    print("OnSubFinish7465401")
end

function Quest74654:OnSubStart7465402(arg1)
    print("OnSubStart7465402")
    this:NotifyTo(npcs.Npc5013Data.alias, 2, true)
end

function Quest74654:OnSubFinish7465402(arg1)
    print("OnSubFinish7465402")
    this:ShowBlackScreenWithDialogText(0.3, 1.2, 0.3, function(arg1)
        this:LightNotifyTo(npcs.Npc5013Data.alias, 0, true)
    end, nil, nil, 0, false, true)
end

return Quest74654

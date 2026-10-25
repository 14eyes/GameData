require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74652 = class("Quest74652", QuestActorProxy)
Quest74652.defaultAlias = "Quest74652"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74652:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74652:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7465201"] = self.OnSubStart7465201, ["7465202"] = self.OnSubStart7465202}
end

function Quest74652:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7465201"] = self.OnSubFinish7465201, ["7465202"] = self.OnSubFinish7465202}
end

function Quest74652:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74652:Start()
    print("Start")
end

function Quest74652:OnDestroy()
    print("OnDestroy")
end

function Quest74652:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74652:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74652:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc5045Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5045Data.alias, 0, true)
end

function Quest74652:OnSubStart7465201(arg1)
    print("OnSubStart7465201")
    this:NotifyTo(npcs.Npc5045Data.alias, 2, true)
end

function Quest74652:OnSubFinish7465201(arg1)
    print("OnSubFinish7465201")
end

function Quest74652:OnSubStart7465202(arg1)
    print("OnSubStart7465202")
    this:NotifyTo(npcs.Npc5045Data.alias, 2, true)
end

function Quest74652:OnSubFinish7465202(arg1)
    print("OnSubFinish7465202")
    this:ShowBlackScreenWithDialogText(0.3, 1.2, 0.3, function(arg1)
        this:LightNotifyTo(npcs.Npc5045Data.alias, 0, true)
    end, nil, nil, 0, false, true)
end

return Quest74652

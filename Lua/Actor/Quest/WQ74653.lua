require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74653 = class("Quest74653", QuestActorProxy)
Quest74653.defaultAlias = "Quest74653"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest74653:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest74653:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7465301"] = self.OnSubStart7465301, ["7465302"] = self.OnSubStart7465302}
end

function Quest74653:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7465301"] = self.OnSubFinish7465301, ["7465302"] = self.OnSubFinish7465302}
end

function Quest74653:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74653:Start()
    print("Start")
end

function Quest74653:OnDestroy()
    print("OnDestroy")
end

function Quest74653:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74653:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74653:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc5009Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5009Data.alias, 0, true)
end

function Quest74653:OnSubStart7465301(arg1)
    print("OnSubStart7465301")
    this:NotifyTo(npcs.Npc5009Data.alias, 2, true)
end

function Quest74653:OnSubFinish7465301(arg1)
    print("OnSubFinish7465301")
end

function Quest74653:OnSubStart7465302(arg1)
    print("OnSubStart7465302")
    this:NotifyTo(npcs.Npc5009Data.alias, 2, true)
end

function Quest74653:OnSubFinish7465302(arg1)
    print("OnSubFinish7465302")
    this:ShowBlackScreenWithDialogText(0.3, 1.2, 0.3, function(arg1)
        this:LightNotifyTo(npcs.Npc5009Data.alias, 0, true)
    end, nil, nil, 0, false, true)
end

return Quest74653

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73673 = class("Quest73673", QuestActorProxy)
Quest73673.defaultAlias = "Quest73673"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73673:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73673:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7367301"] = self.OnSubStart7367301, ["7367302"] = self.OnSubStart7367302}
end

function Quest73673:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7367301"] = self.OnSubFinish7367301, ["7367302"] = self.OnSubFinish7367302}
end

function Quest73673:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73673:Start()
    print("Start")
end

function Quest73673:OnDestroy()
    print("OnDestroy")
end

function Quest73673:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73673:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73673:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc4070Data.alias, 3)
    actorMgr:DestroyEntityActor("Q73673Trigger", 3, false)
end

function Quest73673:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest73673:OnSubStart7367301(arg1)
    print("OnSubStart7367301")
end

function Quest73673:OnSubFinish7367301(arg1)
    print("OnSubFinish7367301")
end

function Quest73673:OnSubStart7367302(arg1)
    print("OnSubStart7367302")
    actorMgr:CreateActorWithPos("Q73673Trigger", "Actor/Gadget/Q73673Trigger", 70900002, 0, {x = -386.178, y = 240.124, z = 2694.209}, {x = 0.0, y = 339.618, z = 0.0}, true, false, 3)
end

function Quest73673:OnSubFinish7367302(arg1)
    print("OnSubFinish7367302")
    self:ActorDestroy("Q73673Trigger")
end

return Quest73673

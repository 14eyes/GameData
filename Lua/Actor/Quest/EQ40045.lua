require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40045 = class("Quest40045", QuestActorProxy)
Quest40045.defaultAlias = "Quest40045"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest40045:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest40045:OnSubStartHandlerBuild()
    self.subStartHandlers = {["4004501"] = self.OnSubStart4004501}
end

function Quest40045:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["4004501"] = self.OnSubFinish4004501}
end

function Quest40045:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40045:Start()
    print("Start")
end

function Quest40045:OnDestroy()
    print("OnDestroy")
end

function Quest40045:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40045:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40045:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
    actorMgr:DestroyEntityActor("Q40045Trigger", 3, false)
end

function Quest40045:OnSubStart4004501(arg1)
    print("OnSubStart4004501")
    self:CreateQuestNpc(arg1, npcs.Npc1018Data.id, 1)
    actorMgr:CreateActorWithPos("Q40045Trigger", "Actor/Gadget/Q40045Trigger", 70900002, 0, {x = 2265.724, y = 215.99, z = -887.5077}, {x = 0, y = 0, z = 0}, true, false)
end

function Quest40045:OnSubFinish4004501(arg1)
    print("OnSubFinish4004501")
    self:SafeDestroyQuestNpc(npcs.Npc1018Data.alias, 3)
end

return Quest40045

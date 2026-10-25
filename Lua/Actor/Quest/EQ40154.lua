require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40154 = class("Quest40154", QuestActorProxy)
Quest40154.defaultAlias = "Quest40154"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs

function Quest40154:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest40154:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4015403"] = self.OnSubStart4015403,
        ["4015401"] = self.OnSubStart4015401,
        ["4015402"] = self.OnSubStart4015402
    }
end

function Quest40154:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4015403"] = self.OnSubFinish4015403,
        ["4015401"] = self.OnSubFinish4015401,
        ["4015402"] = self.OnSubFinish4015402
    }
end

function Quest40154:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40154:Start()
    print("Start")
end

function Quest40154:OnDestroy()
    print("OnDestroy")
end

function Quest40154:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40154:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40154:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.LisaData.alias, 3)
    actorMgr:DestroyEntityActor("Q40154Trigger", 0, false)
    actorMgr:DestroyEntityActor("Q40154Trigger1", 0, false)
end

function Quest40154:OnSubStart4015403(arg1)
    print("OnSubStart4015403")
end

function Quest40154:OnSubFinish4015403(arg1)
    print("OnSubFinish4015403")
end

function Quest40154:OnSubStart4015401(arg1)
    print("OnSubStart4015401")
    actorMgr:CreateActorWithPos("Q40154Trigger", "Actor/Gadget/Q40154Trigger", 70900002, 0, {x = 2518.878, y = 202.746, z = -1133.139}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest40154:OnSubFinish4015401(arg1)
    print("OnSubFinish4015401")
end

function Quest40154:OnSubStart4015402(arg1)
    print("OnSubStart4015402")
    actorMgr:CreateActorWithPos("Q40154Trigger1", "Actor/Gadget/Q40154Trigger1", 70900002, 0, {x = 2518.878, y = 202.746, z = -1133.139}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest40154:OnSubFinish4015402(arg1)
    print("OnSubFinish4015402")
    this:DestroyQuestNpcActor(npcs.LisaData.alias, 3)
end

return Quest40154

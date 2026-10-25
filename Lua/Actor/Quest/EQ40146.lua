require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40146 = class("Quest40146", QuestActorProxy)
Quest40146.defaultAlias = "Quest40146"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest40146:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40146:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4014603"] = self.OnSubStart4014603,
        ["4014601"] = self.OnSubStart4014601,
        ["4014602"] = self.OnSubStart4014602
    }
end

function Quest40146:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4014603"] = self.OnSubFinish4014603,
        ["4014601"] = self.OnSubFinish4014601,
        ["4014602"] = self.OnSubFinish4014602
    }
end

function Quest40146:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40146:Start()
    print("Start")
end

function Quest40146:OnDestroy()
    print("OnDestroy")
end

function Quest40146:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40146:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40146:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30501Data.alias, 3)
    actorMgr:DestroyEntityActor("Q40146Trigger", 0, false)
end

function Quest40146:OnSubStart4014603(arg1)
    print("OnSubStart4014603")
end

function Quest40146:OnSubFinish4014603(arg1)
    print("OnSubFinish4014603")
end

function Quest40146:OnSubStart4014601(arg1)
    print("OnSubStart4014601")
    actorMgr:CreateActorWithPos("Q40146Trigger", "Actor/Gadget/Q40146Trigger", 70900002, 0, {x = 2518.878, y = 202.746, z = -1133.139}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest40146:OnSubFinish4014601(arg1)
    print("OnSubFinish4014601")
end

function Quest40146:OnSubStart4014602(arg1)
    print("OnSubStart4014602")
end

function Quest40146:OnSubFinish4014602(arg1)
    print("OnSubFinish4014602")
    this:DestroyQuestNpcActor(npcs.Npc30501Data.alias, 3)
end

return Quest40146

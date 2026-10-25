require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40160 = class("Quest40160", QuestActorProxy)
Quest40160.defaultAlias = "Quest40160"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest40160:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40160:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4016001"] = self.OnSubStart4016001,
        ["4016002"] = self.OnSubStart4016002,
        ["4016003"] = self.OnSubStart4016003,
        ["4016004"] = self.OnSubStart4016004,
        ["4016005"] = self.OnSubStart4016005,
        ["4016006"] = self.OnSubStart4016006
    }
end

function Quest40160:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4016001"] = self.OnSubFinish4016001,
        ["4016002"] = self.OnSubFinish4016002,
        ["4016003"] = self.OnSubFinish4016003,
        ["4016004"] = self.OnSubFinish4016004,
        ["4016005"] = self.OnSubFinish4016005,
        ["4016006"] = self.OnSubFinish4016006
    }
end

function Quest40160:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40160:Start()
    print("Start")
end

function Quest40160:OnDestroy()
    print("OnDestroy")
end

function Quest40160:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40160:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40160:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:SafeDestroyQuestNpc(npcs.Npc30519Data.alias, 3)
    actorMgr:DestroyEntityActor("Q40160Trigger", 3, false)
end

function Quest40160:OnSubStart4016001(arg1)
    print("OnSubStart4016001")
    actorMgr:CreateActorWithPos("Q40160Trigger", "Actor/Gadget/Q40160Trigger", 70900002, 0, points.TPos_Q40160Trigger.pos, points.TPos_Q40160Trigger.rot, true, false, 3)
end

function Quest40160:OnSubFinish4016001(arg1)
    print("OnSubFinish4016001")
end

function Quest40160:OnSubStart4016002(arg1)
    print("OnSubStart4016002")
end

function Quest40160:OnSubFinish4016002(arg1)
    print("OnSubFinish4016002")
end

function Quest40160:OnSubStart4016003(arg1)
    print("OnSubStart4016003")
end

function Quest40160:OnSubFinish4016003(arg1)
    print("OnSubFinish4016003")
end

function Quest40160:OnSubStart4016004(arg1)
    print("OnSubStart4016004")
end

function Quest40160:OnSubFinish4016004(arg1)
    print("OnSubFinish4016004")
end

function Quest40160:OnSubStart4016005(arg1)
    print("OnSubStart4016005")
end

function Quest40160:OnSubFinish4016005(arg1)
    print("OnSubFinish4016005")
end

function Quest40160:OnSubStart4016006(arg1)
    print("OnSubStart4016006")
    this:CreateQuestNpc(arg1, npcs.Npc30519Data.id, 0)
end

function Quest40160:OnSubFinish4016006(arg1)
    print("OnSubFinish4016006")
    this:DestroyQuestNpcActor(npcs.Npc30519Data.alias, 3)
end

return Quest40160

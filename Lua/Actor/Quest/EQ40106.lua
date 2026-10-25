require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40106 = class("Quest40106", QuestActorProxy)
Quest40106.defaultAlias = "Quest40106"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest40106:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest40106:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4010601"] = self.OnSubStart4010601,
        ["4010603"] = self.OnSubStart4010603,
        ["4010604"] = self.OnSubStart4010604,
        ["4010606"] = self.OnSubStart4010606,
        ["4010602"] = self.OnSubStart4010602,
        ["4010605"] = self.OnSubStart4010605
    }
end

function Quest40106:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4010601"] = self.OnSubFinish4010601,
        ["4010603"] = self.OnSubFinish4010603,
        ["4010604"] = self.OnSubFinish4010604,
        ["4010606"] = self.OnSubFinish4010606,
        ["4010602"] = self.OnSubFinish4010602,
        ["4010605"] = self.OnSubFinish4010605
    }
end

function Quest40106:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40106:Start()
    print("Start")
end

function Quest40106:OnDestroy()
    print("OnDestroy")
end

function Quest40106:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40106:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40106:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1064Data.alias, 1079)
    actorMgr:DestroyEntityActor("Q4010606_TriggerOut", 3, false)
end

function Quest40106:OnSubStart4010601(arg1)
    print("OnSubStart4010601")
    this:CreateQuestNpc(arg1, npcs.Npc1064Data.id, 1)
end

function Quest40106:OnSubFinish4010601(arg1)
    print("OnSubFinish4010601")
    this:SafeDestroyQuestNpc(npcs.Npc1064Data.alias, 1079)
end

function Quest40106:OnSubStart4010603(arg1)
    print("OnSubStart4010603")
end

function Quest40106:OnSubFinish4010603(arg1)
    print("OnSubFinish4010603")
end

function Quest40106:OnSubStart4010604(arg1)
    print("OnSubStart4010604")
end

function Quest40106:OnSubFinish4010604(arg1)
    print("OnSubFinish4010604")
end

function Quest40106:OnSubStart4010606(arg1)
    print("OnSubStart4010606")
    actorMgr:CreateActorWithPos("Q4010606_TriggerOut", "Actor/Gadget/Q4010606_TriggerOut", 70900002, 0, points.TPos_Q4010606_TriggerOut.pos, points.TPos_Q4010606_TriggerOut.rot, true, false, 3)
end

function Quest40106:OnSubFinish4010606(arg1)
    print("OnSubFinish4010606")
end

function Quest40106:OnSubStart4010602(arg1)
    print("OnSubStart4010602")
end

function Quest40106:OnSubFinish4010602(arg1)
    print("OnSubFinish4010602")
end

function Quest40106:OnSubStart4010605(arg1)
    print("OnSubStart4010605")
end

function Quest40106:OnSubFinish4010605(arg1)
    print("OnSubFinish4010605")
end

return Quest40106

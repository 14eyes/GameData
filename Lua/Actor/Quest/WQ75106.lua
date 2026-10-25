require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75106 = class("Quest75106", QuestActorProxy)
Quest75106.defaultAlias = "Quest75106"
local clientData
local this
local mainID
local actorAlias
local subIDs
local points

function Quest75106:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    points = clientData.Points
end

function Quest75106:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7510606"] = self.OnSubStart7510606,
        ["7510601"] = self.OnSubStart7510601,
        ["7510607"] = self.OnSubStart7510607,
        ["7510603"] = self.OnSubStart7510603,
        ["7510602"] = self.OnSubStart7510602,
        ["7510604"] = self.OnSubStart7510604,
        ["7510605"] = self.OnSubStart7510605
    }
end

function Quest75106:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7510606"] = self.OnSubFinish7510606,
        ["7510601"] = self.OnSubFinish7510601,
        ["7510607"] = self.OnSubFinish7510607,
        ["7510603"] = self.OnSubFinish7510603,
        ["7510602"] = self.OnSubFinish7510602,
        ["7510604"] = self.OnSubFinish7510604,
        ["7510605"] = self.OnSubFinish7510605
    }
end

function Quest75106:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75106:Start()
    print("Start")
end

function Quest75106:OnDestroy()
    print("OnDestroy")
end

function Quest75106:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75106:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75106:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75106:OnSubStart7510606(arg1)
    print("OnSubStart7510606")
end

function Quest75106:OnSubFinish7510606(arg1)
    print("OnSubFinish7510606")
end

function Quest75106:OnSubStart7510601(arg1)
    print("OnSubStart7510601")
end

function Quest75106:OnSubFinish7510601(arg1)
    print("OnSubFinish7510601")
end

function Quest75106:OnSubStart7510607(arg1)
    print("OnSubStart7510607")
end

function Quest75106:OnSubFinish7510607(arg1)
    print("OnSubFinish7510607")
end

function Quest75106:OnSubStart7510603(arg1)
    print("OnSubStart7510603")
end

function Quest75106:OnSubFinish7510603(arg1)
    print("OnSubFinish7510603")
end

function Quest75106:OnSubStart7510602(arg1)
    print("OnSubStart7510602")
    actorMgr:CreateActorWithPos("Q7510602Trigger", "Actor/Gadget/Q7510602Trigger", 70900002, 0, points.TPos_Q7510602Trigger.pos, points.TPos_Q7510602Trigger.rot, true, false, 3)
end

function Quest75106:OnSubFinish7510602(arg1)
    print("OnSubFinish7510602")
end

function Quest75106:OnSubStart7510604(arg1)
    print("OnSubStart7510604")
end

function Quest75106:OnSubFinish7510604(arg1)
    print("OnSubFinish7510604")
end

function Quest75106:OnSubStart7510605(arg1)
    print("OnSubStart7510605")
    actorMgr:CreateActorWithPos("Q7510605Trigger", "Actor/Gadget/Q7510605Trigger", 70900002, 0, points.TPos_Q7510605Trigger.pos, points.TPos_Q7510605Trigger.rot, true, false, 3)
end

function Quest75106:OnSubFinish7510605(arg1)
    print("OnSubFinish7510605")
end

return Quest75106

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71137 = class("Quest71137", QuestActorProxy)
Quest71137.defaultAlias = "Quest71137"
local clientData
local this
local mainID
local actorAlias
local subIDs
local points
local datas

function Quest71137:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest71137:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7113701"] = self.OnSubStart7113701,
        ["7113702"] = self.OnSubStart7113702,
        ["7113703"] = self.OnSubStart7113703,
        ["7113704"] = self.OnSubStart7113704
    }
end

function Quest71137:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7113701"] = self.OnSubFinish7113701,
        ["7113702"] = self.OnSubFinish7113702,
        ["7113703"] = self.OnSubFinish7113703,
        ["7113704"] = self.OnSubFinish7113704
    }
end

function Quest71137:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71137:Start()
    print("Start")
end

function Quest71137:OnDestroy()
    print("OnDestroy")
end

function Quest71137:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71137:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71137:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71137:OnSubStart7113701(arg1)
    print("OnSubStart7113701")
end

function Quest71137:OnSubFinish7113701(arg1)
    print("OnSubFinish7113701")
end

function Quest71137:OnSubStart7113702(arg1)
    print("OnSubStart7113702")
    actorMgr:CreateActorWithPos("Q7113702Trigger", "Actor/Gadget/Q7113702Trigger", 70900002, 0, points.TPos_Q7113702Trigger.pos, points.TPos_Q7113702Trigger.rot, true, false, 3)
end

function Quest71137:OnSubFinish7113702(arg1)
    print("OnSubFinish7113702")
end

function Quest71137:OnSubStart7113703(arg1)
    print("OnSubStart7113703")
    actorMgr:CreateActorWithPos("Q7113703Trigger", "Actor/Gadget/Q7113703Trigger", 70900002, 0, points.TPos_Q7113703Trigger.pos, points.TPos_Q7113703Trigger.rot, true, false, 3)
end

function Quest71137:OnSubFinish7113703(arg1)
    print("OnSubFinish7113703")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 711379901, false, true)
    end)
end

function Quest71137:OnSubStart7113704(arg1)
    print("OnSubStart7113704")
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q7113704Trigger", "Actor/Gadget/Q7113704Trigger", 70900002, 0, points.TPos_Q7113704Trigger.pos, points.TPos_Q7113704Trigger.rot, true, false, 3)
    end)
end

function Quest71137:OnSubFinish7113704(arg1)
    print("OnSubFinish7113704")
end

return Quest71137

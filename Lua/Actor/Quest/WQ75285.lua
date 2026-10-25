require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75285 = class("Quest75285", QuestActorProxy)
Quest75285.defaultAlias = "Quest75285"
local clientData
local this
local mainID
local actorAlias
local datas
local points

function Quest75285:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    points = clientData.Points
end

function Quest75285:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7528501"] = self.OnSubStart7528501,
        ["7528502"] = self.OnSubStart7528502,
        ["7528505"] = self.OnSubStart7528505,
        ["7528503"] = self.OnSubStart7528503,
        ["7528504"] = self.OnSubStart7528504
    }
end

function Quest75285:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7528501"] = self.OnSubFinish7528501,
        ["7528502"] = self.OnSubFinish7528502,
        ["7528505"] = self.OnSubFinish7528505,
        ["7528503"] = self.OnSubFinish7528503,
        ["7528504"] = self.OnSubFinish7528504
    }
end

function Quest75285:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75285:Start()
    print("Start")
end

function Quest75285:OnDestroy()
    print("OnDestroy")
end

function Quest75285:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75285:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75285:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75285:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7528502Trigger")
end

function Quest75285:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75285:OnSubStart7528501(arg1)
    print("OnSubStart7528501")
end

function Quest75285:OnSubFinish7528501(arg1)
    print("OnSubFinish7528501")
end

function Quest75285:OnSubStart7528502(arg1)
    print("OnSubStart7528502")
    actorMgr:CreateActorWithPos("Q7528502Trigger", "Actor/Gadget/Q7528502Trigger", 70900002, 0, points._Q7528502TriggerPoint_.pos, points._Q7528502TriggerPoint_.rot, true, false, 3)
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogIdsData, 0, nil, nil, nil)
end

function Quest75285:OnSubFinish7528502(arg1)
    print("OnSubFinish7528502")
end

function Quest75285:OnSubStart7528505(arg1)
    print("OnSubStart7528505")
end

function Quest75285:OnSubFinish7528505(arg1)
    print("OnSubFinish7528505")
end

function Quest75285:OnSubStart7528503(arg1)
    print("OnSubStart7528503")
end

function Quest75285:OnSubFinish7528503(arg1)
    print("OnSubFinish7528503")
end

function Quest75285:OnSubStart7528504(arg1)
    print("OnSubStart7528504")
end

function Quest75285:OnSubFinish7528504(arg1)
    print("OnSubFinish7528504")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogIdsData_1, 0, nil, nil, nil)
end

return Quest75285

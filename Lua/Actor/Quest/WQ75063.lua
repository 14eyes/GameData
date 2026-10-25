require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75063 = class("Quest75063", QuestActorProxy)
Quest75063.defaultAlias = "Quest75063"
local clientData
local this
local mainID
local actorAlias
local subIDs
local points
local datas

function Quest75063:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest75063:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7506301"] = self.OnSubStart7506301, ["7506302"] = self.OnSubStart7506302}
end

function Quest75063:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7506301"] = self.OnSubFinish7506301, ["7506302"] = self.OnSubFinish7506302}
end

function Quest75063:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75063:Start()
    print("Start")
end

function Quest75063:OnDestroy()
    print("OnDestroy")
end

function Quest75063:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75063:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75063:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75063:OnSubStart7506301(arg1)
    print("OnSubStart7506301")
end

function Quest75063:OnSubFinish7506301(arg1)
    print("OnSubFinish7506301")
    this:TransmitPlayerWithDialogTextById(arg1, 1, datas.DialogsId, 3, nil, nil)
end

function Quest75063:OnSubStart7506302(arg1)
    print("OnSubStart7506302")
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q75063Trigger", "Actor/Gadget/Q75063Trigger", 70900002, 0, points.TPos_Q75063Trigger.pos, points.TPos_Q75063Trigger.rot, true, false, 3)
    end)
end

function Quest75063:OnSubFinish7506302(arg1)
    print("OnSubFinish7506302")
end

return Quest75063

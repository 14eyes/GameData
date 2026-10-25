require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72653 = class("Quest72653", QuestActorProxy)
Quest72653.defaultAlias = "Quest72653"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest72653:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest72653:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7265301"] = self.OnSubStart7265301, ["7265302"] = self.OnSubStart7265302}
end

function Quest72653:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7265301"] = self.OnSubFinish7265301, ["7265302"] = self.OnSubFinish7265302}
end

function Quest72653:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7265301"] = self.OnSubFailed7265301, ["7265302"] = self.OnSubFailed7265302}
end

function Quest72653:Start()
    print("Start")
end

function Quest72653:OnDestroy()
    print("OnDestroy")
end

function Quest72653:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72653:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72653:OnMainCanceled(arg1)
    print("OnMainCanceled")
    local actor = actorMgr:GetActor(datas.Q72653Trigger_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest72653:OnSubStart7265301(arg1)
    print("OnSubStart7265301")
end

function Quest72653:OnSubFinish7265301(arg1)
    print("OnSubFinish7265301")
end

function Quest72653:OnSubFailed7265301(arg1)
    print("OnSubFailed7265301")
end

function Quest72653:OnSubStart7265302(arg1)
    print("OnSubStart7265302")
    actorMgr:CreateActorWithPos(datas.Q72653Trigger_.alias, datas.Q72653Trigger_.script, datas.Q72653Trigger_.id, 0, datas.Q72653Trigger_.point.pos, datas.Q72653Trigger_.point.rot, true, false, 3)
end

function Quest72653:OnSubFinish7265302(arg1)
    self:CallDelay(3, function()
        actorUtils.ShowBlitzRushStagePage(2)
    end)
end

function Quest72653:OnSubFailed7265302(arg1)
    print("OnSubFailed7265302")
end

return Quest72653

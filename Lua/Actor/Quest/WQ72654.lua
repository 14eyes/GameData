require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72654 = class("Quest72654", QuestActorProxy)
Quest72654.defaultAlias = "Quest72654"
local clientData
local mainID
local actorAlias
local subIDs
local datas

function Quest72654:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    datas = clientData.Datas
end

function Quest72654:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7265401"] = self.OnSubStart7265401, ["7265402"] = self.OnSubStart7265402}
end

function Quest72654:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7265401"] = self.OnSubFinish7265401, ["7265402"] = self.OnSubFinish7265402}
end

function Quest72654:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7265401"] = self.OnSubFailed7265401, ["7265402"] = self.OnSubFailed7265402}
end

function Quest72654:Start()
    print("Start")
end

function Quest72654:OnDestroy()
    print("OnDestroy")
end

function Quest72654:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72654:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72654:OnMainCanceled(arg1)
    print("OnMainCanceled")
    local actor = actorMgr:GetActor(datas.Q72654Trigger_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest72654:OnSubStart7265401(arg1)
    print("OnSubStart7265401")
end

function Quest72654:OnSubFinish7265401(arg1)
    print("OnSubFinish7265401")
end

function Quest72654:OnSubFailed7265401(arg1)
    print("OnSubFailed7265401")
end

function Quest72654:OnSubStart7265402(arg1)
    print("OnSubStart7265402")
    actorMgr:CreateActorWithPos(datas.Q72654Trigger_.alias, datas.Q72654Trigger_.script, datas.Q72654Trigger_.id, 0, datas.Q72654Trigger_.point.pos, datas.Q72654Trigger_.point.rot, true, false, 3)
end

function Quest72654:OnSubFinish7265402(arg1)
    self:CallDelay(3, function()
        actorUtils.ShowBlitzRushStagePage(3)
    end)
end

function Quest72654:OnSubFailed7265402(arg1)
    print("OnSubFailed7265402")
end

return Quest72654

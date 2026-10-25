require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70655 = class("Quest70655", QuestActorProxy)
Quest70655.defaultAlias = "Quest70655"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70655:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70655:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7065501"] = self.OnSubStart7065501,
        ["7065502"] = self.OnSubStart7065502,
        ["7065503"] = self.OnSubStart7065503
    }
end

function Quest70655:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7065501"] = self.OnSubFinish7065501,
        ["7065502"] = self.OnSubFinish7065502,
        ["7065503"] = self.OnSubFinish7065503
    }
end

function Quest70655:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7065501"] = self.OnSubFailed7065501,
        ["7065502"] = self.OnSubFailed7065502,
        ["7065503"] = self.OnSubFailed7065503
    }
end

function Quest70655:Start()
    print("Start")
end

function Quest70655:OnDestroy()
    print("OnDestroy")
end

function Quest70655:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest70655:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest70655:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest70655:OnSubStart7065502(arg1)
    print("OnSubStart7065502")
    print("OnSubStart7065502")
    if self:GetSubQuestState(41806) ~= 3 then
        if self:GetSubQuestState(41803) ~= 3 then
            goto lbl_21
        end
    end

    self:FinishQuestID(false, 7065502)
    ::lbl_21::
end

function Quest70655:OnSubFinish7065502(arg1)
    print("OnSubFinish7065502")
end

function Quest70655:OnSubFailed7065502(arg1)
    print("OnSubFailed7065502")
end

function Quest70655:OnSubStart7065503(arg1)
    print("OnSubStart7065503")
end

function Quest70655:OnSubFinish7065503(arg1)
    print("OnSubFinish7065503")
end

function Quest70655:OnSubFailed7065503(arg1)
    print("OnSubFailed7065503")
end

function Quest70655:OnSubStart7065501(arg1)
    print("OnSubStart7065501")
    print("OnSubStart7065501")
    if self:GetSubQuestState(41806) ~= 3 then
        if self:GetSubQuestState(41803) ~= 3 then
            goto lbl_22
        end
    end

    self:FinishQuestID(false, 7065501)
    goto lbl_26
    ::lbl_22::
    self:FinishQuestID(true, 7065501)
    ::lbl_26::
end

function Quest70655:OnSubFinish7065501(arg1)
    print("OnSubFinish7065501")
end

function Quest70655:OnSubFailed7065501(arg1)
    print("OnSubFailed7065501")
end

return Quest70655

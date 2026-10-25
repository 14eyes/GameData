require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71801 = class("Quest71801", QuestActorProxy)
Quest71801.defaultAlias = "Quest71801"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71801:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71801:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7180101"] = self.OnSubStart7180101, ["7180102"] = self.OnSubStart7180102}
end

function Quest71801:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7180101"] = self.OnSubFinish7180101, ["7180102"] = self.OnSubFinish7180102}
end

function Quest71801:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7180101"] = self.OnSubFailed7180101, ["7180102"] = self.OnSubFailed7180102}
end

function Quest71801:Start()
    print("Start")
end

function Quest71801:OnDestroy()
    print("OnDestroy")
end

function Quest71801:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71801:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71801:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71801:OnSubStart7180101(arg1)
    print("OnSubStart7180101")
end

function Quest71801:OnSubFinish7180101(arg1)
    print("OnSubFinish7180101")
end

function Quest71801:OnSubFailed7180101(arg1)
    print("OnSubFailed7180101")
end

function Quest71801:OnSubStart7180102(arg1)
    print("OnSubStart7180102")
    self:FinishQuestID(false, 7180102)
    self:TransmitPlayerById(arg1, 1)
end

function Quest71801:OnSubFinish7180102(arg1)
    print("OnSubFinish7180102")
end

function Quest71801:OnSubFailed7180102(arg1)
    print("OnSubFailed7180102")
end

return Quest71801

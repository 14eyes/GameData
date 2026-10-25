require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71806 = class("Quest71806", QuestActorProxy)
Quest71806.defaultAlias = "Quest71806"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71806:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71806:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7180601"] = self.OnSubStart7180601, ["7180602"] = self.OnSubStart7180602}
end

function Quest71806:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7180601"] = self.OnSubFinish7180601, ["7180602"] = self.OnSubFinish7180602}
end

function Quest71806:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7180601"] = self.OnSubFailed7180601, ["7180602"] = self.OnSubFailed7180602}
end

function Quest71806:Start()
    print("Start")
end

function Quest71806:OnDestroy()
    print("OnDestroy")
end

function Quest71806:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71806:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71806:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71806:Trans()
    print("Trans")
    self:TransmitPlayerByQuestId(7180602, 1, self.Start)
end

function Quest71806:OnSubStart7180601(arg1)
    print("OnSubStart7180601")
end

function Quest71806:OnSubFinish7180601(arg1)
    print("OnSubFinish7180601")
end

function Quest71806:OnSubFailed7180601(arg1)
    print("OnSubFailed7180601")
end

function Quest71806:OnSubStart7180602(arg1)
    print("OnSubStart7180602")
    self:FinishQuestID(false, 7180602)
    self:ShowBlackScreen(0.5, 1, 0.5, self.Trans, nil, nil, "")
end

function Quest71806:OnSubFinish7180602(arg1)
    print("OnSubFinish7180602")
end

function Quest71806:OnSubFailed7180602(arg1)
    print("OnSubFailed7180602")
end

return Quest71806

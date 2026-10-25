require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71714 = class("Quest71714", QuestActorProxy)
Quest71714.defaultAlias = "Quest71714"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71714:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71714:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7171401"] = self.OnSubStart7171401, ["7171402"] = self.OnSubStart7171402}
end

function Quest71714:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7171401"] = self.OnSubFinish7171401, ["7171402"] = self.OnSubFinish7171402}
end

function Quest71714:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7171401"] = self.OnSubFailed7171401, ["7171402"] = self.OnSubFailed7171402}
end

function Quest71714:Start()
    print("Start")
end

function Quest71714:OnDestroy()
    print("OnDestroy")
end

function Quest71714:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71714:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71714:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71714:OnSubStart7171401(arg1)
    print("OnSubStart7171401")
end

function Quest71714:OnSubFinish7171401(arg1)
    print("OnSubFinish7171401")
end

function Quest71714:OnSubFailed7171401(arg1)
    print("OnSubFailed7171401")
end

function Quest71714:OnSubStart7171402(arg1)
    print("OnSubStart7171402")
end

function Quest71714:OnSubFinish7171402(arg1)
    print("OnSubFinish7171402")
end

function Quest71714:OnSubFailed7171402(arg1)
    print("OnSubFailed7171402")
end

return Quest71714

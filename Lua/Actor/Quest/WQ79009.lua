require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79009 = class("Quest79009", QuestActorProxy)
Quest79009.defaultAlias = "Quest79009"
local clientData
local mainID
local actorAlias
local subIDs

function Quest79009:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest79009:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7900901"] = self.OnSubStart7900901, ["7900902"] = self.OnSubStart7900902}
end

function Quest79009:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7900901"] = self.OnSubFinish7900901, ["7900902"] = self.OnSubFinish7900902}
end

function Quest79009:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7900901"] = self.OnSubFailed7900901, ["7900902"] = self.OnSubFailed7900902}
end

function Quest79009:Start()
    print("Start")
end

function Quest79009:OnDestroy()
    print("OnDestroy")
end

function Quest79009:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79009:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79009:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79009:OnSubStart7900901(arg1)
    print("OnSubStart7900901")
end

function Quest79009:OnSubFinish7900901(arg1)
    print("OnSubFinish7900901")
    self:ShowTutorialDialog(818)
end

function Quest79009:OnSubFailed7900901(arg1)
    print("OnSubFailed7900901")
end

function Quest79009:OnSubStart7900902(arg1)
    print("OnSubStart7900902")
end

function Quest79009:OnSubFinish7900902(arg1)
    print("OnSubFinish7900902")
end

function Quest79009:OnSubFailed7900902(arg1)
    print("OnSubFailed7900902")
end

return Quest79009

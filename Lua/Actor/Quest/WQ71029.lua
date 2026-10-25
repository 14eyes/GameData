require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71029 = class("Quest71029", QuestActorProxy)
Quest71029.defaultAlias = "Quest71029"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71029:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71029:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7102901"] = self.OnSubStart7102901, ["7102902"] = self.OnSubStart7102902}
end

function Quest71029:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7102901"] = self.OnSubFinish7102901, ["7102902"] = self.OnSubFinish7102902}
end

function Quest71029:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7102901"] = self.OnSubFailed7102901, ["7102902"] = self.OnSubFailed7102902}
end

function Quest71029:Start()
    print("Start")
end

function Quest71029:OnDestroy()
    print("OnDestroy")
end

function Quest71029:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71029:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71029:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71029:OnSubStart7102901(arg1)
    print("OnSubStart7102901")
end

function Quest71029:OnSubFinish7102901(arg1)
    print("OnSubFinish7102901")
end

function Quest71029:OnSubFailed7102901(arg1)
    print("OnSubFailed7102901")
end

function Quest71029:OnSubStart7102902(arg1)
    print("OnSubStart7102902")
end

function Quest71029:OnSubFinish7102902(arg1)
    print("OnSubFinish7102902")
end

function Quest71029:OnSubFailed7102902(arg1)
    print("OnSubFailed7102902")
end

return Quest71029

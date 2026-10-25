require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72240 = class("Quest72240", QuestActorProxy)
Quest72240.defaultAlias = "Quest72240"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72240:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72240:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7224001"] = self.OnSubStart7224001,
        ["7224002"] = self.OnSubStart7224002,
        ["7224004"] = self.OnSubStart7224004,
        ["7224005"] = self.OnSubStart7224005,
        ["7224006"] = self.OnSubStart7224006
    }
end

function Quest72240:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7224001"] = self.OnSubFinish7224001,
        ["7224002"] = self.OnSubFinish7224002,
        ["7224004"] = self.OnSubFinish7224004,
        ["7224005"] = self.OnSubFinish7224005,
        ["7224006"] = self.OnSubFinish7224006
    }
end

function Quest72240:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72240:Start()
    print("Start")
end

function Quest72240:OnDestroy()
    print("OnDestroy")
end

function Quest72240:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72240:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72240:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72240:OnSubStart7224001(arg1)
    print("OnSubStart7224001")
end

function Quest72240:OnSubFinish7224001(arg1)
    print("OnSubFinish7224001")
end

function Quest72240:OnSubStart7224002(arg1)
    print("OnSubStart7224002")
end

function Quest72240:OnSubFinish7224002(arg1)
    print("OnSubFinish7224002")
end

function Quest72240:OnSubStart7224004(arg1)
    print("OnSubStart7224004")
end

function Quest72240:OnSubFinish7224004(arg1)
    print("OnSubFinish7224004")
end

function Quest72240:OnSubStart7224005(arg1)
    print("OnSubStart7224005")
end

function Quest72240:OnSubFinish7224005(arg1)
    print("OnSubFinish7224005")
end

function Quest72240:OnSubStart7224006(arg1)
    print("OnSubStart7224006")
end

function Quest72240:OnSubFinish7224006(arg1)
    print("OnSubFinish7224006")
end

return Quest72240

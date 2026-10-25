require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72148 = class("Quest72148", QuestActorProxy)
Quest72148.defaultAlias = "Quest72148"
local clientData
local mainID
local actorAlias
local subIDs

function Quest72148:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest72148:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7214801"] = self.OnSubStart7214801,
        ["7214802"] = self.OnSubStart7214802,
        ["7214803"] = self.OnSubStart7214803,
        ["7214804"] = self.OnSubStart7214804,
        ["7214805"] = self.OnSubStart7214805
    }
end

function Quest72148:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7214801"] = self.OnSubFinish7214801,
        ["7214802"] = self.OnSubFinish7214802,
        ["7214803"] = self.OnSubFinish7214803,
        ["7214804"] = self.OnSubFinish7214804,
        ["7214805"] = self.OnSubFinish7214805
    }
end

function Quest72148:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7214801"] = self.OnSubFailed7214801,
        ["7214802"] = self.OnSubFailed7214802,
        ["7214803"] = self.OnSubFailed7214803,
        ["7214804"] = self.OnSubFailed7214804,
        ["7214805"] = self.OnSubFailed7214805
    }
end

function Quest72148:Start()
    print("Start")
end

function Quest72148:OnDestroy()
    print("OnDestroy")
end

function Quest72148:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72148:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72148:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72148:OnSubStart7214801(arg1)
    print("OnSubStart7214801")
end

function Quest72148:OnSubFinish7214801(arg1)
    print("OnSubFinish7214801")
end

function Quest72148:OnSubFailed7214801(arg1)
    print("OnSubFailed7214801")
end

function Quest72148:OnSubStart7214802(arg1)
    print("OnSubStart7214802")
end

function Quest72148:OnSubFinish7214802(arg1)
    print("OnSubFinish7214802")
end

function Quest72148:OnSubFailed7214802(arg1)
    print("OnSubFailed7214802")
end

function Quest72148:OnSubStart7214803(arg1)
    print("OnSubStart7214803")
end

function Quest72148:OnSubFinish7214803(arg1)
    print("OnSubFinish7214803")
end

function Quest72148:OnSubFailed7214803(arg1)
    print("OnSubFailed7214803")
end

function Quest72148:OnSubStart7214804(arg1)
    print("OnSubStart7214804")
end

function Quest72148:OnSubFinish7214804(arg1)
    print("OnSubFinish7214804")
end

function Quest72148:OnSubFailed7214804(arg1)
    print("OnSubFailed7214804")
end

function Quest72148:OnSubStart7214805(arg1)
    print("OnSubStart7214805")
end

function Quest72148:OnSubFinish7214805(arg1)
    print("OnSubFinish7214805")
end

function Quest72148:OnSubFailed7214805(arg1)
    print("OnSubFailed7214805")
end

return Quest72148

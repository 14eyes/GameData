require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71050 = class("Quest71050", QuestActorProxy)
Quest71050.defaultAlias = "Quest71050"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71050:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71050:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7105004"] = self.OnSubStart7105004,
        ["7105001"] = self.OnSubStart7105001,
        ["7105002"] = self.OnSubStart7105002,
        ["7105003"] = self.OnSubStart7105003
    }
end

function Quest71050:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7105004"] = self.OnSubFinish7105004,
        ["7105001"] = self.OnSubFinish7105001,
        ["7105002"] = self.OnSubFinish7105002,
        ["7105003"] = self.OnSubFinish7105003
    }
end

function Quest71050:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71050:Start()
    print("Start")
end

function Quest71050:OnDestroy()
    print("OnDestroy")
end

function Quest71050:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71050:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71050:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71050:OnSubStart7105004(arg1)
    print("OnSubStart7105004")
end

function Quest71050:OnSubFinish7105004(arg1)
    print("OnSubFinish7105004")
end

function Quest71050:OnSubStart7105001(arg1)
    print("OnSubStart7105001")
end

function Quest71050:OnSubFinish7105001(arg1)
    print("OnSubFinish7105001")
end

function Quest71050:OnSubStart7105002(arg1)
    print("OnSubStart7105002")
end

function Quest71050:OnSubFinish7105002(arg1)
    print("OnSubFinish7105002")
end

function Quest71050:OnSubStart7105003(arg1)
    print("OnSubStart7105003")
end

function Quest71050:OnSubFinish7105003(arg1)
    print("OnSubFinish7105003")
end

return Quest71050

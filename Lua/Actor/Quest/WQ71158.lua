require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71158 = class("Quest71158", QuestActorProxy)
Quest71158.defaultAlias = "Quest71158"
local clientData
local this
local mainID
local actorAlias

function Quest71158:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71158:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7115801"] = self.OnSubStart7115801, ["7115802"] = self.OnSubStart7115802}
end

function Quest71158:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7115801"] = self.OnSubFinish7115801, ["7115802"] = self.OnSubFinish7115802}
end

function Quest71158:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71158:Start()
    print("Start")
end

function Quest71158:OnDestroy()
    print("OnDestroy")
end

function Quest71158:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71158:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71158:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71158:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest71158:OnSubStart7115801(arg1)
    print("OnSubStart7115801")
end

function Quest71158:OnSubFinish7115801(arg1)
    print("OnSubFinish7115801")
end

function Quest71158:OnSubStart7115802(arg1)
    print("OnSubStart7115802")
end

function Quest71158:OnSubFinish7115802(arg1)
    print("OnSubFinish7115802")
end

return Quest71158

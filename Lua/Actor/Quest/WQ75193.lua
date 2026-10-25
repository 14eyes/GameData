require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75193 = class("Quest75193", QuestActorProxy)
Quest75193.defaultAlias = "Quest75193"
local clientData
local this
local mainID
local actorAlias

function Quest75193:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75193:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7519301"] = self.OnSubStart7519301,
        ["7519302"] = self.OnSubStart7519302,
        ["7519303"] = self.OnSubStart7519303
    }
end

function Quest75193:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7519301"] = self.OnSubFinish7519301,
        ["7519302"] = self.OnSubFinish7519302,
        ["7519303"] = self.OnSubFinish7519303
    }
end

function Quest75193:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75193:Start()
    print("Start")
end

function Quest75193:OnDestroy()
    print("OnDestroy")
end

function Quest75193:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75193:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75193:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75193:OnSubStart7519301(arg1)
    print("OnSubStart7519301")
end

function Quest75193:OnSubFinish7519301(arg1)
    print("OnSubFinish7519301")
end

function Quest75193:OnSubStart7519302(arg1)
    print("OnSubStart7519302")
end

function Quest75193:OnSubFinish7519302(arg1)
    print("OnSubFinish7519302")
end

function Quest75193:OnSubStart7519303(arg1)
    print("OnSubStart7519303")
end

function Quest75193:OnSubFinish7519303(arg1)
    print("OnSubFinish7519303")
end

return Quest75193

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71159 = class("Quest71159", QuestActorProxy)
Quest71159.defaultAlias = "Quest71159"
local clientData
local this
local mainID
local actorAlias

function Quest71159:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest71159:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7115901"] = self.OnSubStart7115901, ["7115902"] = self.OnSubStart7115902}
end

function Quest71159:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7115901"] = self.OnSubFinish7115901, ["7115902"] = self.OnSubFinish7115902}
end

function Quest71159:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71159:Start()
    print("Start")
end

function Quest71159:OnDestroy()
    print("OnDestroy")
end

function Quest71159:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71159:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71159:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71159:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest71159:OnSubStart7115901(arg1)
    print("OnSubStart7115901")
end

function Quest71159:OnSubFinish7115901(arg1)
    print("OnSubFinish7115901")
end

function Quest71159:OnSubStart7115902(arg1)
    print("OnSubStart7115902")
end

function Quest71159:OnSubFinish7115902(arg1)
    print("OnSubFinish7115902")
end

return Quest71159

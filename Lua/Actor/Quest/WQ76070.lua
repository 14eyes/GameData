require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76070 = class("Quest76070", QuestActorProxy)
Quest76070.defaultAlias = "Quest76070"
local clientData
local this
local mainID
local actorAlias

function Quest76070:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest76070:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7607002"] = self.OnSubStart7607002,
        ["7607004"] = self.OnSubStart7607004,
        ["7607003"] = self.OnSubStart7607003,
        ["7607005"] = self.OnSubStart7607005,
        ["7607006"] = self.OnSubStart7607006,
        ["7607007"] = self.OnSubStart7607007,
        ["7607008"] = self.OnSubStart7607008,
        ["7607009"] = self.OnSubStart7607009,
        ["7607010"] = self.OnSubStart7607010,
        ["7607001"] = self.OnSubStart7607001
    }
end

function Quest76070:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7607002"] = self.OnSubFinish7607002,
        ["7607004"] = self.OnSubFinish7607004,
        ["7607003"] = self.OnSubFinish7607003,
        ["7607005"] = self.OnSubFinish7607005,
        ["7607006"] = self.OnSubFinish7607006,
        ["7607007"] = self.OnSubFinish7607007,
        ["7607008"] = self.OnSubFinish7607008,
        ["7607009"] = self.OnSubFinish7607009,
        ["7607010"] = self.OnSubFinish7607010,
        ["7607001"] = self.OnSubFinish7607001
    }
end

function Quest76070:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76070:Start()
    print("Start")
end

function Quest76070:OnDestroy()
    print("OnDestroy")
end

function Quest76070:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76070:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76070:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76070:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest76070:OnSubStart7607002(arg1)
    print("OnSubStart7607002")
end

function Quest76070:OnSubFinish7607002(arg1)
    print("OnSubFinish7607002")
end

function Quest76070:OnSubStart7607004(arg1)
    print("OnSubStart7607004")
end

function Quest76070:OnSubFinish7607004(arg1)
    print("OnSubFinish7607004")
end

function Quest76070:OnSubStart7607003(arg1)
    print("OnSubStart7607003")
end

function Quest76070:OnSubFinish7607003(arg1)
    print("OnSubFinish7607003")
end

function Quest76070:OnSubStart7607005(arg1)
    print("OnSubStart7607005")
end

function Quest76070:OnSubFinish7607005(arg1)
    print("OnSubFinish7607005")
end

function Quest76070:OnSubStart7607006(arg1)
    print("OnSubStart7607006")
end

function Quest76070:OnSubFinish7607006(arg1)
    print("OnSubFinish7607006")
end

function Quest76070:OnSubStart7607007(arg1)
    print("OnSubStart7607007")
end

function Quest76070:OnSubFinish7607007(arg1)
    print("OnSubFinish7607007")
end

function Quest76070:OnSubStart7607008(arg1)
    print("OnSubStart7607008")
end

function Quest76070:OnSubFinish7607008(arg1)
    print("OnSubFinish7607008")
end

function Quest76070:OnSubStart7607009(arg1)
    print("OnSubStart7607009")
end

function Quest76070:OnSubFinish7607009(arg1)
    print("OnSubFinish7607009")
end

function Quest76070:OnSubStart7607010(arg1)
    print("OnSubStart7607010")
end

function Quest76070:OnSubFinish7607010(arg1)
    print("OnSubFinish7607010")
end

function Quest76070:OnSubStart7607001(arg1)
    print("OnSubStart7607001")
end

function Quest76070:OnSubFinish7607001(arg1)
    print("OnSubFinish7607001")
    this:PlayCutsceneIndex(7606001, nil, nil, nil, false)
end

return Quest76070

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75652 = class("Quest75652", QuestActorProxy)
Quest75652.defaultAlias = "Quest75652"
local clientData
local this
local mainID
local actorAlias
local subIDs

function Quest75652:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest75652:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7565201"] = self.OnSubStart7565201, ["7565202"] = self.OnSubStart7565202}
end

function Quest75652:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7565201"] = self.OnSubFinish7565201, ["7565202"] = self.OnSubFinish7565202}
end

function Quest75652:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75652:Start()
    print("Start")
end

function Quest75652:OnDestroy()
    print("OnDestroy")
end

function Quest75652:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75652:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75652:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75652:OnSubStart7565201(arg1)
    print("OnSubStart7565201")
end

function Quest75652:OnSubFinish7565201(arg1)
    print("OnSubFinish7565201")
end

function Quest75652:OnSubStart7565202(arg1)
    print("OnSubStart7565202")
end

function Quest75652:OnSubFinish7565202(arg1)
    print("OnSubFinish7565202")
end

return Quest75652

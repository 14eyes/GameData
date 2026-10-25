require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10801 = class("Quest10801", QuestActorProxy)
Quest10801.defaultAlias = "Quest10801"
local clientData
local this
local mainID
local actorAlias
local datas

function Quest10801:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
end

function Quest10801:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1080101"] = self.OnSubStart1080101,
        ["1080102"] = self.OnSubStart1080102,
        ["1080103"] = self.OnSubStart1080103
    }
end

function Quest10801:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1080101"] = self.OnSubFinish1080101,
        ["1080102"] = self.OnSubFinish1080102,
        ["1080103"] = self.OnSubFinish1080103
    }
end

function Quest10801:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest10801:Start()
    print("Start")
end

function Quest10801:OnDestroy()
    print("OnDestroy")
end

function Quest10801:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest10801:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest10801:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest10801:OnMainPaused(arg1)
    print("OnMainPaused")
end

function Quest10801:OnSubStart1080101(arg1)
    print("OnSubStart1080101")
end

function Quest10801:OnSubFinish1080101(arg1)
    print("OnSubFinish1080101")
    this:TransmitPlayerByData(arg1, 3, datas.TransmitData01, nil, nil, nil)
end

function Quest10801:OnSubStart1080102(arg1)
    print("OnSubStart1080102")
end

function Quest10801:OnSubFinish1080102(arg1)
    print("OnSubFinish1080102")
    this:TransmitPlayerByData(arg1, 2, datas.TransmitData02, nil, nil, nil)
end

function Quest10801:OnSubStart1080103(arg1)
    print("OnSubStart1080103")
end

function Quest10801:OnSubFinish1080103(arg1)
    print("OnSubFinish1080103")
end

return Quest10801

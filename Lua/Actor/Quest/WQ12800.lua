require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12800 = class("Quest12800", QuestActorProxy)
Quest12800.defaultAlias = "Quest12800"
local clientData
local this
local mainID
local actorAlias
local datas

function Quest12800:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
end

function Quest12800:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1280001"] = self.OnSubStart1280001, ["1280002"] = self.OnSubStart1280002}
end

function Quest12800:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1280001"] = self.OnSubFinish1280001, ["1280002"] = self.OnSubFinish1280002}
end

function Quest12800:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest12800:OnSubStart1280001(arg1)
    print("OnSubStart1280001")
    actorUtils.FinishQuestID(false, 1280001)
end

function Quest12800:OnSubFinish1280001(arg1)
    print("OnSubFinish1280001")
    this:ActionSafeCall(function(arg1_2)
        this:TransmitPlayerByData(arg1, 1, datas.TransmitData, nil, nil, nil)
    end)
end

function Quest12800:OnSubStart1280002(arg1)
    print("OnSubStart1280002")
    actorUtils.FinishQuestID(false, 1280002)
end

function Quest12800:OnSubFinish1280002(arg1)
    print("OnSubFinish1280002")
end

return Quest12800

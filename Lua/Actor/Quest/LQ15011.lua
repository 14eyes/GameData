require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest15011 = class("Quest15011", QuestActorProxy)
Quest15011.defaultAlias = "Quest15011"
local clientData
local this
local mainID
local actorAlias
local datas

function Quest15011:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
end

function Quest15011:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1501103"] = self.OnSubStart1501103,
        ["1501102"] = self.OnSubStart1501102,
        ["1501104"] = self.OnSubStart1501104,
        ["1501101"] = self.OnSubStart1501101
    }
end

function Quest15011:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1501103"] = self.OnSubFinish1501103,
        ["1501102"] = self.OnSubFinish1501102,
        ["1501104"] = self.OnSubFinish1501104,
        ["1501101"] = self.OnSubFinish1501101
    }
end

function Quest15011:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest15011:OnSubStart1501103(arg1)
    print("OnSubStart1501103")
end

function Quest15011:OnSubFinish1501103(arg1)
    print("OnSubFinish1501103")
end

function Quest15011:OnSubStart1501102(arg1)
    print("OnSubStart1501102")
end

function Quest15011:OnSubFinish1501102(arg1)
    print("OnSubFinish1501102")
    this:PlayerEnterDungeonWithData(1296, 1216, 1501102, 1, datas.PlayerEnterDungeonData, nil, nil)
end

function Quest15011:OnSubStart1501104(arg1)
    print("OnSubStart1501104")
end

function Quest15011:OnSubFinish1501104(arg1)
    print("OnSubFinish1501104")
end

function Quest15011:OnSubStart1501101(arg1)
    print("OnSubStart1501101")
end

function Quest15011:OnSubFinish1501101(arg1)
    print("OnSubFinish1501101")
end

return Quest15011

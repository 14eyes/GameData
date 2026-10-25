require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest21015 = class("Quest21015", QuestActorProxy)
Quest21015.defaultAlias = "Quest21015"
local clientData
local n = 21015
local subIDs
local xiaojiujiuData

function Quest21015:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    n = 21015
    xiaojiujiuData = clientData.XiaojiujiuData
end

function Quest21015:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2101501"] = self.OnSubStart2101501,
        ["2101502"] = self.OnSubStart2101502,
        ["2101503"] = self.OnSubStart2101503,
        ["2101504"] = self.OnSubStart2101504,
        ["2101505"] = self.OnSubStart2101505
    }
end

function Quest21015:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2101501"] = self.OnSubFinish2101501,
        ["2101502"] = self.OnSubFinish2101502,
        ["2101503"] = self.OnSubFinish2101503,
        ["2101504"] = self.OnSubFinish2101504,
        ["2101505"] = self.OnSubFinish2101505
    }
end

function Quest21015:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2101501"] = self.OnSubFailed2101501,
        ["2101502"] = self.OnSubFailed2101502,
        ["2101503"] = self.OnSubFailed2101503,
        ["2101504"] = self.OnSubFailed2101504,
        ["2101505"] = self.OnSubFailed2101505
    }
end

function Quest21015:Start()
    print("Start")
end

function Quest21015:OnDestroy()
    print("OnDestroy")
end

function Quest21015:OnSubStart2101501(arg1)
    print("OnSubStart2101501")
end

function Quest21015:OnSubFinish2101501(arg1)
    print("OnSubFinish2101501")
end

function Quest21015:OnSubFailed2101501(arg1)
    print("OnSubFailed2101501")
end

function Quest21015:OnSubStart2101502(arg1)
    print("OnSubStart2101502")
end

function Quest21015:OnSubFinish2101502(arg1)
    print("OnSubFinish2101502")
end

function Quest21015:OnSubFailed2101502(arg1)
    print("OnSubFailed2101502")
end

function Quest21015:OnSubStart2101503(arg1)
    print("OnSubStart2101503")
end

function Quest21015:OnSubFinish2101503(arg1)
    print("OnSubFinish2101503")
end

function Quest21015:OnSubFailed2101503(arg1)
    print("OnSubFailed2101503")
end

function Quest21015:OnSubStart2101504(arg1)
    print("OnSubStart2101504")
end

function Quest21015:OnSubFinish2101504(arg1)
    print("OnSubFinish2101504")
end

function Quest21015:OnSubFailed2101504(arg1)
    print("OnSubFailed2101504")
end

function Quest21015:OnSubStart2101505(arg1)
    print("OnSubStart2101505")
end

function Quest21015:OnSubFinish2101505(arg1)
    print("OnSubFinish2101505")
end

function Quest21015:OnSubFailed2101505(arg1)
    print("OnSubFailed2101505")
end

return Quest21015

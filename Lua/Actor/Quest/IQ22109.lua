require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22109 = class("Quest22109", QuestActorProxy)
Quest22109.defaultAlias = "Quest22109"
local clientData
local mainID
local actorAlias
local subIDs

function Quest22109:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest22109:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2210901"] = self.OnSubStart2210901,
        ["2210902"] = self.OnSubStart2210902,
        ["2210903"] = self.OnSubStart2210903
    }
end

function Quest22109:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2210901"] = self.OnSubFinish2210901,
        ["2210902"] = self.OnSubFinish2210902,
        ["2210903"] = self.OnSubFinish2210903
    }
end

function Quest22109:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2210901"] = self.OnSubFailed2210901,
        ["2210902"] = self.OnSubFailed2210902,
        ["2210903"] = self.OnSubFailed2210903
    }
end

function Quest22109:Start()
    print("Start")
end

function Quest22109:OnDestroy()
    print("OnDestroy")
end

function Quest22109:OnSubStart2210901(arg1)
    print("OnSubStart2210901")
end

function Quest22109:OnSubFinish2210901(arg1)
    print("OnSubFinish2210901")
end

function Quest22109:OnSubFailed2210901(arg1)
    print("OnSubFailed2210901")
end

function Quest22109:OnSubStart2210902(arg1)
    print("OnSubStart2210902")
end

function Quest22109:OnSubFinish2210902(arg1)
    print("OnSubFinish2210902")
end

function Quest22109:OnSubFailed2210902(arg1)
    print("OnSubFailed2210902")
end

function Quest22109:OnSubStart2210903(arg1)
    print("OnSubStart2210903")
end

function Quest22109:OnSubFinish2210903(arg1)
    print("OnSubFinish2210903")
end

function Quest22109:OnSubFailed2210903(arg1)
    print("OnSubFailed2210903")
end

return Quest22109

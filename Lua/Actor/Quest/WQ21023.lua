require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest21023 = class("Quest21023", QuestActorProxy)
Quest21023.defaultAlias = "Quest21023"
local clientData
local shareData
local mainID
local actorAlias
local subIDs
local npc

function Quest21023:OnDataLoaded()
    clientData = self.clientData
    shareData = self.shareData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npc = shareData.QuestData["2102301"].npcs[1]
end

function Quest21023:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2102301"] = self.OnSubStart2102301,
        ["2102302"] = self.OnSubStart2102302,
        ["2102303"] = self.OnSubStart2102303
    }
end

function Quest21023:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2102301"] = self.OnSubFinish2102301,
        ["2102302"] = self.OnSubFinish2102302,
        ["2102303"] = self.OnSubFinish2102303
    }
end

function Quest21023:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2102301"] = self.OnSubFailed2102301,
        ["2102302"] = self.OnSubFailed2102302,
        ["2102303"] = self.OnSubFailed2102303
    }
end

function Quest21023:Start()
    print("Start")
end

function Quest21023:OnDestroy()
    print("OnDestroy")
end

function Quest21023:OnSubStart2102301(arg1)
    print("OnSubStart2102301")
    print("Bubble01")
end

function Quest21023:OnSubFinish2102301(arg1)
    print("OnSubFinish2102301")
end

function Quest21023:OnSubFailed2102301(arg1)
    print("OnSubFailed2102301")
end

function Quest21023:OnSubStart2102302(arg1)
    print("OnSubStart2102302")
end

function Quest21023:OnSubFinish2102302(arg1)
    print("OnSubFinish2102302")
end

function Quest21023:OnSubFailed2102302(arg1)
    print("OnSubFailed2102302")
end

function Quest21023:OnSubStart2102303(arg1)
    print("OnSubStart2102303")
end

function Quest21023:OnSubFinish2102303(arg1)
    print("OnSubFinish2102303")
end

function Quest21023:OnSubFailed2102303(arg1)
    print("OnSubFailed2102303")
end

return Quest21023

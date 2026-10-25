require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75170 = class("Quest75170", QuestActorProxy)
Quest75170.defaultAlias = "Quest75170"
local clientData
local this
local mainID
local actorAlias

function Quest75170:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75170:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7517004"] = self.OnSubStart7517004,
        ["7517001"] = self.OnSubStart7517001,
        ["7517002"] = self.OnSubStart7517002,
        ["7517003"] = self.OnSubStart7517003,
        ["7517005"] = self.OnSubStart7517005
    }
end

function Quest75170:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7517004"] = self.OnSubFinish7517004,
        ["7517001"] = self.OnSubFinish7517001,
        ["7517002"] = self.OnSubFinish7517002,
        ["7517003"] = self.OnSubFinish7517003,
        ["7517005"] = self.OnSubFinish7517005
    }
end

function Quest75170:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75170:OnSubStart7517004(arg1)
    print("OnSubStart7517004")
end

function Quest75170:OnSubFinish7517004(arg1)
    print("OnSubFinish7517004")
    this:CallDelay(0.5, function(arg1)
        this:SetNavigationByMainId(75170, true)
    end)
end

function Quest75170:OnSubStart7517001(arg1)
    print("OnSubStart7517001")
end

function Quest75170:OnSubFinish7517001(arg1)
    print("OnSubFinish7517001")
    this:SetNavigationByMainId(75170, true)
end

function Quest75170:OnSubStart7517002(arg1)
    print("OnSubStart7517002")
end

function Quest75170:OnSubFinish7517002(arg1)
    print("OnSubFinish7517002")
end

function Quest75170:OnSubStart7517003(arg1)
    print("OnSubStart7517003")
end

function Quest75170:OnSubFinish7517003(arg1)
    print("OnSubFinish7517003")
end

function Quest75170:OnSubStart7517005(arg1)
    print("OnSubStart7517005")
end

function Quest75170:OnSubFinish7517005(arg1)
    print("OnSubFinish7517005")
    this:SetNavigationByMainId(75136, true)
end

return Quest75170

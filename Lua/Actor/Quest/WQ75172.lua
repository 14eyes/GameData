require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75172 = class("Quest75172", QuestActorProxy)
Quest75172.defaultAlias = "Quest75172"
local clientData
local this
local mainID
local actorAlias

function Quest75172:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest75172:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7517204"] = self.OnSubStart7517204,
        ["7517201"] = self.OnSubStart7517201,
        ["7517202"] = self.OnSubStart7517202,
        ["7517203"] = self.OnSubStart7517203,
        ["7517205"] = self.OnSubStart7517205
    }
end

function Quest75172:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7517204"] = self.OnSubFinish7517204,
        ["7517201"] = self.OnSubFinish7517201,
        ["7517202"] = self.OnSubFinish7517202,
        ["7517203"] = self.OnSubFinish7517203,
        ["7517205"] = self.OnSubFinish7517205
    }
end

function Quest75172:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75172:OnSubStart7517204(arg1)
    print("OnSubStart7517204")
end

function Quest75172:OnSubFinish7517204(arg1)
    print("OnSubFinish7517204")
    this:CallDelay(0.5, function(arg1)
        this:SetNavigationByMainId(75172, true)
    end)
end

function Quest75172:OnSubStart7517201(arg1)
    print("OnSubStart7517201")
end

function Quest75172:OnSubFinish7517201(arg1)
    print("OnSubFinish7517201")
    this:SetNavigationByMainId(75172, true)
end

function Quest75172:OnSubStart7517202(arg1)
    print("OnSubStart7517202")
end

function Quest75172:OnSubFinish7517202(arg1)
    print("OnSubFinish7517202")
end

function Quest75172:OnSubStart7517203(arg1)
    print("OnSubStart7517203")
end

function Quest75172:OnSubFinish7517203(arg1)
    print("OnSubFinish7517203")
end

function Quest75172:OnSubStart7517205(arg1)
    print("OnSubStart7517205")
end

function Quest75172:OnSubFinish7517205(arg1)
    print("OnSubFinish7517205")
    this:SetNavigationByMainId(75136, true)
end

return Quest75172

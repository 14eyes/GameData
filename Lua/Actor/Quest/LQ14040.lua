require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest14040 = class("Quest14040", QuestActorProxy)
Quest14040.defaultAlias = "Quest14040"
local clientData
local this
local mainID
local actorAlias

function Quest14040:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
end

function Quest14040:OnSubStartHandlerBuild()
    self.subStartHandlers = {["1404001"] = self.OnSubStart1404001}
end

function Quest14040:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["1404001"] = self.OnSubFinish1404001}
end

function Quest14040:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["1404001"] = self.OnSubFailed1404001}
end

function Quest14040:OnSubStart1404001(arg1)
    print("OnSubStart1404001")
    local questNPCActor = actorMgr:GetQuestNPCActor("Npc1079", 14030)
    if questNPCActor ~= nil then
        if questNPCActor ~= actorMgr.dummyActor then
            goto lbl_20
        end
    end

    actorUtils.FinishQuestID(false, 1404001)
    ::lbl_20::
end

function Quest14040:OnSubFinish1404001(arg1)
    print("OnSubFinish1404001")
end

function Quest14040:OnSubFailed1404001(arg1)
    print("OnSubFailed1404001")
end

return Quest14040

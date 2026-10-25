require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71807 = class("Quest71807", QuestActorProxy)
Quest71807.defaultAlias = "Quest71807"
local clientData
local mainID
local actorAlias
local subIDs

function Quest71807:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest71807:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7180701"] = self.OnSubStart7180701,
        ["7180702"] = self.OnSubStart7180702,
        ["7180703"] = self.OnSubStart7180703
    }
end

function Quest71807:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7180701"] = self.OnSubFinish7180701,
        ["7180702"] = self.OnSubFinish7180702,
        ["7180703"] = self.OnSubFinish7180703
    }
end

function Quest71807:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7180701"] = self.OnSubFailed7180701,
        ["7180702"] = self.OnSubFailed7180702,
        ["7180703"] = self.OnSubFailed7180703
    }
end

function Quest71807:Start()
    print("Start")
end

function Quest71807:OnDestroy()
    print("OnDestroy")
end

function Quest71807:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71807:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71807:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71807:AppearNpc2025()
    print("AppearNpc2025")
    self:NotifyTo("Npc2025", 0, true)
end

function Quest71807:OnSubStart7180701(arg1)
    print("OnSubStart7180701")
    self:NotifyTo("Npc2025", 2, true)
end

function Quest71807:OnSubFinish7180701(arg1)
    print("OnSubFinish7180701")
end

function Quest71807:OnSubFailed7180701(arg1)
    print("OnSubFailed7180701")
end

function Quest71807:OnSubStart7180702(arg1)
    print("OnSubStart7180702")
    self:NotifyTo("Npc2025", 2, true)
end

function Quest71807:OnSubFinish7180702(arg1)
    print("OnSubFinish7180702")
end

function Quest71807:OnSubFailed7180702(arg1)
    print("OnSubFailed7180702")
end

function Quest71807:OnSubStart7180703(arg1)
    print("OnSubStart7180703")
    self:NotifyTo("Npc2025", 2, true)
end

function Quest71807:OnSubFinish7180703(arg1)
    print("OnSubFinish7180703")
    self:ShowBlackScreen(0.5, 1, 0.5, self.AppearNpc2025, nil, nil, "")
end

function Quest71807:OnSubFailed7180703(arg1)
    print("OnSubFailed7180703")
end

return Quest71807

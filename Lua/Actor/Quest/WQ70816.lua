require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70816 = class("Quest70816", QuestActorProxy)
Quest70816.defaultAlias = "Quest70816"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70816:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70816:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7081601"] = self.OnSubStart7081601,
        ["7081602"] = self.OnSubStart7081602,
        ["7081603"] = self.OnSubStart7081603,
        ["7081604"] = self.OnSubStart7081604,
        ["7081605"] = self.OnSubStart7081605,
        ["7081606"] = self.OnSubStart7081606
    }
end

function Quest70816:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7081601"] = self.OnSubFinish7081601,
        ["7081602"] = self.OnSubFinish7081602,
        ["7081603"] = self.OnSubFinish7081603,
        ["7081604"] = self.OnSubFinish7081604,
        ["7081605"] = self.OnSubFinish7081605,
        ["7081606"] = self.OnSubFinish7081606
    }
end

function Quest70816:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7081601"] = self.OnSubFailed7081601,
        ["7081602"] = self.OnSubFailed7081602,
        ["7081603"] = self.OnSubFailed7081603,
        ["7081604"] = self.OnSubFailed7081604,
        ["7081605"] = self.OnSubFailed7081605,
        ["7081606"] = self.OnSubFailed7081606
    }
end

function Quest70816:Start()
    print("Start")
end

function Quest70816:OnDestroy()
    print("OnDestroy")
end

function Quest70816:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ShowBlackScreen(0.2, 2, 0.5, self.ClearAll, nil, nil, "")
end

function Quest70816:OnMainFailed(arg1)
    print("OnMainFailed")
    self:ClearAll()
end

function Quest70816:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearAll()
end

function Quest70816:ClearAll()
    print("ClearAll")
    self:NotifyTo("Npc1413", 0, true)
end

function Quest70816:OnSubStart7081601(arg1)
    print("OnSubStart7081601")
    self:NotifyTo("Npc1413", 2, true)
end

function Quest70816:OnSubFinish7081601(arg1)
    print("OnSubFinish7081601")
end

function Quest70816:OnSubFailed7081601(arg1)
    print("OnSubFailed7081601")
end

function Quest70816:OnSubStart7081602(arg1)
    print("OnSubStart7081602")
    self:NotifyTo("Npc1413", 2, true)
end

function Quest70816:OnSubFinish7081602(arg1)
    print("OnSubFinish7081602")
end

function Quest70816:OnSubFailed7081602(arg1)
    print("OnSubFailed7081602")
end

function Quest70816:OnSubStart7081603(arg1)
    print("OnSubStart7081603")
    self:NotifyTo("Npc1413", 2, true)
end

function Quest70816:OnSubFinish7081603(arg1)
    print("OnSubFinish7081603")
end

function Quest70816:OnSubFailed7081603(arg1)
    print("OnSubFailed7081603")
end

function Quest70816:OnSubStart7081604(arg1)
    print("OnSubStart7081604")
    self:NotifyTo("Npc1413", 2, true)
end

function Quest70816:OnSubFinish7081604(arg1)
    print("OnSubFinish7081604")
end

function Quest70816:OnSubFailed7081604(arg1)
    print("OnSubFailed7081604")
end

function Quest70816:OnSubStart7081605(arg1)
    print("OnSubStart7081605")
    self:NotifyTo("Npc1413", 2, true)
end

function Quest70816:OnSubFinish7081605(arg1)
    print("OnSubFinish7081605")
end

function Quest70816:OnSubFailed7081605(arg1)
    print("OnSubFailed7081605")
end

function Quest70816:OnSubStart7081606(arg1)
    print("OnSubStart7081606")
    self:NotifyTo("Npc1413", 2, true)
end

function Quest70816:OnSubFinish7081606(arg1)
    print("OnSubFinish7081606")
end

function Quest70816:OnSubFailed7081606(arg1)
    print("OnSubFailed7081606")
end

return Quest70816

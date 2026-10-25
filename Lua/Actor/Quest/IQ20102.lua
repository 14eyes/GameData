require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20102 = class("Quest20102", QuestActorProxy)
Quest20102.defaultAlias = "Quest20102"
local clientData
local mainID
local actorAlias
local subIDs

function Quest20102:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest20102:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2010201"] = self.OnSubStart2010201,
        ["2010202"] = self.OnSubStart2010202,
        ["2010203"] = self.OnSubStart2010203,
        ["2010204"] = self.OnSubStart2010204,
        ["2010205"] = self.OnSubStart2010205,
        ["2010206"] = self.OnSubStart2010206
    }
end

function Quest20102:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2010201"] = self.OnSubFinish2010201,
        ["2010202"] = self.OnSubFinish2010202,
        ["2010203"] = self.OnSubFinish2010203,
        ["2010204"] = self.OnSubFinish2010204,
        ["2010205"] = self.OnSubFinish2010205,
        ["2010206"] = self.OnSubFinish2010206
    }
end

function Quest20102:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2010201"] = self.OnSubFailed2010201,
        ["2010202"] = self.OnSubFailed2010202,
        ["2010203"] = self.OnSubFailed2010203,
        ["2010204"] = self.OnSubFailed2010204,
        ["2010205"] = self.OnSubFailed2010205,
        ["2010206"] = self.OnSubFailed2010206
    }
end

function Quest20102:Start()
    print("Start")
end

function Quest20102:OnDestroy()
    print("OnDestroy")
end

function Quest20102:OnMainFinished(arg1)
    print("OnMainFinished")
    self:NotifyTo("Npc1537", 0, true)
    self:NotifyTo("Npc1429", 0, true)
    self:NotifyTo("Npc1430", 0, true)
    self:NotifyTo("Npc1567", 0, true)
end

function Quest20102:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest20102:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc1537", 0, true)
    self:NotifyTo("Npc1429", 0, true)
    self:NotifyTo("Npc1430", 0, true)
    self:NotifyTo("Npc1567", 0, true)
end

function Quest20102:OnSubStart2010201(arg1)
    print("OnSubStart2010201")
    self:NotifyTo("Npc1537", 2, true)
    self:NotifyTo("Npc1429", 2, true)
    self:NotifyTo("Npc1430", 1, true)
    self:NotifyTo("Npc1567", 2, true)
end

function Quest20102:OnSubFinish2010201(arg1)
    print("OnSubFinish2010201")
end

function Quest20102:OnSubFailed2010201(arg1)
    print("OnSubFailed2010201")
    self:NotifyTo("Npc1537", 0, true)
    self:NotifyTo("Npc1429", 0, true)
    self:NotifyTo("Npc1430", 0, true)
    self:NotifyTo("Npc1567", 0, true)
end

function Quest20102:OnSubStart2010202(arg1)
    print("OnSubStart2010202")
    self:NotifyTo("Npc1537", 2, true)
    self:NotifyTo("Npc1429", 2, true)
    self:NotifyTo("Npc1430", 1, true)
    self:NotifyTo("Npc1567", 2, true)
end

function Quest20102:OnSubFinish2010202(arg1)
    print("OnSubFinish2010202")
end

function Quest20102:OnSubFailed2010202(arg1)
    print("OnSubFailed2010202")
    self:NotifyTo("Npc1537", 0, true)
    self:NotifyTo("Npc1429", 0, true)
    self:NotifyTo("Npc1430", 0, true)
    self:NotifyTo("Npc1567", 0, true)
end

function Quest20102:OnSubStart2010203(arg1)
    print("OnSubStart2010203")
    self:NotifyTo("Npc1537", 2, true)
    self:NotifyTo("Npc1429", 2, true)
    self:NotifyTo("Npc1430", 1, true)
    self:NotifyTo("Npc1567", 2, true)
end

function Quest20102:OnSubFinish2010203(arg1)
    print("OnSubFinish2010203")
end

function Quest20102:OnSubFailed2010203(arg1)
    print("OnSubFailed2010203")
    self:NotifyTo("Npc1537", 0, true)
    self:NotifyTo("Npc1429", 0, true)
    self:NotifyTo("Npc1430", 0, true)
    self:NotifyTo("Npc1567", 0, true)
end

function Quest20102:OnSubStart2010204(arg1)
    print("OnSubStart2010204")
    self:NotifyTo("Npc1537", 2, true)
    self:NotifyTo("Npc1429", 2, true)
    self:NotifyTo("Npc1430", 1, true)
    self:NotifyTo("Npc1567", 2, true)
end

function Quest20102:OnSubFinish2010204(arg1)
    print("OnSubFinish2010204")
end

function Quest20102:OnSubFailed2010204(arg1)
    print("OnSubFailed2010204")
    self:NotifyTo("Npc1537", 0, true)
    self:NotifyTo("Npc1429", 0, true)
    self:NotifyTo("Npc1430", 0, true)
    self:NotifyTo("Npc1567", 0, true)
end

function Quest20102:OnSubStart2010205(arg1)
    print("OnSubStart2010205")
    self:NotifyTo("Npc1537", 2, true)
    self:NotifyTo("Npc1429", 2, true)
    self:NotifyTo("Npc1430", 1, true)
    self:NotifyTo("Npc1567", 2, true)
end

function Quest20102:OnSubFinish2010205(arg1)
    print("OnSubFinish2010205")
end

function Quest20102:OnSubFailed2010205(arg1)
    print("OnSubFailed2010205")
    self:NotifyTo("Npc1537", 0, true)
    self:NotifyTo("Npc1429", 0, true)
    self:NotifyTo("Npc1430", 0, true)
    self:NotifyTo("Npc1567", 0, true)
end

function Quest20102:OnSubStart2010206(arg1)
    print("OnSubStart2010206")
end

function Quest20102:OnSubFinish2010206(arg1)
    print("OnSubFinish2010206")
end

function Quest20102:OnSubFailed2010206(arg1)
    print("OnSubFailed2010206")
end

return Quest20102

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest70814 = class("Quest70814", QuestActorProxy)
Quest70814.defaultAlias = "Quest70814"
local clientData
local mainID
local actorAlias
local subIDs

function Quest70814:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
end

function Quest70814:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7081401"] = self.OnSubStart7081401,
        ["7081402"] = self.OnSubStart7081402,
        ["7081403"] = self.OnSubStart7081403,
        ["7081404"] = self.OnSubStart7081404,
        ["7081405"] = self.OnSubStart7081405
    }
end

function Quest70814:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7081401"] = self.OnSubFinish7081401,
        ["7081402"] = self.OnSubFinish7081402,
        ["7081403"] = self.OnSubFinish7081403,
        ["7081404"] = self.OnSubFinish7081404,
        ["7081405"] = self.OnSubFinish7081405
    }
end

function Quest70814:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7081401"] = self.OnSubFailed7081401,
        ["7081402"] = self.OnSubFailed7081402,
        ["7081403"] = self.OnSubFailed7081403,
        ["7081404"] = self.OnSubFailed7081404,
        ["7081405"] = self.OnSubFailed7081405
    }
end

function Quest70814:Start()
    print("Start")
end

function Quest70814:OnDestroy()
    print("OnDestroy")
end

function Quest70814:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ShowBlackScreen(0.2, 2, 0.5, self.ClearAll, nil, nil, "")
end

function Quest70814:OnMainFailed(arg1)
    print("OnMainFailed")
    self:NotifyTo("Npc2016", 0, true)
    self:NotifyTo("Npc2096", 0, true)
end

function Quest70814:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:NotifyTo("Npc2096", 0, true)
    self:NotifyTo("Npc2016", 0, true)
end

function Quest70814:ClearAll()
    print("ClearAll")
    self:NotifyTo("Npc2096", 0, true)
    self:NotifyTo("Npc2016", 0, true)
end

function Quest70814:OnSubStart7081401(arg1)
    print("OnSubStart7081401")
    self:NotifyTo("Npc2096", 2, true)
    self:NotifyTo("Npc2016", 2, true)
end

function Quest70814:OnSubFinish7081401(arg1)
    print("OnSubFinish7081401")
end

function Quest70814:OnSubFailed7081401(arg1)
    print("OnSubFailed7081401")
end

function Quest70814:OnSubStart7081402(arg1)
    print("OnSubStart7081402")
    self:NotifyTo("Npc2096", 2, true)
    self:NotifyTo("Npc2016", 2, true)
end

function Quest70814:OnSubFinish7081402(arg1)
    print("OnSubFinish7081402")
end

function Quest70814:OnSubFailed7081402(arg1)
    print("OnSubFailed7081402")
end

function Quest70814:OnSubStart7081403(arg1)
    print("OnSubStart7081403")
    self:NotifyTo("Npc2096", 2, true)
    self:NotifyTo("Npc2016", 2, true)
end

function Quest70814:OnSubFinish7081403(arg1)
    print("OnSubFinish7081403")
end

function Quest70814:OnSubFailed7081403(arg1)
    print("OnSubFailed7081403")
end

function Quest70814:OnSubStart7081404(arg1)
    print("OnSubStart7081404")
    self:NotifyTo("Npc2096", 2, true)
    self:NotifyTo("Npc2016", 2, true)
end

function Quest70814:OnSubFinish7081404(arg1)
    print("OnSubFinish7081404")
end

function Quest70814:OnSubFailed7081404(arg1)
    print("OnSubFailed7081404")
end

function Quest70814:OnSubStart7081405(arg1)
    print("OnSubStart7081405")
    self:NotifyTo("Npc2096", 2, true)
    self:NotifyTo("Npc2016", 2, true)
end

function Quest70814:OnSubFinish7081405(arg1)
    print("OnSubFinish7081405")
end

function Quest70814:OnSubFailed7081405(arg1)
    print("OnSubFailed7081405")
end

return Quest70814

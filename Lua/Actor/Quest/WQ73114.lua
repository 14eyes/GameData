require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73114 = class("Quest73114", QuestActorProxy)
Quest73114.defaultAlias = "Quest73114"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73114:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73114:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7311401"] = self.OnSubStart7311401,
        ["7311402"] = self.OnSubStart7311402,
        ["7311403"] = self.OnSubStart7311403,
        ["7311404"] = self.OnSubStart7311404,
        ["7311405"] = self.OnSubStart7311405,
        ["7311406"] = self.OnSubStart7311406,
        ["7311407"] = self.OnSubStart7311407,
        ["7311408"] = self.OnSubStart7311408
    }
end

function Quest73114:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7311401"] = self.OnSubFinish7311401,
        ["7311402"] = self.OnSubFinish7311402,
        ["7311403"] = self.OnSubFinish7311403,
        ["7311404"] = self.OnSubFinish7311404,
        ["7311405"] = self.OnSubFinish7311405,
        ["7311406"] = self.OnSubFinish7311406,
        ["7311407"] = self.OnSubFinish7311407,
        ["7311408"] = self.OnSubFinish7311408
    }
end

function Quest73114:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73114:Start()
    print("Start")
end

function Quest73114:OnDestroy()
    print("OnDestroy")
end

function Quest73114:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73114:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73114:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73114:OnSubStart7311401(arg1)
    print("OnSubStart7311401")
end

function Quest73114:OnSubFinish7311401(arg1)
    print("OnSubFinish7311401")
end

function Quest73114:OnSubStart7311402(arg1)
    print("OnSubStart7311402")
    self:CreateQuestNpc(arg1, npcs.Npc20755Data.id, 1)
end

function Quest73114:OnSubFinish7311402(arg1)
    print("OnSubFinish7311402")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20755Data.alias):DestroyWithDisappear(false)
    end)
end

function Quest73114:OnSubStart7311403(arg1)
    print("OnSubStart7311403")
end

function Quest73114:OnSubFinish7311403(arg1)
    print("OnSubFinish7311403")
end

function Quest73114:OnSubStart7311404(arg1)
    print("OnSubStart7311404")
end

function Quest73114:OnSubFinish7311404(arg1)
    print("OnSubFinish7311404")
end

function Quest73114:OnSubStart7311405(arg1)
    print("OnSubStart7311405")
end

function Quest73114:OnSubFinish7311405(arg1)
    print("OnSubFinish7311405")
end

function Quest73114:OnSubStart7311406(arg1)
    print("OnSubStart7311406")
end

function Quest73114:OnSubFinish7311406(arg1)
    print("OnSubFinish7311406")
end

function Quest73114:OnSubStart7311407(arg1)
    print("OnSubStart7311407")
end

function Quest73114:OnSubFinish7311407(arg1)
    print("OnSubFinish7311407")
end

function Quest73114:OnSubStart7311408(arg1)
    print("OnSubStart7311408")
end

function Quest73114:OnSubFinish7311408(arg1)
    print("OnSubFinish7311408")
end

return Quest73114

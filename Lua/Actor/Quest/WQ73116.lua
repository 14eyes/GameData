require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73116 = class("Quest73116", QuestActorProxy)
Quest73116.defaultAlias = "Quest73116"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73116:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73116:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7311601"] = self.OnSubStart7311601,
        ["7311602"] = self.OnSubStart7311602,
        ["7311603"] = self.OnSubStart7311603,
        ["7311604"] = self.OnSubStart7311604,
        ["7311605"] = self.OnSubStart7311605,
        ["7311606"] = self.OnSubStart7311606,
        ["7311607"] = self.OnSubStart7311607,
        ["7311608"] = self.OnSubStart7311608
    }
end

function Quest73116:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7311601"] = self.OnSubFinish7311601,
        ["7311602"] = self.OnSubFinish7311602,
        ["7311603"] = self.OnSubFinish7311603,
        ["7311604"] = self.OnSubFinish7311604,
        ["7311605"] = self.OnSubFinish7311605,
        ["7311606"] = self.OnSubFinish7311606,
        ["7311607"] = self.OnSubFinish7311607,
        ["7311608"] = self.OnSubFinish7311608
    }
end

function Quest73116:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73116:Start()
    print("Start")
end

function Quest73116:OnDestroy()
    print("OnDestroy")
end

function Quest73116:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73116:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73116:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73116:OnSubStart7311601(arg1)
    print("OnSubStart7311601")
end

function Quest73116:OnSubFinish7311601(arg1)
    print("OnSubFinish7311601")
end

function Quest73116:OnSubStart7311602(arg1)
    print("OnSubStart7311602")
    self:CreateQuestNpc(arg1, npcs.Npc20757Data.id, 1)
end

function Quest73116:OnSubFinish7311602(arg1)
    print("OnSubFinish7311602")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20757Data.alias):DestroyWithDisappear(false)
    end)
end

function Quest73116:OnSubStart7311603(arg1)
    print("OnSubStart7311603")
end

function Quest73116:OnSubFinish7311603(arg1)
    print("OnSubFinish7311603")
end

function Quest73116:OnSubStart7311604(arg1)
    print("OnSubStart7311604")
end

function Quest73116:OnSubFinish7311604(arg1)
    print("OnSubFinish7311604")
end

function Quest73116:OnSubStart7311605(arg1)
    print("OnSubStart7311605")
end

function Quest73116:OnSubFinish7311605(arg1)
    print("OnSubFinish7311605")
end

function Quest73116:OnSubStart7311606(arg1)
    print("OnSubStart7311606")
end

function Quest73116:OnSubFinish7311606(arg1)
    print("OnSubFinish7311606")
end

function Quest73116:OnSubStart7311607(arg1)
    print("OnSubStart7311607")
end

function Quest73116:OnSubFinish7311607(arg1)
    print("OnSubFinish7311607")
end

function Quest73116:OnSubStart7311608(arg1)
    print("OnSubStart7311608")
end

function Quest73116:OnSubFinish7311608(arg1)
    print("OnSubFinish7311608")
end

return Quest73116

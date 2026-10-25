require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73051 = class("Quest73051", QuestActorProxy)
Quest73051.defaultAlias = "Quest73051"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73051:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73051:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7305101"] = self.OnSubStart7305101,
        ["7305102"] = self.OnSubStart7305102,
        ["7305103"] = self.OnSubStart7305103,
        ["7305104"] = self.OnSubStart7305104,
        ["7305105"] = self.OnSubStart7305105,
        ["7305106"] = self.OnSubStart7305106,
        ["7305107"] = self.OnSubStart7305107,
        ["7305108"] = self.OnSubStart7305108
    }
end

function Quest73051:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7305101"] = self.OnSubFinish7305101,
        ["7305102"] = self.OnSubFinish7305102,
        ["7305103"] = self.OnSubFinish7305103,
        ["7305104"] = self.OnSubFinish7305104,
        ["7305105"] = self.OnSubFinish7305105,
        ["7305106"] = self.OnSubFinish7305106,
        ["7305107"] = self.OnSubFinish7305107,
        ["7305108"] = self.OnSubFinish7305108
    }
end

function Quest73051:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73051:Start()
    print("Start")
end

function Quest73051:OnDestroy()
    print("OnDestroy")
end

function Quest73051:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73051:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73051:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73051:OnSubStart7305101(arg1)
    print("OnSubStart7305101")
end

function Quest73051:OnSubFinish7305101(arg1)
    print("OnSubFinish7305101")
end

function Quest73051:OnSubStart7305102(arg1)
    print("OnSubStart7305102")
    self:CreateQuestNpc(arg1, npcs.Npc20750Data.id, 1)
end

function Quest73051:OnSubFinish7305102(arg1)
    print("OnSubFinish7305102")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20750Data.alias):DestroyWithDisappear(false)
    end)
end

function Quest73051:OnSubStart7305103(arg1)
    print("OnSubStart7305103")
end

function Quest73051:OnSubFinish7305103(arg1)
    print("OnSubFinish7305103")
end

function Quest73051:OnSubStart7305104(arg1)
    print("OnSubStart7305104")
end

function Quest73051:OnSubFinish7305104(arg1)
    print("OnSubFinish7305104")
end

function Quest73051:OnSubStart7305105(arg1)
    print("OnSubStart7305105")
end

function Quest73051:OnSubFinish7305105(arg1)
    print("OnSubFinish7305105")
end

function Quest73051:OnSubStart7305106(arg1)
    print("OnSubStart7305106")
end

function Quest73051:OnSubFinish7305106(arg1)
    print("OnSubFinish7305106")
end

function Quest73051:OnSubStart7305107(arg1)
    print("OnSubStart7305107")
end

function Quest73051:OnSubFinish7305107(arg1)
    print("OnSubFinish7305107")
end

function Quest73051:OnSubStart7305108(arg1)
    print("OnSubStart7305108")
end

function Quest73051:OnSubFinish7305108(arg1)
    print("OnSubFinish7305108")
end

return Quest73051

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73111 = class("Quest73111", QuestActorProxy)
Quest73111.defaultAlias = "Quest73111"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73111:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73111:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7311101"] = self.OnSubStart7311101,
        ["7311102"] = self.OnSubStart7311102,
        ["7311103"] = self.OnSubStart7311103,
        ["7311104"] = self.OnSubStart7311104,
        ["7311105"] = self.OnSubStart7311105,
        ["7311106"] = self.OnSubStart7311106,
        ["7311107"] = self.OnSubStart7311107,
        ["7311108"] = self.OnSubStart7311108
    }
end

function Quest73111:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7311101"] = self.OnSubFinish7311101,
        ["7311102"] = self.OnSubFinish7311102,
        ["7311103"] = self.OnSubFinish7311103,
        ["7311104"] = self.OnSubFinish7311104,
        ["7311105"] = self.OnSubFinish7311105,
        ["7311106"] = self.OnSubFinish7311106,
        ["7311107"] = self.OnSubFinish7311107,
        ["7311108"] = self.OnSubFinish7311108
    }
end

function Quest73111:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73111:Start()
    print("Start")
end

function Quest73111:OnDestroy()
    print("OnDestroy")
end

function Quest73111:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73111:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73111:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73111:OnSubStart7311101(arg1)
    print("OnSubStart7311101")
end

function Quest73111:OnSubFinish7311101(arg1)
    print("OnSubFinish7311101")
end

function Quest73111:OnSubStart7311102(arg1)
    print("OnSubStart7311102")
    self:CreateQuestNpc(arg1, npcs.Npc20752Data.id, 1)
end

function Quest73111:OnSubFinish7311102(arg1)
    print("OnSubFinish7311102")
    self:ActionSafeCall(function(arg1)
        arg1:GetQuestNpcActor(npcs.Npc20752Data.alias):DestroyWithDisappear(false)
    end)
end

function Quest73111:OnSubStart7311103(arg1)
    print("OnSubStart7311103")
end

function Quest73111:OnSubFinish7311103(arg1)
    print("OnSubFinish7311103")
end

function Quest73111:OnSubStart7311104(arg1)
    print("OnSubStart7311104")
end

function Quest73111:OnSubFinish7311104(arg1)
    print("OnSubFinish7311104")
end

function Quest73111:OnSubStart7311105(arg1)
    print("OnSubStart7311105")
end

function Quest73111:OnSubFinish7311105(arg1)
    print("OnSubFinish7311105")
end

function Quest73111:OnSubStart7311106(arg1)
    print("OnSubStart7311106")
end

function Quest73111:OnSubFinish7311106(arg1)
    print("OnSubFinish7311106")
end

function Quest73111:OnSubStart7311107(arg1)
    print("OnSubStart7311107")
end

function Quest73111:OnSubFinish7311107(arg1)
    print("OnSubFinish7311107")
end

function Quest73111:OnSubStart7311108(arg1)
    print("OnSubStart7311108")
end

function Quest73111:OnSubFinish7311108(arg1)
    print("OnSubFinish7311108")
end

return Quest73111

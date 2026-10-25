require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72247 = class("Quest72247", QuestActorProxy)
Quest72247.defaultAlias = "Quest72247"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72247:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72247:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7224701"] = self.OnSubStart7224701,
        ["7224705"] = self.OnSubStart7224705,
        ["7224702"] = self.OnSubStart7224702,
        ["7224703"] = self.OnSubStart7224703,
        ["7224704"] = self.OnSubStart7224704
    }
end

function Quest72247:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7224701"] = self.OnSubFinish7224701,
        ["7224705"] = self.OnSubFinish7224705,
        ["7224702"] = self.OnSubFinish7224702,
        ["7224703"] = self.OnSubFinish7224703,
        ["7224704"] = self.OnSubFinish7224704
    }
end

function Quest72247:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72247:Start()
    print("Start")
end

function Quest72247:OnDestroy()
    print("OnDestroy")
end

function Quest72247:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72247:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72247:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72247:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72247:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72247:OnSubStart7224701(arg1)
    print("OnSubStart7224701")
end

function Quest72247:OnSubFinish7224701(arg1)
    print("OnSubFinish7224701")
end

function Quest72247:OnSubStart7224705(arg1)
    print("OnSubStart7224705")
    self:NpcCreate(arg1, npcs.NPC20355Data.id, 1)
end

function Quest72247:OnSubFinish7224705(arg1)
    print("OnSubFinish7224705")
end

function Quest72247:OnSubStart7224702(arg1)
    print("OnSubStart7224702")
end

function Quest72247:OnSubFinish7224702(arg1)
    print("OnSubFinish7224702")
end

function Quest72247:OnSubStart7224703(arg1)
    print("OnSubStart7224703")
end

function Quest72247:OnSubFinish7224703(arg1)
    print("OnSubFinish7224703")
end

function Quest72247:OnSubStart7224704(arg1)
    print("OnSubStart7224704")
end

function Quest72247:OnSubFinish7224704(arg1)
    print("OnSubFinish7224704")
    self:NpcDestroyWithBlackscreen(5, npcs.NPC20355Data.alias)
end

return Quest72247

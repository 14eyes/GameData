require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23034 = class("Quest23034", QuestActorProxy)
Quest23034.defaultAlias = "Quest23034"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest23034:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest23034:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2303401"] = self.OnSubStart2303401,
        ["2303402"] = self.OnSubStart2303402,
        ["2303403"] = self.OnSubStart2303403,
        ["2303404"] = self.OnSubStart2303404,
        ["2303405"] = self.OnSubStart2303405
    }
end

function Quest23034:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2303401"] = self.OnSubFinish2303401,
        ["2303402"] = self.OnSubFinish2303402,
        ["2303403"] = self.OnSubFinish2303403,
        ["2303404"] = self.OnSubFinish2303404,
        ["2303405"] = self.OnSubFinish2303405
    }
end

function Quest23034:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23034:Start()
    print("Start")
end

function Quest23034:OnDestroy()
    print("OnDestroy")
end

function Quest23034:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23034:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23034:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest23034:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest23034:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23034:OnSubStart2303401(arg1)
    print("OnSubStart2303401")
    self:CreateQuestNpc(arg1, npcs.Npc20657Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20658Data.id, 2)
end

function Quest23034:OnSubFinish2303401(arg1)
    print("OnSubFinish2303401")
end

function Quest23034:OnSubStart2303402(arg1)
    print("OnSubStart2303402")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20657Data.id, 1)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20658Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc4042Data.id, 3)
end

function Quest23034:OnSubFinish2303402(arg1)
    print("OnSubFinish2303402")
end

function Quest23034:OnSubStart2303403(arg1)
    print("OnSubStart2303403")
end

function Quest23034:OnSubFinish2303403(arg1)
    print("OnSubFinish2303403")
end

function Quest23034:OnSubStart2303404(arg1)
    print("OnSubStart2303404")
end

function Quest23034:OnSubFinish2303404(arg1)
    print("OnSubFinish2303404")
end

function Quest23034:OnSubStart2303405(arg1)
    print("OnSubStart2303405")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20657Data.id, 1)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20658Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12700Data.id, 3)
end

function Quest23034:OnSubFinish2303405(arg1)
    print("OnSubFinish2303405")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4042Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc12700Data.alias)
end

return Quest23034

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20046 = class("Quest20046", QuestActorProxy)
Quest20046.defaultAlias = "Quest20046"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest20046:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest20046:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2004601"] = self.OnSubStart2004601,
        ["2004602"] = self.OnSubStart2004602,
        ["2004603"] = self.OnSubStart2004603,
        ["2004604"] = self.OnSubStart2004604
    }
end

function Quest20046:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2004601"] = self.OnSubFinish2004601,
        ["2004602"] = self.OnSubFinish2004602,
        ["2004603"] = self.OnSubFinish2004603,
        ["2004604"] = self.OnSubFinish2004604
    }
end

function Quest20046:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest20046:Start()
    print("Start")
end

function Quest20046:OnDestroy()
    print("OnDestroy")
end

function Quest20046:OnMainFinished(arg1)
    print("OnMainFinished")
    self:SafeDestroyQuestNpc(npcs.Npc1408Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1700Data.alias, 3)
    self:LightNotifyTo(npcs.Npc1700Data.alias, 0, true)
end

function Quest20046:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest20046:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1408Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1700Data.alias, 3)
    self:LightNotifyTo(npcs.Npc1700Data.alias, 0, true)
end

function Quest20046:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest20046:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest20046:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest20046:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest20046:OnSubStart2004601(arg1)
    print("OnSubStart2004601")
    self:NpcCreate(arg1, npcs.Npc1408Data.id, 1)
    self:NpcCreate(arg1, npcs.Npc1700Data.id, 2)
end

function Quest20046:OnSubFinish2004601(arg1)
    print("OnSubFinish2004601")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    self:ActionSafeCall(function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc1700Data.alias, 3)
    end)
end

function Quest20046:OnSubStart2004602(arg1)
    print("OnSubStart2004602")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc1408Data.id, 1)
        arg1_2:NotifyTo(npcs.Npc1700Data.alias, 1, true)
    end)
end

function Quest20046:OnSubFinish2004602(arg1)
    print("OnSubFinish2004602")
end

function Quest20046:OnSubStart2004603(arg1)
    print("OnSubStart2004603")
    self:NotifyTo(npcs.Npc1700Data.alias, 1, true)
end

function Quest20046:OnSubFinish2004603(arg1)
    print("OnSubFinish2004603")
end

function Quest20046:OnSubStart2004604(arg1)
    print("OnSubStart2004604")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc1700Data.id, 1)
end

function Quest20046:OnSubFinish2004604(arg1)
    print("OnSubFinish2004604")
    self:NpcDestroy(npcs.Npc1408Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1700Data.alias)
end

return Quest20046

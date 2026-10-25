require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20052 = class("Quest20052", QuestActorProxy)
Quest20052.defaultAlias = "Quest20052"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest20052:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest20052:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2005201"] = self.OnSubStart2005201,
        ["2005202"] = self.OnSubStart2005202,
        ["2005203"] = self.OnSubStart2005203,
        ["2005204"] = self.OnSubStart2005204
    }
end

function Quest20052:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2005201"] = self.OnSubFinish2005201,
        ["2005202"] = self.OnSubFinish2005202,
        ["2005203"] = self.OnSubFinish2005203,
        ["2005204"] = self.OnSubFinish2005204
    }
end

function Quest20052:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest20052:Start()
    print("Start")
end

function Quest20052:OnDestroy()
    print("OnDestroy")
end

function Quest20052:OnMainFinished(arg1)
    print("OnMainFinished")
    self:SafeDestroyQuestNpc(npcs.Npc1408Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1700Data.alias, 3)
    self:LightNotifyTo(npcs.Npc1700Data.alias, 0, true)
end

function Quest20052:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest20052:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1408Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1700Data.alias, 3)
    self:LightNotifyTo(npcs.Npc1700Data.alias, 0, true)
end

function Quest20052:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest20052:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest20052:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest20052:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest20052:OnSubStart2005201(arg1)
    print("OnSubStart2005201")
    self:NpcCreate(arg1, npcs.Npc1408Data.id, 1)
    self:NpcCreate(arg1, npcs.Npc1700Data.id, 2)
end

function Quest20052:OnSubFinish2005201(arg1)
    print("OnSubFinish2005201")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    self:ActionSafeCall(function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.Npc1700Data.alias, 3)
    end)
end

function Quest20052:OnSubStart2005202(arg1)
    print("OnSubStart2005202")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc1408Data.id, 1)
        arg1_2:NotifyTo(npcs.Npc1700Data.alias, 1, true)
    end)
end

function Quest20052:OnSubFinish2005202(arg1)
    print("OnSubFinish2005202")
end

function Quest20052:OnSubStart2005203(arg1)
    print("OnSubStart2005203")
    self:NotifyTo(npcs.Npc1700Data.alias, 1, true)
end

function Quest20052:OnSubFinish2005203(arg1)
    print("OnSubFinish2005203")
end

function Quest20052:OnSubStart2005204(arg1)
    print("OnSubStart2005204")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc1700Data.id, 1)
end

function Quest20052:OnSubFinish2005204(arg1)
    print("OnSubFinish2005204")
    self:NpcDestroy(npcs.Npc1408Data.alias, 3)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc1700Data.alias)
end

return Quest20052

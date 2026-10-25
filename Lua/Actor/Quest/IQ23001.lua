require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23001 = class("Quest23001", QuestActorProxy)
Quest23001.defaultAlias = "Quest23001"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest23001:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest23001:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2300101"] = self.OnSubStart2300101,
        ["2300102"] = self.OnSubStart2300102,
        ["2300103"] = self.OnSubStart2300103,
        ["2300104"] = self.OnSubStart2300104,
        ["2300105"] = self.OnSubStart2300105
    }
end

function Quest23001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2300101"] = self.OnSubFinish2300101,
        ["2300102"] = self.OnSubFinish2300102,
        ["2300103"] = self.OnSubFinish2300103,
        ["2300104"] = self.OnSubFinish2300104,
        ["2300105"] = self.OnSubFinish2300105
    }
end

function Quest23001:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23001:Start()
    print("Start")
end

function Quest23001:OnDestroy()
    print("OnDestroy")
end

function Quest23001:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23001:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23001:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4004Data.alias, 3)
end

function Quest23001:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23001:OnSubStart2300101(arg1)
    print("OnSubStart2300101")
    self:CreateQuestNpc(arg1, npcs.Npc4004Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc4004Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
end

function Quest23001:OnSubFinish2300101(arg1)
    print("OnSubFinish2300101")
end

function Quest23001:OnSubStart2300102(arg1)
    print("OnSubStart2300102")
end

function Quest23001:OnSubFinish2300102(arg1)
    print("OnSubFinish2300102")
end

function Quest23001:OnSubStart2300103(arg1)
    print("OnSubStart2300103")
end

function Quest23001:OnSubFinish2300103(arg1)
    print("OnSubFinish2300103")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4004Data.alias)
end

function Quest23001:OnSubStart2300104(arg1)
    print("OnSubStart2300104")
end

function Quest23001:OnSubFinish2300104(arg1)
    print("OnSubFinish2300104")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4004Data.alias)
end

function Quest23001:OnSubStart2300105(arg1)
    print("OnSubStart2300105")
end

function Quest23001:OnSubFinish2300105(arg1)
    print("OnSubFinish2300105")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4004Data.alias)
end

return Quest23001

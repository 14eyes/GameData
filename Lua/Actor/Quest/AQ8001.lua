require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest8001 = class("Quest8001", QuestActorProxy)
Quest8001.defaultAlias = "Quest8001"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets

function Quest8001:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
end

function Quest8001:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["800101"] = self.OnSubStart800101,
        ["800102"] = self.OnSubStart800102,
        ["800103"] = self.OnSubStart800103,
        ["800104"] = self.OnSubStart800104,
        ["800105"] = self.OnSubStart800105,
        ["800109"] = self.OnSubStart800109,
        ["800108"] = self.OnSubStart800108,
        ["800106"] = self.OnSubStart800106,
        ["800107"] = self.OnSubStart800107
    }
end

function Quest8001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["800101"] = self.OnSubFinish800101,
        ["800102"] = self.OnSubFinish800102,
        ["800103"] = self.OnSubFinish800103,
        ["800104"] = self.OnSubFinish800104,
        ["800105"] = self.OnSubFinish800105,
        ["800109"] = self.OnSubFinish800109,
        ["800108"] = self.OnSubFinish800108,
        ["800106"] = self.OnSubFinish800106,
        ["800107"] = self.OnSubFinish800107
    }
end

function Quest8001:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["800101"] = self.OnSubFailed800101,
        ["800102"] = self.OnSubFailed800102,
        ["800103"] = self.OnSubFailed800103,
        ["800104"] = self.OnSubFailed800104,
        ["800105"] = self.OnSubFailed800105,
        ["800109"] = self.OnSubFailed800109,
        ["800108"] = self.OnSubFailed800108,
        ["800106"] = self.OnSubFailed800106,
        ["800107"] = self.OnSubFailed800107
    }
end

function Quest8001:Start()
    print("Start")
end

function Quest8001:OnDestroy()
    print("OnDestroy")
end

function Quest8001:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest8001:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest8001:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest8001:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:UnSpawn(gadgets.Gadget70710324Data.alias)
        self:SpawnGadgetById(800107, gadgets.Gadget70710324Data.id, 1)
    elseif arg1 == 2 then
        self:UnSpawn(gadgets.Gadget70710324Data.alias)
    end
end

function Quest8001:OnSubStart800101(arg1)
    print("OnSubStart800101")
    self:CreateQuestNpc(arg1, npcs.Npc1022Data.id, 1)
end

function Quest8001:OnSubFinish800101(arg1)
    print("OnSubFinish800101")
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 3)
end

function Quest8001:OnSubFailed800101(arg1)
    print("OnSubFailed800101")
end

function Quest8001:OnSubStart800102(arg1)
    print("OnSubStart800102")
end

function Quest8001:OnSubFinish800102(arg1)
    print("OnSubFinish800102")
end

function Quest8001:OnSubFailed800102(arg1)
    print("OnSubFailed800102")
end

function Quest8001:OnSubStart800103(arg1)
    print("OnSubStart800103")
    self:CallDelay(2, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1022Data.id, 1)
            arg1_2:RequestInteraction(npcs.Npc1022Data.alias)
        end, nil, nil, "")
    end)
end

function Quest8001:OnSubFinish800103(arg1)
    print("OnSubFinish800103")
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 3)
end

function Quest8001:OnSubFailed800103(arg1)
    print("OnSubFailed800103")
end

function Quest8001:OnSubStart800104(arg1)
    print("OnSubStart800104")
end

function Quest8001:OnSubFinish800104(arg1)
    print("OnSubFinish800104")
end

function Quest8001:OnSubFailed800104(arg1)
    print("OnSubFailed800104")
end

function Quest8001:OnSubStart800105(arg1)
    print("OnSubStart800105")
    self:CallDelay(2, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1022Data.id, 1)
            arg1_2:RequestInteraction(npcs.Npc1022Data.alias)
        end, nil, nil, "")
    end)
end

function Quest8001:OnSubFinish800105(arg1)
    print("OnSubFinish800105")
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 3)
end

function Quest8001:OnSubFailed800105(arg1)
    print("OnSubFailed800105")
end

function Quest8001:OnSubStart800106(arg1)
    print("OnSubStart800106")
end

function Quest8001:OnSubFinish800106(arg1)
    print("OnSubFinish800106")
end

function Quest8001:OnSubFailed800106(arg1)
    print("OnSubFailed800106")
end

function Quest8001:OnSubStart800107(arg1)
    print("OnSubStart800107")
    self:CallDelay(2, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc1022Data.id, 1)
            arg1_2:RequestInteraction(npcs.Npc1022Data.alias)
        end, nil, nil, "")
    end)
end

function Quest8001:OnSubFinish800107(arg1)
    print("OnSubFinish800107")
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 3)
end

function Quest8001:OnSubFailed800107(arg1)
    print("OnSubFailed800107")
end

function Quest8001:OnSubStart800109(arg1)
    print("OnSubStart800109")
    self:CreateQuestNpc(arg1, npcs.AbyssFireData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc10920Data.id, 2)
    actorMgr:CreateActorWithPos("Q8001CampTrigger", "Actor/Gadget/Q8001CampTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q8001Camp3").pos, sceneData:GetDummyPoint(3, "Q8001Camp3").rot, true, false, 3)
end

function Quest8001:OnSubFinish800109(arg1)
    print("OnSubFinish800109")
end

function Quest8001:OnSubFailed800109(arg1)
    print("OnSubFailed800109")
end

function Quest8001:OnSubStart800108(arg1)
    print("OnSubStart800108")
    self:ShowBlackScreen(0.5, 1, 0, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc1022Data.id, 1)
        arg1_2:RequestInteraction(npcs.Npc1022Data.alias)
    end, nil, nil, "")
end

function Quest8001:OnSubFinish800108(arg1)
    print("OnSubFinish800108")
    self:SafeDestroyQuestNpc(npcs.Npc1022Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.AbyssFireData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10920Data.alias, 3)
end

function Quest8001:OnSubFailed800108(arg1)
    print("OnSubFailed800108")
end

return Quest8001

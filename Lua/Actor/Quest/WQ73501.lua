require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73501 = class("Quest73501", QuestActorProxy)
Quest73501.defaultAlias = "Quest73501"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest73501:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest73501:OnSubStartHandlerBuild()
    self.subStartHandlers = {["7350101"] = self.OnSubStart7350101}
end

function Quest73501:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {["7350101"] = self.OnSubFinish7350101}
end

function Quest73501:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73501:Start()
    print("Start")
end

function Quest73501:OnDestroy()
    print("OnDestroy")
end

function Quest73501:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73501:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73501:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4216Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4217Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30214Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30215Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30216Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30212Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30213Data.alias, 3)
    actorMgr:GetActor("73501"):UnSpawn(gadgets.Gadget70710824Data.alias)
    actorMgr:DestroyEntityActor("Q73501Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q73501Trigger1", 3, false)
end

function Quest73501:DestroyPaimon()
    print("DestroyPaimon")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.PaimonData.alias)
        if questNpcActor ~= nil then
            if questNpcActor.uActor ~= nil then
                questNpcActor:DestroyWithDisappear(false)
            end
        end
    end)
end

function Quest73501:OnSubStart7350101(arg1)
    print("OnSubStart7350101")
    self:UnSpawn(gadgets.Gadget70710824Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710824Data.id, 1, 0)
    self:CallDelay(2, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc4216Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc4217Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc30214Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc30215Data.id, 0)
        arg1_2:CreateQuestNpc(arg1, npcs.Npc30216Data.id, 0)
    end)

    if self:GetQuestVar(7350101, 0) == 0 then
        self:NarratorOnlyTaskByData(datas.NarratorWithId01)
        self:SetQuestVarByMainId(0, 1)
    end

    actorMgr:CreateActorWithPos("Q73501Trigger", "Actor/Gadget/Q73501Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7350101_N30216").pos, sceneData:GetDummyPoint(3, "Q7350101_N30216").rot, true, false, 3)
end

function Quest73501:OnSubFinish7350101(arg1)
    print("OnSubFinish7350101")
    self:SafeDestroyQuestNpc(npcs.Npc4216Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4217Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30214Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30215Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30216Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710824Data.alias)
end

return Quest73501

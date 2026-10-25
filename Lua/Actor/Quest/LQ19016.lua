require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19016 = class("Quest19016", QuestActorProxy)
Quest19016.defaultAlias = "Quest19016"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets

function Quest19016:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
end

function Quest19016:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1901601"] = self.OnSubStart1901601,
        ["1901602"] = self.OnSubStart1901602,
        ["1901603"] = self.OnSubStart1901603,
        ["1901604"] = self.OnSubStart1901604,
        ["1901605"] = self.OnSubStart1901605,
        ["1901607"] = self.OnSubStart1901607
    }
end

function Quest19016:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1901601"] = self.OnSubFinish1901601,
        ["1901602"] = self.OnSubFinish1901602,
        ["1901603"] = self.OnSubFinish1901603,
        ["1901604"] = self.OnSubFinish1901604,
        ["1901605"] = self.OnSubFinish1901605,
        ["1901607"] = self.OnSubFinish1901607
    }
end

function Quest19016:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1901601"] = self.OnSubFailed1901601,
        ["1901602"] = self.OnSubFailed1901602,
        ["1901603"] = self.OnSubFailed1901603,
        ["1901604"] = self.OnSubFailed1901604,
        ["1901605"] = self.OnSubFailed1901605,
        ["1901607"] = self.OnSubFailed1901607
    }
end

function Quest19016:Start()
    print("Start")
end

function Quest19016:OnDestroy()
    print("OnDestroy")
end

function Quest19016:OnMainFinished(arg1)
    print("OnMainFinished")
    self:LightNotifyTo(npcs.Npc3106Data.alias, 0, true)
end

function Quest19016:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19016:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12167Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12168Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12169Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12170Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_SayuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12209Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12210Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12211Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12316Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12317Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3106Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q19016Trigger_BattleArea", 3, false)
    actorMgr:DestroyEntityActor("Q19016Trigger_BattleTalk", 3, false)
    actorMgr:DestroyEntityActor("Q19016Trigger_FinalTalk", 3, false)
    actorMgr:DestroyEntityActor("Q19016Trigger_Talk", 3, false)
end

function Quest19016:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19016:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1901604 then
        print("\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\1481901604")
        self:UnSpawn(gadgets.Gadget70710502Data.alias)
        self:SpawnGadgetById(1901604, gadgets.Gadget70710502Data.id, 1)
    elseif arg1 == 2 then
    end
end

function Quest19016:OnSubStart1901601(arg1)
    print("OnSubStart1901601")
    self:CreateQuestNpc(arg1, npcs.Npc12167Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(105301, 1901601)
    actorMgr:CreateActorWithPos("Q19016Trigger_Talk", "Actor/Gadget/Q19016Trigger_Talk", 70900002, 0, sceneData:GetDummyPoint(3, "Q19016_Guanyuan1_Pos").pos, sceneData:GetDummyPoint(3, "Q19016_Guanyuan1_Pos").rot, true, false, 3)
end

function Quest19016:OnSubFinish1901601(arg1)
    print("OnSubFinish1901601")
    self:SafeDestroyQuestNpc(npcs.Npc12167Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_SayuData.alias, 3)
end

function Quest19016:OnSubFailed1901601(arg1)
    print("OnSubFailed1901601")
end

function Quest19016:OnSubStart1901602(arg1)
    print("OnSubStart1901602")
    self:CreateQuestNpc(arg1, npcs.Npc12168Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12169Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12316Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc12317Data.id, 6)
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(105301, 1901602)
    actorMgr:CreateActorWithPos("Q19016Trigger_BattleTalk", "Actor/Gadget/Q19016Trigger_BattleTalk", 70900002, 0, sceneData:GetDummyPoint(3, "Q19016_Hailuangui2_Pos").pos, sceneData:GetDummyPoint(3, "Q19016_Hailuangui2_Pos").rot, true, false, 3)
end

function Quest19016:OnSubFinish1901602(arg1)
    print("OnSubFinish1901602")
    self:SafeDestroyQuestNpc(npcs.Npc12167Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12168Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12169Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_SayuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12316Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12317Data.alias, 3)
end

function Quest19016:OnSubFailed1901602(arg1)
    print("OnSubFailed1901602")
end

function Quest19016:OnSubStart1901603(arg1)
    print("OnSubStart1901603")
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q19016Trigger_BattleArea", "Actor/Gadget/Q19016Trigger_BattleArea", 70900002, 0, sceneData:GetDummyPoint(3, "Q19016_Hailuangui_Pos").pos, sceneData:GetDummyPoint(3, "Q19016_Hailuangui_Pos").rot, true, false, 3)
end

function Quest19016:OnSubFinish1901603(arg1)
    print("OnSubFinish1901603")
end

function Quest19016:OnSubFailed1901603(arg1)
    print("OnSubFailed1901603")
end

function Quest19016:OnSubStart1901604(arg1)
    print("OnSubStart1901604")
    self:CreateQuestNpc(arg1, npcs.Npc12170Data.id, 4)
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(105301, 1901604)
    self:RequestInteraction(npcs.Npc12170Data.alias)
end

function Quest19016:OnSubFinish1901604(arg1)
    print("OnSubFinish1901604")
    self:SafeDestroyQuestNpc(npcs.Npc12167Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12168Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12169Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12170Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_SayuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12209Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12210Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12211Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710502Data.alias)
end

function Quest19016:OnSubFailed1901604(arg1)
    print("OnSubFailed1901604")
end

function Quest19016:OnSubStart1901605(arg1)
    print("OnSubStart1901605")
    self:CreateQuestNpc(arg1, npcs.Npc1013Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(105301, 1901605)
end

function Quest19016:OnSubFinish1901605(arg1)
    print("OnSubFinish1901605")
    self:SafeDestroyQuestNpc(npcs.Npc12167Data.alias, 3)
end

function Quest19016:OnSubFailed1901605(arg1)
    print("OnSubFailed1901605")
end

function Quest19016:OnSubStart1901607(arg1)
    print("OnSubStart1901607")
    self:CreateQuestNpc(arg1, npcs.Coop_SayuData.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(105301, 1901607)
end

function Quest19016:OnSubFinish1901607(arg1)
    print("OnSubFinish1901607")
    self:SafeDestroyQuestNpc(npcs.Npc1013Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_SayuData.alias, 3)
    self:LightNotifyTo(npcs.Npc3106Data.alias, 0, true)
end

function Quest19016:OnSubFailed1901607(arg1)
    print("OnSubFailed1901607")
end

return Quest19016

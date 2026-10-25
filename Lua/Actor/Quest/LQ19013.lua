require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19013 = class("Quest19013", QuestActorProxy)
Quest19013.defaultAlias = "Quest19013"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest19013:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest19013:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1901301"] = self.OnSubStart1901301,
        ["1901302"] = self.OnSubStart1901302,
        ["1901307"] = self.OnSubStart1901307,
        ["1901309"] = self.OnSubStart1901309,
        ["1901304"] = self.OnSubStart1901304,
        ["1901305"] = self.OnSubStart1901305,
        ["1901306"] = self.OnSubStart1901306
    }
end

function Quest19013:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1901301"] = self.OnSubFinish1901301,
        ["1901302"] = self.OnSubFinish1901302,
        ["1901307"] = self.OnSubFinish1901307,
        ["1901309"] = self.OnSubFinish1901309,
        ["1901304"] = self.OnSubFinish1901304,
        ["1901305"] = self.OnSubFinish1901305,
        ["1901306"] = self.OnSubFinish1901306
    }
end

function Quest19013:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1901301"] = self.OnSubFailed1901301,
        ["1901302"] = self.OnSubFailed1901302,
        ["1901307"] = self.OnSubFailed1901307,
        ["1901309"] = self.OnSubFailed1901309,
        ["1901304"] = self.OnSubFailed1901304,
        ["1901305"] = self.OnSubFailed1901305,
        ["1901306"] = self.OnSubFailed1901306
    }
end

function Quest19013:Start()
    print("Start")
end

function Quest19013:OnDestroy()
    print("OnDestroy")
end

function Quest19013:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19013:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19013:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc12170Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3106Data.alias, 0, true)
    self:SafeDestroyQuestNpc(npcs.Coop_SayuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3044Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12281Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12282Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12283Data.alias, 3)
    actorMgr:DestroyEntityActor("Q19013Trigger_Battle", 3, false)
    actorMgr:DestroyEntityActor("Q19013Trigger_BattleLeave", 3, false)
    actorMgr:DestroyEntityActor("Q19013Trigger_Eat", 3, false)
end

function Quest19013:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19013:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1901302 then
        print("In_Eat_1111111111111111111111111111")
    elseif arg1 == 1901307 then
        print("In_Eat_222222222222222222222222222")
        self:UnSpawn(gadgets.Gadget70710456Data.alias)
        self:SpawnGadgetById(1901307, gadgets.Gadget70710456Data.id, 1)
        self:UnSpawn(gadgets.Gadget70710452Data.alias)
        self:SpawnGadgetById(1901307, gadgets.Gadget70710452Data.id, 2)
        self:UnSpawn(gadgets.Gadget70710455Data.alias)
        self:SpawnGadgetById(1901307, gadgets.Gadget70710455Data.id, 3)
    end
end

function Quest19013:OnSubStart1901301(arg1)
    print("OnSubStart1901301")
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc3044Data.id, 3)
    actorMgr:CreateActorWithPos("Q19013Trigger_Eat", "Actor/Gadget/Q19013Trigger_Eat", 70900002, 0, sceneData:GetDummyPoint(3, "Q19013_Eat_Pos").pos, sceneData:GetDummyPoint(3, "Q19013_Eat_Pos").rot, true, false, 3)
end

function Quest19013:OnSubFinish1901301(arg1)
    print("OnSubFinish1901301")
    self:SafeDestroyQuestNpc(npcs.Npc3106Data.alias, 3)
end

function Quest19013:OnSubFailed1901301(arg1)
    print("OnSubFailed1901301")
end

function Quest19013:OnSubStart1901302(arg1)
    print("OnSubStart1901302")
    self:CreateQuestNpc(arg1, npcs.Npc12170Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(105301, 1901302)
end

function Quest19013:OnSubFinish1901302(arg1)
    print("OnSubFinish1901302")
    self:SafeDestroyQuestNpc(npcs.Coop_SayuData.alias, 3)
end

function Quest19013:OnSubFailed1901302(arg1)
    print("OnSubFailed1901302")
end

function Quest19013:OnSubStart1901307(arg1)
    print("OnSubStart1901307")
    self:CreateQuestNpc(arg1, npcs.Npc12170Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc3044Data.id, 4)
    self:RequestCoopInteractionFromSubStartPoint(105301, 1901307)
end

function Quest19013:OnSubFinish1901307(arg1)
    print("OnSubFinish1901307")
    self:SafeDestroyQuestNpc(npcs.Npc12170Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3106Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_SayuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3044Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710456Data.alias)
    self:UnSpawn(gadgets.Gadget70710452Data.alias)
    self:UnSpawn(gadgets.Gadget70710455Data.alias)
end

function Quest19013:OnSubFailed1901307(arg1)
    print("OnSubFailed1901307")
end

function Quest19013:OnSubStart1901309(arg1)
    print("OnSubStart1901309")
    self:CreateQuestNpc(arg1, npcs.Npc12170Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc3044Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc12281Data.id, 5)
    self:GetQuestNpcActor(npcs.Npc12281Data.alias):DoFreeStyle(1280, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12282Data.id, 6)
    self:GetQuestNpcActor(npcs.Npc12282Data.alias):DoFreeStyle(1280, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12283Data.id, 7)
    self:GetQuestNpcActor(npcs.Npc12283Data.alias):DoFreeStyle(1280, true, nil, true, true, false)
    actorMgr:CreateActorWithPos("Q19013Trigger_Battle", "Actor/Gadget/Q19013Trigger_Battle", 70900002, 0, sceneData:GetDummyPoint(3, "Q19013_Battle_Pos").pos, sceneData:GetDummyPoint(3, "Q19013_Battle_Pos").rot, true, false, 3)
end

function Quest19013:OnSubFinish1901309(arg1)
    print("OnSubFinish1901309")
    self:SafeDestroyQuestNpc(npcs.Npc12170Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_SayuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3044Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12281Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12282Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12283Data.alias, 3)
    actorMgr:DestroyEntityActor("Q19013Trigger_Battle", 3, false)
end

function Quest19013:OnSubFailed1901309(arg1)
    print("OnSubFailed1901309")
end

function Quest19013:OnSubStart1901304(arg1)
    print("OnSubStart1901304")
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q19013Trigger_BattleLeave", "Actor/Gadget/Q19013Trigger_BattleLeave", 70900002, 0, sceneData:GetDummyPoint(3, "Q19013_Sayu2_Pos").pos, sceneData:GetDummyPoint(3, "Q19013_Sayu2_Pos").rot, true, false, 3)
end

function Quest19013:OnSubFinish1901304(arg1)
    print("OnSubFinish1901304")
end

function Quest19013:OnSubFailed1901304(arg1)
    print("OnSubFailed1901304")
end

function Quest19013:OnSubStart1901305(arg1)
    print("OnSubStart1901305")
    self:CreateQuestNpc(arg1, npcs.Npc12170Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(105301, 1901305)
    self:RequestInteraction(npcs.Npc12170Data.alias)
end

function Quest19013:OnSubFinish1901305(arg1)
    print("OnSubFinish1901305")
    self:SafeDestroyQuestNpc(npcs.Coop_SayuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12282Data.alias, 3)
end

function Quest19013:OnSubFailed1901305(arg1)
    print("OnSubFailed1901305")
end

function Quest19013:OnSubStart1901306(arg1)
    print("OnSubStart1901306")
    self:CreateQuestNpc(arg1, npcs.Npc12170Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3106Data.alias, 1, true)
    self:ActionSafeCall(function(arg1)
        arg1:RequestCoopInteractionFromSubStartPoint(105301, 1901306)
    end)
end

function Quest19013:OnSubFinish1901306(arg1)
    print("OnSubFinish1901306")
    self:SafeDestroyQuestNpc(npcs.Npc12170Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Coop_SayuData.alias, 3)
    self:LightNotifyTo(npcs.Npc3106Data.alias, 0, true)
end

function Quest19013:OnSubFailed1901306(arg1)
    print("OnSubFailed1901306")
end

return Quest19013

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19146 = class("Quest19146", QuestActorProxy)
Quest19146.defaultAlias = "Quest19146"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19146:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19146:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1914601"] = self.OnSubStart1914601,
        ["1914610"] = self.OnSubStart1914610,
        ["1914611"] = self.OnSubStart1914611,
        ["1914612"] = self.OnSubStart1914612,
        ["1914608"] = self.OnSubStart1914608,
        ["1914602"] = self.OnSubStart1914602,
        ["1914603"] = self.OnSubStart1914603,
        ["1914604"] = self.OnSubStart1914604,
        ["1914605"] = self.OnSubStart1914605,
        ["1914606"] = self.OnSubStart1914606,
        ["1914607"] = self.OnSubStart1914607,
        ["1914613"] = self.OnSubStart1914613,
        ["1914609"] = self.OnSubStart1914609
    }
end

function Quest19146:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1914601"] = self.OnSubFinish1914601,
        ["1914610"] = self.OnSubFinish1914610,
        ["1914611"] = self.OnSubFinish1914611,
        ["1914612"] = self.OnSubFinish1914612,
        ["1914608"] = self.OnSubFinish1914608,
        ["1914602"] = self.OnSubFinish1914602,
        ["1914603"] = self.OnSubFinish1914603,
        ["1914604"] = self.OnSubFinish1914604,
        ["1914605"] = self.OnSubFinish1914605,
        ["1914606"] = self.OnSubFinish1914606,
        ["1914607"] = self.OnSubFinish1914607,
        ["1914613"] = self.OnSubFinish1914613,
        ["1914609"] = self.OnSubFinish1914609
    }
end

function Quest19146:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19146:Start()
    print("Start")
end

function Quest19146:OnDestroy()
    print("OnDestroy")
end

function Quest19146:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ClearNarratorTask()
end

function Quest19146:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19146:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_ShinobuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12276Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12277Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12278Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12530Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3163Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q1914609Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1914609Triggerkaiche", 3, false)
end

function Quest19146:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19146:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19146:OnSubStart1914601(arg1)
    print("OnSubStart1914601")
    self:CreateQuestNpc(arg1, npcs.Npc12530Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc3163Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(106501, 1914601)
    self:GetQuestNpcActor(npcs.Npc12530Data.alias):DisableInteeHeadCtrl(true)
end

function Quest19146:OnSubFinish1914601(arg1)
    print("OnSubFinish1914601")
    self:SafeDestroyQuestNpc(npcs.Coop_ShinobuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12530Data.alias, 3)
end

function Quest19146:OnSubStart1914610(arg1)
    print("OnSubStart1914610")
    self:DailyNpcSafeHideSelf(npcs.Npc3163Data.alias, 1, true)
end

function Quest19146:OnSubFinish1914610(arg1)
    print("OnSubFinish1914610")
end

function Quest19146:OnSubStart1914611(arg1)
    print("OnSubStart1914611")
    self:DailyNpcSafeHideSelf(npcs.Npc3163Data.alias, 1, true)
end

function Quest19146:OnSubFinish1914611(arg1)
    print("OnSubFinish1914611")
end

function Quest19146:OnSubStart1914612(arg1)
    print("OnSubStart1914612")
    self:DailyNpcSafeHideSelf(npcs.Npc3163Data.alias, 1, true)
end

function Quest19146:OnSubFinish1914612(arg1)
    print("OnSubFinish1914612")
end

function Quest19146:OnSubStart1914608(arg1)
    print("OnSubStart1914608")
    self:DailyNpcSafeHideSelf(npcs.Npc3163Data.alias, 1, true)
end

function Quest19146:OnSubFinish1914608(arg1)
    print("OnSubFinish1914608")
end

function Quest19146:OnSubStart1914602(arg1)
    print("OnSubStart1914602")
    self:DailyNpcSafeHideSelf(npcs.Npc3163Data.alias, 1, true)
end

function Quest19146:OnSubFinish1914602(arg1)
    print("OnSubFinish1914602")
end

function Quest19146:OnSubStart1914603(arg1)
    print("OnSubStart1914603")
    self:DailyNpcSafeHideSelf(npcs.Npc3163Data.alias, 1, true)
end

function Quest19146:OnSubFinish1914603(arg1)
    print("OnSubFinish1914603")
end

function Quest19146:OnSubStart1914604(arg1)
    print("OnSubStart1914604")
    self:DailyNpcSafeHideSelf(npcs.Npc3163Data.alias, 1, true)
end

function Quest19146:OnSubFinish1914604(arg1)
    print("OnSubFinish1914604")
end

function Quest19146:OnSubStart1914605(arg1)
    print("OnSubStart1914605")
    self:DailyNpcSafeHideSelf(npcs.Npc3163Data.alias, 1, true)
    self:RemoveCoopInteractionDataFromSubStartPoint(106501, 1914606)
    self:RemoveCoopInteractionDataFromSubStartPoint(106501, 1914607)
    self:RequestCoopInteractionFromSubStartPoint(106501, 1914605)
    self:CreateQuestNpc(arg1, npcs.Npc12530Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc12530Data.alias):HideSelf()
    self:RequestInteraction(npcs.Npc12530Data.alias)
end

function Quest19146:OnSubFinish1914605(arg1)
    print("OnSubFinish1914605")
    self:SafeDestroyQuestNpc(npcs.Coop_ShinobuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12530Data.alias, 3)
end

function Quest19146:OnSubStart1914606(arg1)
    print("OnSubStart1914606")
    self:DailyNpcSafeHideSelf(npcs.Npc3163Data.alias, 1, true)
    self:RemoveCoopInteractionDataFromSubStartPoint(106501, 1914605)
    self:RemoveCoopInteractionDataFromSubStartPoint(106501, 1914607)
    self:RequestCoopInteractionFromSubStartPoint(106501, 1914606)
    self:CreateQuestNpc(arg1, npcs.Npc12530Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc12530Data.alias):HideSelf()
    self:RequestInteraction(npcs.Npc12530Data.alias)
end

function Quest19146:OnSubFinish1914606(arg1)
    print("OnSubFinish1914606")
    self:SafeDestroyQuestNpc(npcs.Coop_ShinobuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12530Data.alias, 3)
end

function Quest19146:OnSubStart1914607(arg1)
    print("OnSubStart1914607")
    self:DailyNpcSafeHideSelf(npcs.Npc3163Data.alias, 1, true)
    self:RemoveCoopInteractionDataFromSubStartPoint(106501, 1914605)
    self:RemoveCoopInteractionDataFromSubStartPoint(106501, 1914606)
    self:RequestCoopInteractionFromSubStartPoint(106501, 1914607)
    self:CreateQuestNpc(arg1, npcs.Npc12530Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc12530Data.alias):HideSelf()
    self:RequestInteraction(npcs.Npc12530Data.alias)
end

function Quest19146:OnSubFinish1914607(arg1)
    print("OnSubFinish1914607")
    self:SafeDestroyQuestNpc(npcs.Coop_ShinobuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12530Data.alias, 3)
end

function Quest19146:OnSubStart1914613(arg1)
    print("OnSubStart1914613")
end

function Quest19146:OnSubFinish1914613(arg1)
    print("OnSubFinish1914613")
end

function Quest19146:OnSubStart1914609(arg1)
    print("OnSubStart1914609")
    self:CreateQuestNpc(arg1, npcs.Npc12276Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc12276Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12277Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc12277Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12278Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc12278Data.alias):DoFreeStyle(4100, true, nil, true, true, false)
    self:DailyNpcSafeHideSelf(npcs.Npc3163Data.alias, 1, true)
    self:RequestCoopInteractionFromSubStartPoint(106501, 1914609)
    actorMgr:CreateActorWithPos("Q1914609Trigger", "Actor/Gadget/Q1914609Trigger", 70900002, 0, {x = -2464.197, y = 409.533, z = -4422.644}, {x = 0.0, y = 311.937, z = 0.0}, true, false, 3)
    actorMgr:CreateActorWithPos("Q1914609Triggerkaiche", "Actor/Gadget/Q1914609Triggerkaiche", 70900002, 0, sceneData:GetDummyPoint(3, "Q1914606_C1914606_N510").pos, sceneData:GetDummyPoint(3, "Q1914606_C1914606_N510").rot, true, false, 3)
end

function Quest19146:OnSubFinish1914609(arg1)
    print("OnSubFinish1914609")
    self:SafeDestroyQuestNpc(npcs.Coop_ShinobuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12276Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12277Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12278Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12530Data.alias, 3)
    self:LightNotifyTo(npcs.Npc3163Data.alias, 0, true)
end

return Quest19146

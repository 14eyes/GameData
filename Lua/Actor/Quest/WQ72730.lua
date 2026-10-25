require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72730 = class("Quest72730", QuestActorProxy)
Quest72730.defaultAlias = "Quest72730"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72730:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72730:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7273001"] = self.OnSubStart7273001,
        ["7273002"] = self.OnSubStart7273002,
        ["7273003"] = self.OnSubStart7273003,
        ["7273004"] = self.OnSubStart7273004,
        ["7273008"] = self.OnSubStart7273008,
        ["7273005"] = self.OnSubStart7273005,
        ["7273006"] = self.OnSubStart7273006,
        ["7273007"] = self.OnSubStart7273007
    }
end

function Quest72730:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7273001"] = self.OnSubFinish7273001,
        ["7273002"] = self.OnSubFinish7273002,
        ["7273003"] = self.OnSubFinish7273003,
        ["7273004"] = self.OnSubFinish7273004,
        ["7273008"] = self.OnSubFinish7273008,
        ["7273005"] = self.OnSubFinish7273005,
        ["7273006"] = self.OnSubFinish7273006,
        ["7273007"] = self.OnSubFinish7273007
    }
end

function Quest72730:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72730:Start()
    print("Start")
end

function Quest72730:OnDestroy()
    print("OnDestroy")
end

function Quest72730:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72730:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72730:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13019Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12278Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12276Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13069Data.alias, 3)
    actorMgr:DestroyEntityActor("Q72730Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q72730Trigger1", 3, false)
    this:ActorDestroy("Q72730Trigger2")
    this:LightNotifyTo(npcs.Npc20268Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc20269Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc20270Data.alias, 0, true)
    this:ActorDestroy("Q7273005Talk")
end

function Quest72730:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest72730:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7273008 then
        actorUtils.FinishQuestID(false, 7273008)
    end
end

function Quest72730:OnSubStart7273001(arg1)
    print("OnSubStart7273001")
    this:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 1)
    actorMgr:CreateActorWithPos("Q72730Trigger", "Actor/Gadget/Q72730Trigger", 70900002, 0, {x = -3077.058, y = 248.723, z = -4409.619}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
    this:CreateQuestNpc(arg1, npcs.Npc12278Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc12276Data.id, 0)
    if self:GetQuestVar(7273001, 1) == 0 then
        self:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 72730)
        self:SetQuestVarByMainId(1, 3)
    end

    this:NotifyTo(npcs.Npc20268Data.alias, 1, true)
    this:NotifyTo(npcs.Npc20269Data.alias, 1, true)
    this:NotifyTo(npcs.Npc20270Data.alias, 1, true)
end

function Quest72730:OnSubFinish7273001(arg1)
    print("OnSubFinish7273001")
    this:TryPauseCurOnlyNarrator()
    this:ClearNarratorTask()
end

function Quest72730:OnSubStart7273002(arg1)
    print("OnSubStart7273002")
    this:RequestInteraction(npcs.Npc1044Data.alias)
end

function Quest72730:OnSubFinish7273002(arg1)
    print("OnSubFinish7273002")
    self:TransmitPlayerWithTextByQuestId(7273002, 1, {"QUEST_Message_Q3007"}, 2.5)
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1044Data.alias, 3)
        this:LightNotifyTo(npcs.Npc20268Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc20269Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc20270Data.alias, 0, true)
        this:DestroyQuestNpcActor(npcs.Npc12278Data.alias, 3)
        this:DestroyQuestNpcActor(npcs.Npc12276Data.alias, 3)
    end)
end

function Quest72730:OnSubStart7273003(arg1)
    print("OnSubStart7273003")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 1)
        actorMgr:CreateActorWithPos("Q72730Trigger1", "Actor/Gadget/Q72730Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q7273003_Q7273004_Q7273101_Q7273102_N1044_guide").pos, sceneData:GetDummyPoint(3, "Q7273003_Q7273004_Q7273101_Q7273102_N1044_guide").rot, true, false, 3)
    end)
end

function Quest72730:OnSubFinish7273003(arg1)
    print("OnSubFinish7273003")
end

function Quest72730:OnSubStart7273004(arg1)
    print("OnSubStart7273004")
    this:RequestInteraction(npcs.Npc1044Data.alias)
end

function Quest72730:OnSubFinish7273004(arg1)
    print("OnSubFinish7273004")
    this:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:ShowTutorialDialog(937)
    end)
end

function Quest72730:OnSubStart7273008(arg1)
    print("OnSubStart7273008")
end

function Quest72730:OnSubFinish7273008(arg1)
    print("OnSubFinish7273008")
end

function Quest72730:OnSubStart7273005(arg1)
    print("OnSubStart7273005")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc13069Data.id, 1)
        actorMgr:CreateActorWithPos("Q7273005Talk", "Actor/Gadget/Q7273005Talk", 70900002, 0, sceneData:GetDummyPoint(3, "Q7273005_Q7273007_N13019").pos, sceneData:GetDummyPoint(3, "Q7273005_Q7273007_N13019").rot, true, false, 3)
    end)
end

function Quest72730:OnSubFinish7273005(arg1)
    print("OnSubFinish7273005")
    this:SafeDestroyQuestNpc(npcs.Npc13069Data.alias, 3)
    this:ActionSafeCall(function(arg1)
        actorUtils.StartHerculeBattleGuide()
    end)
end

function Quest72730:OnSubStart7273006(arg1)
    print("OnSubStart7273006")
end

function Quest72730:OnSubFinish7273006(arg1)
    print("OnSubFinish7273006")
end

function Quest72730:OnSubStart7273007(arg1)
    print("OnSubStart7273007")
    actorMgr:CreateActorWithPos("Q72730Trigger2", "Actor/Gadget/Q72730Trigger2", 70900002, 0, sceneData:GetDummyPoint(3, "Q7273005_Q7273007_N13019").pos, sceneData:GetDummyPoint(3, "Q7273005_Q7273007_N13019").rot, true, false, 3)
end

function Quest72730:OnSubFinish7273007(arg1)
    print("OnSubFinish7273007")
    this:SafeDestroyQuestNpc(npcs.Npc13019Data.alias, 3)
end

return Quest72730

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19040 = class("Quest19040", QuestActorProxy)
Quest19040.defaultAlias = "Quest19040"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest19040:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest19040:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1904001"] = self.OnSubStart1904001,
        ["1904002"] = self.OnSubStart1904002,
        ["1904003"] = self.OnSubStart1904003,
        ["1904009"] = self.OnSubStart1904009,
        ["1904012"] = self.OnSubStart1904012,
        ["1904011"] = self.OnSubStart1904011,
        ["1904010"] = self.OnSubStart1904010,
        ["1904004"] = self.OnSubStart1904004,
        ["1904008"] = self.OnSubStart1904008,
        ["1904005"] = self.OnSubStart1904005,
        ["1904006"] = self.OnSubStart1904006,
        ["1904007"] = self.OnSubStart1904007,
        ["1904007"] = self.OnSubStart1904013
    }
end

function Quest19040:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1904001"] = self.OnSubFinish1904001,
        ["1904002"] = self.OnSubFinish1904002,
        ["1904003"] = self.OnSubFinish1904003,
        ["1904009"] = self.OnSubFinish1904009,
        ["1904012"] = self.OnSubFinish1904012,
        ["1904011"] = self.OnSubFinish1904011,
        ["1904010"] = self.OnSubFinish1904010,
        ["1904004"] = self.OnSubFinish1904004,
        ["1904008"] = self.OnSubFinish1904008,
        ["1904005"] = self.OnSubFinish1904005,
        ["1904006"] = self.OnSubFinish1904006,
        ["1904007"] = self.OnSubFinish1904007,
        ["1904007"] = self.OnSubFinish1904013
    }
end

function Quest19040:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19040:Start()
    print("Start")
end

function Quest19040:OnDestroy()
    print("OnDestroy")
end

function Quest19040:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19040:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19040:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_YunjinData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2044Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12426Data.alias, 3)
    actorMgr:DestroyEntityActor("Q19040Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q19040Trigger1", 3, false)
    actorMgr:DestroyEntityActor("Q19040Trigger2", 3, false)
    self:ClearNarratorTask()
    self:StopNarrator()
    actorUtils.StopAllTask(TaskID.NARRATOR_TASK_ID, LuaTaskType.NORMAL)
    self:LightNotifyTo("Npc2047", 0, true)
end

function Quest19040:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        globalActor:ChangeDay24Time(21, true)
    end
end

function Quest19040:OnSubStart1904001(arg1)
    print("OnSubStart1904001")
    actorMgr:CreateActorWithPos("Q19040Trigger", "Actor/Gadget/Q19040Trigger", 70900002, 0, {x = -658.1832, y = 219.543, z = 257.1097}, {x = 0, y = 0, z = 0}, true, false, 3)
end

function Quest19040:OnSubFinish1904001(arg1)
    print("OnSubFinish1904001")
    self.ShowBlackScreen(self, 0.5, 1, 0.5, function()
        self:CreateQuestNpc(arg1, npcs.Coop_YunjinData.id, 1)
        self:RequestCoopInteractionFromSubStartPoint(106401, 1904001)
        self:RequestInteraction(npcs.Coop_YunjinData.alias)
    end)
end

function Quest19040:OnSubStart1904002(arg1)
    print("OnSubStart1904002")
end

function Quest19040:OnSubFinish1904002(arg1)
    print("OnSubFinish1904002")
    self:SafeDestroyQuestNpc(npcs.Coop_YunjinData.alias, 3)
end

function Quest19040:OnSubStart1904003(arg1)
    print("OnSubStart1904003")
    self:CreateQuestNpc(arg1, npcs.Npc2044Data.id)
    self:GetQuestNpcActor(npcs.Npc2044Data.alias):DoFreeStyle(4010, true, nil, true, true)
    self:RequestCoopInteractionFromSubStartPoint(106401, 1904002)
end

function Quest19040:OnSubFinish1904003(arg1)
    print("OnSubFinish1904003")
    self:SafeDestroyQuestNpc(npcs.Npc2044Data.alias, 3)
    local n = math.random(1, 3)
    print("\233\154\143\230\156\186\233\162\152\231\155\174\230\152\175" .. n)
    if n == 1 then
        self:SetQuestVar(1904003, 1, 1)
    elseif n == 2 then
        self:SetQuestVar(1904003, 1, 2)
    else
        self:SetQuestVar(1904003, 1, 3)
    end
end

function Quest19040:OnSubStart1904009(arg1)
    print("OnSubStart1904009")
    self:CreateQuestNpc(arg1, npcs.Coop_YunjinData.id, 1)
    self:RequestCoopInteractionFromSubStartPoint(106401, 1904003)
end

function Quest19040:OnSubFinish1904009(arg1)
    print("OnSubFinish1904009")
end

function Quest19040:OnSubStart1904012(arg1)
    print("OnSubStart1904012")
end

function Quest19040:OnSubFinish1904012(arg1)
    print("OnSubFinish1904012")
end

function Quest19040:OnSubStart1904011(arg1)
    print("OnSubStart1904011")
end

function Quest19040:OnSubFinish1904011(arg1)
    print("OnSubFinish1904011")
end

function Quest19040:OnSubStart1904010(arg1)
    print("OnSubStart1904010")
end

function Quest19040:OnSubFinish1904010(arg1)
    print("OnSubFinish1904010")
end

function Quest19040:OnSubFinish1904013(arg1)
    print("OnSubFinish1904013")
    self:SafeDestroyQuestNpc(npcs.Coop_YunjinData.alias, 3)
end

function Quest19040:OnSubStart1904004(arg1)
    print("OnSubStart1904004")
    actorMgr:CreateActorWithPos("Q19040Trigger2", "Actor/Gadget/Q19040Trigger2", 70900002, 0, {x = -680.874, y = 220.5825, z = 256.8343}, {x = 0, y = 0, z = 0}, true, false, 3)
    self:RequestCoopInteractionFromSubStartPoint(106401, 1904004)
end

function Quest19040:OnSubFinish1904004(arg1)
    print("OnSubFinish1904004")
end

function Quest19040:OnSubStart1904008(arg1)
    print("OnSubStart1904008")
    self.ActionSafeCall(self, function()
        self:CreateQuestNpc(arg1, npcs.Coop_YunjinData.id, 1)
        self:CreateQuestNpc(arg1, npcs.Npc12426Data.id, 2)
        self:GetQuestNpcActor(npcs.Coop_YunjinData.alias):DoFreeStyle(10100, true, nil, true, true)
    end)

    self.NotifyTo(self, "Npc2047", 1, true)
end

function Quest19040:OnSubFinish1904008(arg1)
    print("OnSubFinish1904008")
    self:SafeDestroyQuestNpc(npcs.Npc12426Data.alias, 3)
    self:CallDelay(2, function(arg1)
        arg1:RequestInteraction(npcs.Coop_YunjinData.alias)
    end)

    self:LightNotifyTo("Npc2047", 0, true)
end

function Quest19040:OnSubStart1904005(arg1)
    print("OnSubStart1904005")
    self:RequestCoopInteractionFromSubStartPoint(106401, 1904005)
end

function Quest19040:OnSubFinish1904005(arg1)
    print("OnSubFinish1904005")
    self:SafeDestroyQuestNpc(npcs.Coop_YunjinData.alias, 3)
end

function Quest19040:OnSubStart1904006(arg1)
    print("OnSubStart1904006")
    actorMgr:CreateActorWithPos("Q19040Trigger1", "Actor/Gadget/Q19040Trigger1", 70900002, 0, sceneData:GetDummyPoint(3, "Q1904007_C1904003_N509").pos, sceneData:GetDummyPoint(3, "Q1904007_C1904003_N509").rot, true, false, 3)
end

function Quest19040:OnSubFinish1904006(arg1)
    print("OnSubFinish1904006")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, npcs.Coop_YunjinData.id, 1)
        arg1_2:RequestCoopInteractionFromSubStartPoint(106401, 1904006)
        arg1_2:RequestInteraction(npcs.Coop_YunjinData.alias)
    end, nil, nil, "", false, true)
end

function Quest19040:OnSubStart1904007(arg1)
    print("OnSubStart1904007")
end

function Quest19040:OnSubFinish1904007(arg1)
    print("OnSubFinish1904007")
    self:SafeDestroyQuestNpc(npcs.Coop_YunjinData.alias, 3)
end

return Quest19040

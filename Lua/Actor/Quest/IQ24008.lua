require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest24008 = class("Quest24008", QuestActorProxy)
Quest24008.defaultAlias = "Quest24008"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest24008:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest24008:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2400801"] = self.OnSubStart2400801,
        ["2400802"] = self.OnSubStart2400802,
        ["2400803"] = self.OnSubStart2400803,
        ["2400804"] = self.OnSubStart2400804,
        ["2400805"] = self.OnSubStart2400805,
        ["2400806"] = self.OnSubStart2400806,
        ["2400807"] = self.OnSubStart2400807,
        ["2400808"] = self.OnSubStart2400808,
        ["2400809"] = self.OnSubStart2400809,
        ["2400810"] = self.OnSubStart2400810,
        ["2400811"] = self.OnSubStart2400811,
        ["2400812"] = self.OnSubStart2400812,
        ["2400813"] = self.OnSubStart2400813,
        ["2400814"] = self.OnSubStart2400814,
        ["2400815"] = self.OnSubStart2400815,
        ["2400816"] = self.OnSubStart2400816
    }
end

function Quest24008:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2400801"] = self.OnSubFinish2400801,
        ["2400802"] = self.OnSubFinish2400802,
        ["2400803"] = self.OnSubFinish2400803,
        ["2400804"] = self.OnSubFinish2400804,
        ["2400805"] = self.OnSubFinish2400805,
        ["2400806"] = self.OnSubFinish2400806,
        ["2400807"] = self.OnSubFinish2400807,
        ["2400808"] = self.OnSubFinish2400808,
        ["2400809"] = self.OnSubFinish2400809,
        ["2400810"] = self.OnSubFinish2400810,
        ["2400811"] = self.OnSubFinish2400811,
        ["2400812"] = self.OnSubFinish2400812,
        ["2400813"] = self.OnSubFinish2400813,
        ["2400814"] = self.OnSubFinish2400814,
        ["2400815"] = self.OnSubFinish2400815,
        ["2400816"] = self.OnSubFinish2400816
    }
end

function Quest24008:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest24008:Start()
    print("Start")
end

function Quest24008:OnDestroy()
    print("OnDestroy")
end

function Quest24008:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest24008:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest24008:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc5083Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5026Data.alias, 3)
    this:LightNotifyTo(npcs.Npc5144Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc5143Data.alias, 0, true)
end

function Quest24008:OnSubStart2400801(arg1)
    print("OnSubStart2400801")
    actorUtils.FinishQuestID(false, 2400801)
end

function Quest24008:OnSubFinish2400801(arg1)
    print("OnSubFinish2400801")
end

function Quest24008:OnSubStart2400802(arg1)
    print("OnSubStart2400802")
    this:CreateQuestNpc(arg1, npcs.Npc5083Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5083Data.alias):DoFreeStyle(4220, true, nil, true, true, false, false)
end

function Quest24008:OnSubFinish2400802(arg1)
    print("OnSubFinish2400802")
end

function Quest24008:OnSubStart2400803(arg1)
    print("OnSubStart2400803")
    local questGlobalVar = this:GetQuestGlobalVar(2400801)
    local questVar = this:GetQuestVar(2400803, 3)
    if questGlobalVar == 0 and questVar == 0 then
        this:NarratorOnlyTaskByData(datas.Narrator_2400801, function(arg1)
            local n = this:GetQuestVar(2400803, 3) + 1
            this:SetQuestVar(2400803, 3, n)
        end, 24008)
    end

    this:GetQuestNpcActor(npcs.Npc5083Data.alias):DoFreeStateTrigger()
end

function Quest24008:OnSubFinish2400803(arg1)
    print("OnSubFinish2400803")
    local questGlobalVar = this:GetQuestGlobalVar(2400801)
    if questGlobalVar == 0 then
        this:NarratorOnlyTaskByData(datas.Narrator_2400802, nil, 24008)
    elseif questGlobalVar == 1 then
        this:NarratorOnlyTaskByData(datas.Narrator_2400803, nil, 24008)
    end
end

function Quest24008:OnSubStart2400804(arg1)
    print("OnSubStart2400804")
    if this:GetQuestVar(2400804, 4) == 0 then
        this:NarratorOnlyTaskByData(datas.Narrator_2400804, function(arg1)
            local n = this:GetQuestVar(2400804, 4) + 1
            this:SetQuestVar(2400804, 4, n)
        end, 24008)
    end

    this:GetQuestNpcActor(npcs.Npc5083Data.alias):DoFreeStyle(4190, true, nil, true, true, false, true)
end

function Quest24008:OnSubFinish2400804(arg1)
    print("OnSubFinish2400804")
end

function Quest24008:OnSubStart2400805(arg1)
    print("OnSubStart2400805")
    this:CreateQuestNpc(arg1, npcs.Npc5026Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5083Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest24008:OnSubFinish2400805(arg1)
    print("OnSubFinish2400805")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc5026Data.alias, 3)
    end)
end

function Quest24008:OnSubStart2400806(arg1)
    print("OnSubStart2400806")
    this:GetQuestNpcActor(npcs.Npc5083Data.alias):DoFreeStateTrigger()
end

function Quest24008:OnSubFinish2400806(arg1)
    print("OnSubFinish2400806")
    this:DestroyQuestNpcActor(npcs.Npc5083Data.alias, 3)
end

function Quest24008:OnSubStart2400807(arg1)
    print("OnSubStart2400807")
    this:CreateQuestNpc(arg1, npcs.Npc5083Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5083Data.alias):DoFreeStyle(4220, true, nil, true, true, false, false)
    this:NotifyTo(npcs.Npc5144Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5143Data.alias, 1, true)
end

function Quest24008:OnSubFinish2400807(arg1)
    print("OnSubFinish2400807")
end

function Quest24008:OnSubStart2400808(arg1)
    print("OnSubStart2400808")
    local questGlobalVar = this:GetQuestGlobalVar(2400801)
    local questVar = this:GetQuestVar(2400808, 3)
    if questGlobalVar == 0 and questVar == 0 then
        this:NarratorOnlyTaskByData(datas.Narrator_2400801, function(arg1)
            local n = this:GetQuestVar(2400808, 3) + 1
            this:SetQuestVar(2400808, 3, n)
        end, 24008)
    end

    this:GetQuestNpcActor(npcs.Npc5083Data.alias):DoFreeStateTrigger()
    this:NotifyTo(npcs.Npc5144Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5143Data.alias, 1, true)
end

function Quest24008:OnSubFinish2400808(arg1)
    print("OnSubFinish2400808")
    local questGlobalVar = this:GetQuestGlobalVar(2400801)
    if questGlobalVar == 0 then
        this:NarratorOnlyTaskByData(datas.Narrator_2400802, nil, 24008)
    elseif questGlobalVar == 1 then
        this:NarratorOnlyTaskByData(datas.Narrator_2400803, nil, 24008)
    end
end

function Quest24008:OnSubStart2400809(arg1)
    print("OnSubStart2400809")
    if this:GetQuestVar(2400809, 4) == 0 then
        this:NarratorOnlyTaskByData(datas.Narrator_2400804, function(arg1)
            local n = this:GetQuestVar(2400809, 4) + 1
            this:SetQuestVar(2400809, 4, n)
        end, 24008)
    end

    this:GetQuestNpcActor(npcs.Npc5083Data.alias):DoFreeStyle(4190, true, nil, true, true, false, true)
    this:NotifyTo(npcs.Npc5144Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5143Data.alias, 1, true)
end

function Quest24008:OnSubFinish2400809(arg1)
    print("OnSubFinish2400809")
end

function Quest24008:OnSubStart2400810(arg1)
    print("OnSubStart2400810")
    this:CreateQuestNpc(arg1, npcs.Npc5026Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5083Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:NotifyTo(npcs.Npc5144Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5143Data.alias, 1, true)
end

function Quest24008:OnSubFinish2400810(arg1)
    print("OnSubFinish2400810")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc5026Data.alias, 3)
    end)
end

function Quest24008:OnSubStart2400811(arg1)
    print("OnSubStart2400811")
    this:GetQuestNpcActor(npcs.Npc5083Data.alias):DoFreeStateTrigger()
    this:NotifyTo(npcs.Npc5144Data.alias, 1, true)
    this:NotifyTo(npcs.Npc5143Data.alias, 1, true)
end

function Quest24008:OnSubFinish2400811(arg1)
    print("OnSubFinish2400811")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc5083Data.alias, 3)
        this:LightNotifyTo(npcs.Npc5144Data.alias, 0, true)
        this:LightNotifyTo(npcs.Npc5143Data.alias, 0, true)
    end)
end

function Quest24008:OnSubStart2400812(arg1)
    print("OnSubStart2400812")
    this:CreateQuestNpc(arg1, npcs.Npc5083Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5083Data.alias):DoFreeStyle(4220, true, nil, true, true, false, false)
end

function Quest24008:OnSubFinish2400812(arg1)
    print("OnSubFinish2400812")
end

function Quest24008:OnSubStart2400813(arg1)
    print("OnSubStart2400813")
    local questGlobalVar = this:GetQuestGlobalVar(2400801)
    local questVar = this:GetQuestVar(2400813, 3)
    if questGlobalVar == 0 and questVar == 0 then
        this:NarratorOnlyTaskByData(datas.Narrator_2400801, function(arg1)
            local n = this:GetQuestVar(2400813, 3) + 1
            this:SetQuestVar(2400813, 3, n)
        end, 24008)
    end

    this:GetQuestNpcActor(npcs.Npc5083Data.alias):DoFreeStateTrigger()
end

function Quest24008:OnSubFinish2400813(arg1)
    print("OnSubFinish2400813")
    local questGlobalVar = this:GetQuestGlobalVar(2400801)
    if questGlobalVar == 0 then
        this:NarratorOnlyTaskByData(datas.Narrator_2400802, nil, 24008)
    elseif questGlobalVar == 1 then
        this:NarratorOnlyTaskByData(datas.Narrator_2400803, nil, 24008)
    end
end

function Quest24008:OnSubStart2400814(arg1)
    print("OnSubStart2400814")
    if this:GetQuestVar(2400814, 4) == 0 then
        this:NarratorOnlyTaskByData(datas.Narrator_2400804, function(arg1)
            local n = this:GetQuestVar(2400814, 4) + 1
            this:SetQuestVar(2400814, 4, n)
        end, 24008)
    end

    this:GetQuestNpcActor(npcs.Npc5083Data.alias):DoFreeStyle(4190, true, nil, true, true, false, true)
end

function Quest24008:OnSubFinish2400814(arg1)
    print("OnSubFinish2400814")
end

function Quest24008:OnSubStart2400815(arg1)
    print("OnSubStart2400815")
    this:CreateQuestNpc(arg1, npcs.Npc5026Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5083Data.alias):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest24008:OnSubFinish2400815(arg1)
    print("OnSubFinish2400815")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc5026Data.alias, 3)
    end)
end

function Quest24008:OnSubStart2400816(arg1)
    print("OnSubStart2400816")
    this:GetQuestNpcActor(npcs.Npc5083Data.alias):DoFreeStateTrigger()
end

function Quest24008:OnSubFinish2400816(arg1)
    print("OnSubFinish2400816")
    this:DestroyQuestNpcActor(npcs.Npc5083Data.alias, 3)
end

return Quest24008

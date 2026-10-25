require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest2019 = class("Quest2019", QuestActorProxy)
Quest2019.defaultAlias = "Quest2019"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest2019:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest2019:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["201905"] = self.OnSubStart201905,
        ["201901"] = self.OnSubStart201901,
        ["201902"] = self.OnSubStart201902,
        ["201903"] = self.OnSubStart201903,
        ["201904"] = self.OnSubStart201904
    }
end

function Quest2019:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["201905"] = self.OnSubFinish201905,
        ["201901"] = self.OnSubFinish201901,
        ["201902"] = self.OnSubFinish201902,
        ["201903"] = self.OnSubFinish201903,
        ["201904"] = self.OnSubFinish201904
    }
end

function Quest2019:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["201905"] = self.OnSubFailed201905,
        ["201901"] = self.OnSubFailed201901,
        ["201902"] = self.OnSubFailed201902,
        ["201903"] = self.OnSubFailed201903,
        ["201904"] = self.OnSubFailed201904
    }
end

function Quest2019:Start()
    print("Start")
end

function Quest2019:OnDestroy()
    print("OnDestroy")
end

function Quest2019:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest2019:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest2019:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest2019:OnSubStart201905(arg1)
    print("OnSubStart201905")
    self:CreateQuestNpc(arg1, npcs.Npc3053Data.id)
    local actor = actorMgr:GetActor("2022")
    if actor ~= nil then
        actor:DestroyQuestNpcActor("Npc20460", 3)
        actor:DestroyQuestNpcActor("Npc20469", 3)
        actor:DestroyQuestNpcActor("Npc20471", 3)
    end

    self:NotifyTo(npcs.Npc3055Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc3058Data.id)
    self:CreateQuestNpc(arg1, npcs.Npc3056Data.id)
    self:CreateQuestNpc(arg1, npcs.Npc3059Data.id)
    self:CreateQuestNpc(arg1, npcs.Npc3025Data.id)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc3025Data.alias)
    local v = self:GetQuestNpcActor(npcs.Npc3056Data.alias)
    local questNpcActor2 = self:GetQuestNpcActor(npcs.Npc3058Data.alias)
    local questNpcActor3 = self:GetQuestNpcActor(npcs.Npc3059Data.alias)
    v:SteerToTask(M.Euler2DirXZ({y = 95.793}), 0.1, false, false)
    v:DoFreeStyle(1240)
    questNpcActor3:SteerToTask(M.Euler2DirXZ({y = 79.767}), 0.1, false, false)
    questNpcActor:SteerToTask(M.Euler2DirXZ({y = 139.97}), 0.1, false, false)
    self:CreateSpeechBubbleTask(npcs.Npc3058Data.id, 20189902, 3, true, 1, 2, true)
    self:NotifyTo(npcs.Npc3175Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3176Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3177Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3061Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3178Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3060Data.alias, 1, true)
    self:NotifyTo(npcs.Npc3064Data.alias, 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc12138Data.id)
    self:CreateQuestNpc(arg1, npcs.Npc12139Data.id)
    self:CreateQuestNpc(arg1, npcs.Npc12140Data.id)
    self:CreateQuestNpc(arg1, npcs.Npc12141Data.id)
    self:CreateQuestNpc(arg1, npcs.Npc12142Data.id)
    self:CreateQuestNpc(arg1, npcs.Npc12143Data.id)
    self:CreateQuestNpc(arg1, npcs.Npc12144Data.id)
    self:CreateQuestNpc(arg1, npcs.Npc12145Data.id)
    self:CreateSpeechBubbleTask(npcs.Npc12138Data.id, 20189906, 3, true, 5, 8, true)
    self:CreateSpeechBubbleTask(npcs.Npc12139Data.id, 20189907, 3, true, 6, 7, true)
    self:CreateSpeechBubbleTask(npcs.Npc12140Data.id, 20189908, 3, true, 1, 2)
    self:CreateSpeechBubbleTask(npcs.Npc12141Data.id, 20189909, 3, true, 4, 9, true)
    self:CreateSpeechBubbleTask(npcs.Npc12142Data.id, 20189910, 3, true, 3, 9, true)
    self:CreateSpeechBubbleTask(npcs.Npc12143Data.id, 20189911, 3, true, 3, 9, true)
    self:CreateSpeechBubbleTask(npcs.Npc12144Data.id, 20189913, 6, true, 3, 9)
    self:CreateSpeechBubbleTask(npcs.Npc12145Data.id, 20189914, 6, true, 3, 9, true)
    self:GetQuestNpcActor(npcs.Npc12145Data.alias):DoFreeStyle(4110)
end

function Quest2019:OnSubFinish201905(arg1)
    print("OnSubFinish201905")
    self:DestroyQuestNpcActor(npcs.Npc3053Data.alias, 1065)
    self:ClearSpeechBubbleTask()
    self:DestroyQuestNpcActor(npcs.Npc12138Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12139Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12140Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12141Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12142Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12143Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12144Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc12145Data.alias, 3)
end

function Quest2019:OnSubFailed201905(arg1)
    print("OnSubFailed201905")
end

function Quest2019:OnSubStart201901(arg1)
    print("OnSubStart201901")
    self:CreateQuestNpc(arg1, npcs.Npc1017Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1036Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc1038Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc1038Data.alias):DoFreeStyle(4121)
    actorMgr:CreateActorWithPos("Q2019Trigger", "Actor/Gadget/Q2019Trigger", 70900002, 0, {x = 0, y = 1.499086, z = 29.04923}, {x = 0, y = 0, z = 0}, true, false, 20114)
    self:DestroyQuestNpcActor("Paimon", 20114)
    self:GetQuestNpcActor(npcs.Npc1036Data.alias):DoFreeStyle(1120)
end

function Quest2019:OnSubFinish201901(arg1)
    print("OnSubFinish201901")
end

function Quest2019:OnSubFailed201901(arg1)
    print("OnSubFailed201901")
end

function Quest2019:OnSubStart201902(arg1)
    print("OnSubStart201902")
    self.ActionSafeCall(self, function()
        self:GetQuestNpcActor(npcs.Npc1036Data.alias):DoFreeStyle(1120)
    end)
end

function Quest2019:OnSubFinish201902(arg1)
    print("OnSubFinish201902")
end

function Quest2019:OnSubFailed201902(arg1)
    print("OnSubFailed201902")
end

function Quest2019:OnSubStart201903(arg1)
    print("OnSubStart201903")
    self.CallDelay(self, 1.5, function()
        self:PlayCutsceneIndex("201903", function(arg1)
            arg1:FinishQuestID(false, 201903)
        end, nil, nil, false)
    end)
end

function Quest2019:OnSubFinish201903(arg1)
    print("OnSubFinish201903")
end

function Quest2019:OnSubFailed201903(arg1)
    print("OnSubFailed201903")
end

function Quest2019:OnSubStart201904(arg1)
    print("OnSubStart201904")
    self:TransmitPlayerById(arg1, 1)
end

function Quest2019:OnSubFinish201904(arg1)
    print("OnSubFinish201904")
    self:LightNotifyTo(npcs.Npc3055Data.alias, 0, true)
    self:DestroyQuestNpcActor(npcs.Npc3058Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc3056Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc3059Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc3025Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc1036Data.alias, 20114)
end

function Quest2019:OnSubFailed201904(arg1)
    print("OnSubFailed201904")
end

return Quest2019

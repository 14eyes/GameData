require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76190 = class("Quest76190", QuestActorProxy)
Quest76190.defaultAlias = "Quest76190"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest76190:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest76190:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7619001"] = self.OnSubStart7619001,
        ["7619002"] = self.OnSubStart7619002,
        ["7619003"] = self.OnSubStart7619003,
        ["7619004"] = self.OnSubStart7619004,
        ["7619005"] = self.OnSubStart7619005
    }
end

function Quest76190:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7619001"] = self.OnSubFinish7619001,
        ["7619002"] = self.OnSubFinish7619002,
        ["7619003"] = self.OnSubFinish7619003,
        ["7619004"] = self.OnSubFinish7619004,
        ["7619005"] = self.OnSubFinish7619005
    }
end

function Quest76190:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7619003"] = self.OnSubFailed7619003}
end

function Quest76190:Start()
    print("Start")
end

function Quest76190:OnDestroy()
    print("OnDestroy")
end

function Quest76190:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76190:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76190:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76190:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest76190:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76190:OnSubStart7619001(arg1)
    print("OnSubStart7619001")
end

function Quest76190:OnSubFinish7619001(arg1)
    print("OnSubFinish7619001")
end

function Quest76190:OnSubStart7619002(arg1)
    print("OnSubStart7619002")
    this:CreateQuestNpc(arg1, npcs.Npc16562.id, 0, false, 0)
end

function Quest76190:OnSubFinish7619002(arg1)
    print("OnSubFinish7619002")
    this:NpcDestroyImmediately(3, npcs.Npc16562.alias)
end

function Quest76190:OnSubStart7619003(arg1)
    print("OnSubStart7619003")
    this:DisableMainPageByQuest(true, "DisableLNYHumanisticQuest")
    this:CallDelayByQuest("7609003Delay", 1, function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_7619001, nil)
        this:EnterSceneLookCamera({x = 5728.105, y = 262.331, z = 9654.688}, 0, 3, false, false)
        local questGlobalVar = this:GetQuestGlobalVar(7618901)
        if this:GetQuestGlobalVar(7618901) == 0 then
            this:CallDelayByQuest("7619003Delay", 4, function(arg1)
                this:ShowTutorialDialog(2654, nil)
            end)
        end
    end)
end

function Quest76190:OnSubFinish7619003(arg1)
    print("OnSubFinish7619003")
    actorUtils.SimpleUIShowForLua(false, "NaturalistCaptureItemAddedSpecial", "369229", nil)
    this:QuestNarratorTask(datas.NarratorWithId_7619002, nil)
end

function Quest76190:OnSubFailed7619003(arg1)
    print("OnSubFailed7619003")
    this:RecycleAllRes()
end

function Quest76190:OnSubStart7619004(arg1)
    print("OnSubStart7619004")
    this:DisableMainPageByQuest(true, "DisableLNYHumanisticQuest")
    this:CallDelayByQuest("Q7619004_Delay", 5, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7619004})
    end)
end

function Quest76190:OnSubFinish7619004(arg1)
    print("OnSubFinish7619004")
    this:DisableMainPageByQuest(false, "DisableLNYHumanisticQuest")
    this:CallDelayByQuest("Q7619004_Delay2", 2, function(arg1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            actorUtils.SimpleUIShowForLua(false, "NaturalistHandbook", "", nil)
        end)
    end)
end

function Quest76190:OnSubStart7619005(arg1)
    print("OnSubStart7619005")
    this:CallDelayByQuest("7619005Delay", 4, function(arg1)
        this:ShowTutorialDialog(2654, nil)
    end)
end

function Quest76190:OnSubFinish7619005(arg1)
    print("OnSubFinish7619005")
end

return Quest76190

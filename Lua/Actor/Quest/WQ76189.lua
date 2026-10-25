require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76189 = class("Quest76189", QuestActorProxy)
Quest76189.defaultAlias = "Quest76189"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest76189:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest76189:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7618901"] = self.OnSubStart7618901,
        ["7618902"] = self.OnSubStart7618902,
        ["7618903"] = self.OnSubStart7618903,
        ["7618904"] = self.OnSubStart7618904,
        ["7618905"] = self.OnSubStart7618905
    }
end

function Quest76189:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7618901"] = self.OnSubFinish7618901,
        ["7618902"] = self.OnSubFinish7618902,
        ["7618903"] = self.OnSubFinish7618903,
        ["7618904"] = self.OnSubFinish7618904,
        ["7618905"] = self.OnSubFinish7618905
    }
end

function Quest76189:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7618903"] = self.OnSubFailed7618903}
end

function Quest76189:Start()
    print("Start")
end

function Quest76189:OnDestroy()
    print("OnDestroy")
end

function Quest76189:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76189:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76189:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76189:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
end

function Quest76189:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76189:OnSubStart7618901(arg1)
    print("OnSubStart7618901")
end

function Quest76189:OnSubFinish7618901(arg1)
    print("OnSubFinish7618901")
end

function Quest76189:OnSubStart7618902(arg1)
    print("OnSubStart7618902")
    this:CreateQuestNpc(arg1, npcs.Npc16562.id, 0, false, 0)
end

function Quest76189:OnSubFinish7618902(arg1)
    print("OnSubFinish7618902")
    this:NpcDestroyImmediately(3, npcs.Npc16562.alias)
end

function Quest76189:OnSubStart7618903(arg1)
    print("OnSubStart7618903")
    this:DisableMainPageByQuest(true, "DisableLNYHumanisticQuest")
    this:CallDelayByQuest("7608903Delay", 1, function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_7618901, nil)
        this:EnterSceneLookCamera({x = 1694.169, y = 201.073, z = 10949.9}, 0, 3, false, false)
        local questGlobalVar = this:GetQuestGlobalVar(7618901)
        if this:GetQuestGlobalVar(7618901) == 0 then
            this:CallDelayByQuest("7618905Delay", 4, function(arg1)
                this:ShowTutorialDialog(2654, nil)
            end)
        end
    end)
end

function Quest76189:OnSubFinish7618903(arg1)
    print("OnSubFinish7618903")
    actorUtils.SimpleUIShowForLua(false, "NaturalistCaptureItemAddedSpecial", "369227", nil)
    this:QuestNarratorTask(datas.NarratorWithId_7618902, nil)
end

function Quest76189:OnSubFailed7618903(arg1)
    print("OnSubFailed7618903")
    this:RecycleAllRes()
end

function Quest76189:OnSubStart7618904(arg1)
    print("OnSubStart7618904")
    this:DisableMainPageByQuest(true, "DisableLNYHumanisticQuest")
    this:CallDelayByQuest("Q7618904_Delay", 5, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7618904})
    end)
end

function Quest76189:OnSubFinish7618904(arg1)
    print("OnSubFinish7618904")
    this:DisableMainPageByQuest(false, "DisableLNYHumanisticQuest")
    this:CallDelayByQuest("Q7618904_Delay2", 2, function(arg1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            actorUtils.SimpleUIShowForLua(false, "NaturalistHandbook", "", nil)
        end)
    end)
end

function Quest76189:OnSubStart7618905(arg1)
    print("OnSubStart7618905")
    this:CallDelayByQuest("7618905Delay", 4, function(arg1)
        this:ShowTutorialDialog(2654, nil)
    end)
end

function Quest76189:OnSubFinish7618905(arg1)
    print("OnSubFinish7618905")
end

return Quest76189

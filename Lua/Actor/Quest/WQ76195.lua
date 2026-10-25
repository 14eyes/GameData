require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76195 = class("Quest76195", QuestActorProxy)
Quest76195.defaultAlias = "Quest76195"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76195:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76195:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7619501"] = self.OnSubStart7619501,
        ["7619502"] = self.OnSubStart7619502,
        ["7619503"] = self.OnSubStart7619503,
        ["7619504"] = self.OnSubStart7619504,
        ["7619506"] = self.OnSubStart7619506,
        ["7619505"] = self.OnSubStart7619505
    }
end

function Quest76195:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7619501"] = self.OnSubFinish7619501,
        ["7619502"] = self.OnSubFinish7619502,
        ["7619503"] = self.OnSubFinish7619503,
        ["7619504"] = self.OnSubFinish7619504,
        ["7619506"] = self.OnSubFinish7619506,
        ["7619505"] = self.OnSubFinish7619505
    }
end

function Quest76195:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7619503"] = self.OnSubFailed7619503,
        ["7619504"] = self.OnSubFailed7619504,
        ["7619505"] = self.OnSubFailed7619505
    }
end

function Quest76195:Start()
    print("Start")
end

function Quest76195:OnDestroy()
    print("OnDestroy")
end

function Quest76195:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76195:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76195:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76195:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7619503Trigger", 76195)
    this:ActorDestroy("Q7619506_TutorialTrigger", 76195)
end

function Quest76195:ActorDestroy(arg1, arg2)
    if arg2 == nil or arg2 == 0 then
        local actor = actorMgr:GetActor(arg1)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    else
        local str = arg1 .. tostring(arg2)
        local actor = actorMgr:GetActor(str)
        if actor ~= nil then
            actor:DestroySelf()
            return
        end
    end
end

function Quest76195:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76195:OnSubStart7619501(arg1)
    print("OnSubStart7619501")
end

function Quest76195:OnSubFinish7619501(arg1)
    print("OnSubFinish7619501")
end

function Quest76195:OnSubStart7619502(arg1)
    print("OnSubStart7619502")
    this:CreateQuestNpc(arg1, npcs.Npc16562.id, 0, false, 0)
end

function Quest76195:OnSubFinish7619502(arg1)
    print("OnSubFinish7619502")
    this:NpcDestroyImmediately(3, npcs.Npc16562.alias)
end

function Quest76195:OnSubStart7619503(arg1)
    print("OnSubStart7619503")
    actorMgr:CreateActorWithPos("Q7619503Trigger", "Actor/Gadget/Q7619503Trigger", 70900002, 0, points._Q7619503TriggerPoint_.pos, points._Q7619503TriggerPoint_.rot, true, false, 3, nil, 0, 76195)
    this:DisableMainPageByQuest(true, "DisableLNYHumanisticQuest")
end

function Quest76195:OnSubFinish7619503(arg1)
    print("OnSubFinish7619503")
end

function Quest76195:OnSubFailed7619503(arg1)
    print("OnSubFailed7619503")
    this:RecycleAllRes()
end

function Quest76195:OnSubStart7619504(arg1)
    print("OnSubStart7619504")
    this:QuestNarratorTask(datas.NarratorWithId_7619501, nil)
    this:DisableMainPageByQuest(true, "DisableLNYHumanisticQuest")
    if this:GetQuestGlobalVar(7619401) == 0 then
        this:CallDelayByQuest("7619504Delay", 3, function(arg1)
            this:ShowTutorialDialog(2655, nil)
        end)
    end
end

function Quest76195:OnSubFinish7619504(arg1)
    print("OnSubFinish7619504")
end

function Quest76195:OnSubFailed7619504(arg1)
    print("OnSubFailed7619504")
    this:RecycleAllRes()
end

function Quest76195:OnSubStart7619506(arg1)
    print("OnSubStart7619506")
    actorMgr:CreateActorWithPos("Q7619506_TutorialTrigger", "Actor/Gadget/Q7619506_TutorialTrigger", 70900002, 0, points._Q7619506_TutorialTriggerPoint_.pos, points._Q7619506_TutorialTriggerPoint_.rot, true, false, 3, nil, 0, 76195)
end

function Quest76195:OnSubFinish7619506(arg1)
    print("OnSubFinish7619506")
    this:ActorDestroy("Q7619506_TutorialTrigger", 76195)
end

function Quest76195:OnSubStart7619505(arg1)
    print("OnSubStart7619505")
    this:DisableMainPageByQuest(true, "DisableLNYHumanisticQuest")
end

function Quest76195:OnSubFinish7619505(arg1)
    print("OnSubFinish7619505")
    this:DisableMainPageByQuest(false, "DisableLNYHumanisticQuest")
    this:CallDelayByQuest("7619505Delay", 2, function(arg1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            actorUtils.SimpleUIShowForLua(false, "NaturalistHandbook", "", nil)
        end)
    end)
end

function Quest76195:OnSubFailed7619505(arg1)
    print("OnSubFailed7619505")
    this:RecycleAllRes()
end

return Quest76195

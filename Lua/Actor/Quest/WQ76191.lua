require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76191 = class("Quest76191", QuestActorProxy)
Quest76191.defaultAlias = "Quest76191"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76191:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76191:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7619101"] = self.OnSubStart7619101,
        ["7619102"] = self.OnSubStart7619102,
        ["7619103"] = self.OnSubStart7619103,
        ["7619104"] = self.OnSubStart7619104,
        ["7619105"] = self.OnSubStart7619105,
        ["7619106"] = self.OnSubStart7619106,
        ["7619107"] = self.OnSubStart7619107,
        ["7619108"] = self.OnSubStart7619108,
        ["7619109"] = self.OnSubStart7619109,
        ["7619110"] = self.OnSubStart7619110,
        ["7619111"] = self.OnSubStart7619111
    }
end

function Quest76191:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7619101"] = self.OnSubFinish7619101,
        ["7619102"] = self.OnSubFinish7619102,
        ["7619103"] = self.OnSubFinish7619103,
        ["7619104"] = self.OnSubFinish7619104,
        ["7619105"] = self.OnSubFinish7619105,
        ["7619106"] = self.OnSubFinish7619106,
        ["7619107"] = self.OnSubFinish7619107,
        ["7619108"] = self.OnSubFinish7619108,
        ["7619109"] = self.OnSubFinish7619109,
        ["7619110"] = self.OnSubFinish7619110,
        ["7619111"] = self.OnSubFinish7619111
    }
end

function Quest76191:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7619104"] = self.OnSubFailed7619104,
        ["7619107"] = self.OnSubFailed7619107,
        ["7619109"] = self.OnSubFailed7619109
    }
end

function Quest76191:Start()
    print("Start")
end

function Quest76191:OnDestroy()
    print("OnDestroy")
end

function Quest76191:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76191:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76191:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76191:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7619103_TalkTrigger", 76191)
    this:ActorDestroy("Q7619105_TalkTrigger", 76191)
    this:ActorDestroy("Q7619106_KaiCheTrigger", 76191)
end

function Quest76191:ActorDestroy(arg1, arg2)
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

function Quest76191:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76191:OnSubStart7619101(arg1)
    print("OnSubStart7619101")
end

function Quest76191:OnSubFinish7619101(arg1)
    print("OnSubFinish7619101")
end

function Quest76191:OnSubStart7619102(arg1)
    print("OnSubStart7619102")
    this:CreateQuestNpc(arg1, npcs.Npc16562.id, 0, false, 0)
end

function Quest76191:OnSubFinish7619102(arg1)
    print("OnSubFinish7619102")
    this:NpcDestroyImmediately(3, npcs.Npc16562.alias)
end

function Quest76191:OnSubStart7619103(arg1)
    print("OnSubStart7619103")
    this:CreateQuestNpc(arg1, npcs.Npc16570.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16571.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7619103_TalkTrigger", "Actor/Gadget/Q7619103_TalkTrigger", 70900002, 0, points._Q7619103_TalkTriggerPoint_.pos, points._Q7619103_TalkTriggerPoint_.rot, true, false, 3, nil, 0, 76191)
end

function Quest76191:OnSubFinish7619103(arg1)
    print("OnSubFinish7619103")
    this:NpcDestroyImmediately(3, npcs.Npc16570.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16571.alias)
end

function Quest76191:OnSubStart7619104(arg1)
    print("OnSubStart7619104")
    this:QuestNarratorTask(datas.NarratorWithId_7619101, nil)
end

function Quest76191:OnSubFinish7619104(arg1)
    print("OnSubFinish7619104")
end

function Quest76191:OnSubFailed7619104(arg1)
    print("OnSubFailed7619104")
    this:RecycleAllRes()
end

function Quest76191:OnSubStart7619105(arg1)
    print("OnSubStart7619105")
    this:CreateQuestNpc(arg1, npcs.Npc16691.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7619105_TalkTrigger", "Actor/Gadget/Q7619105_TalkTrigger", 70900002, 0, points._Q7619105_TalkTriggerPoint_.pos, points._Q7619105_TalkTriggerPoint_.rot, true, false, 3, nil, 0, 76191)
end

function Quest76191:OnSubFinish7619105(arg1)
    print("OnSubFinish7619105")
    this:NpcDestroyImmediately(3, npcs.Npc16691.alias)
end

function Quest76191:OnSubStart7619106(arg1)
    print("OnSubStart7619106")
    this:CreateQuestNpc(arg1, npcs.Npc16572.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7619106_KaiCheTrigger", "Actor/Gadget/Q7619106_KaiCheTrigger", 70900002, 0, points._Q7619106_KaiCheTriggerPoint_.pos, points._Q7619106_KaiCheTriggerPoint_.rot, true, false, 3, nil, 0, 76191)
end

function Quest76191:OnSubFinish7619106(arg1)
    print("OnSubFinish7619106")
end

function Quest76191:OnSubStart7619107(arg1)
    print("OnSubStart7619107")
    this:CreateQuestNpc(arg1, npcs.Npc16572.id, 0, false, 0)
end

function Quest76191:OnSubFinish7619107(arg1)
    print("OnSubFinish7619107")
end

function Quest76191:OnSubFailed7619107(arg1)
    print("OnSubFailed7619107")
    this:RecycleAllRes()
end

function Quest76191:OnSubStart7619108(arg1)
    print("OnSubStart7619108")
    this:CreateQuestNpc(arg1, npcs.Npc16572.id, 0, false, 0)
end

function Quest76191:OnSubFinish7619108(arg1)
    print("OnSubFinish7619108")
    this:NpcDestroyImmediately(3, npcs.Npc16572.alias)
end

function Quest76191:OnSubStart7619109(arg1)
    print("OnSubStart7619109")
    this:DisableMainPageByQuest(true, "DisableLNYHumanisticQuest")
    if this:GetQuestGlobalVar(7618901) == 0 then
        this:CallDelayByQuest("7619109Delay", 1.5, function(arg1)
            this:ShowTutorialDialog(2654, nil)
        end)
    end
end

function Quest76191:OnSubFinish7619109(arg1)
    print("OnSubFinish7619109")
    this:QuestNarratorTask(datas.NarratorWithId_7619103, nil)
    actorUtils.SimpleUIShowForLua(false, "NaturalistCaptureItemAddedSpecial", "369228", nil)
end

function Quest76191:OnSubFailed7619109(arg1)
    print("OnSubFailed7619109")
    this:RecycleAllRes()
end

function Quest76191:OnSubStart7619110(arg1)
    print("OnSubStart7619110")
    this:DisableMainPageByQuest(true, "DisableLNYHumanisticQuest")
    this:CallDelayByQuest("Q7619110_Delay", 5, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7619110})
    end)
end

function Quest76191:OnSubFinish7619110(arg1)
    print("OnSubFinish7619110")
    this:DisableMainPageByQuest(false, "DisableLNYHumanisticQuest")
    this:CallDelayByQuest("Q7619110_Delay2", 2, function(arg1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            actorUtils.SimpleUIShowForLua(false, "NaturalistHandbook", "", nil)
        end)
    end)
end

function Quest76191:OnSubStart7619111(arg1)
    print("OnSubStart7619111")
    this:ShowTutorialDialog(2654, nil)
end

function Quest76191:OnSubFinish7619111(arg1)
    print("OnSubFinish7619111")
end

return Quest76191

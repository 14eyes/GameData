require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76194 = class("Quest76194", QuestActorProxy)
Quest76194.defaultAlias = "Quest76194"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76194:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76194:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7619401"] = self.OnSubStart7619401,
        ["7619402"] = self.OnSubStart7619402,
        ["7619403"] = self.OnSubStart7619403,
        ["7619404"] = self.OnSubStart7619404
    }
end

function Quest76194:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7619401"] = self.OnSubFinish7619401,
        ["7619402"] = self.OnSubFinish7619402,
        ["7619403"] = self.OnSubFinish7619403,
        ["7619404"] = self.OnSubFinish7619404
    }
end

function Quest76194:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7619403"] = self.OnSubFailed7619403}
end

function Quest76194:Start()
    print("Start")
end

function Quest76194:OnDestroy()
    print("OnDestroy")
end

function Quest76194:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76194:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76194:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76194:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7619403_KaiCheTrigger", 76194)
    this:ActorDestroy("Q7619404_TutorialTrigger", 76194)
end

function Quest76194:ActorDestroy(arg1, arg2)
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

function Quest76194:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest76194:OnSubStart7619401(arg1)
    print("OnSubStart7619401")
end

function Quest76194:OnSubFinish7619401(arg1)
    print("OnSubFinish7619401")
end

function Quest76194:OnSubStart7619402(arg1)
    print("OnSubStart7619402")
    this:CreateQuestNpc(arg1, npcs.Npc16562.id, 0, false, 0)
end

function Quest76194:OnSubFinish7619402(arg1)
    print("OnSubFinish7619402")
    this:NpcDestroyImmediately(3, npcs.Npc16562.alias)
end

function Quest76194:OnSubStart7619403(arg1)
    print("OnSubStart7619403")
    actorMgr:CreateActorWithPos("Q7619403_KaiCheTrigger", "Actor/Gadget/Q7619403_KaiCheTrigger", 70900002, 0, points._Q7619403_KaiCheTriggerPoint_.pos, points._Q7619403_KaiCheTriggerPoint_.rot, true, false, 3, nil, 0, 76194)
    this:DisableMainPageByQuest(true, "DisableLNYHumanisticQuest")
end

function Quest76194:OnSubFinish7619403(arg1)
    print("OnSubFinish7619403")
    this:ActorDestroy("Q7619403_KaiCheTrigger", 76194)
    this:DisableMainPageByQuest(false, "DisableLNYHumanisticQuest")
    this:CallDelayByQuest("7619403Delay", 2, function(arg1)
        this:AfterMainPageActiveSafeCall(function(arg1)
            actorUtils.SimpleUIShowForLua(false, "NaturalistHandbook", "", nil)
        end)
    end)
end

function Quest76194:OnSubFailed7619403(arg1)
    print("OnSubFailed7619403")
    this:RecycleAllRes()
end

function Quest76194:OnSubStart7619404(arg1)
    print("OnSubStart7619404")
    actorMgr:CreateActorWithPos("Q7619404_TutorialTrigger", "Actor/Gadget/Q7619404_TutorialTrigger", 70900002, 0, points._Q7619404_TutorialTriggerPoint_.pos, points._Q7619404_TutorialTriggerPoint_.rot, true, false, 3, nil, 0, 76194)
end

function Quest76194:OnSubFinish7619404(arg1)
    print("OnSubFinish7619404")
end

return Quest76194

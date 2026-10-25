require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75137 = class("Quest75137", QuestActorProxy)
Quest75137.defaultAlias = "Quest75137"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest75137:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75137:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7513708"] = self.OnSubStart7513708,
        ["7513701"] = self.OnSubStart7513701,
        ["7513702"] = self.OnSubStart7513702,
        ["7513703"] = self.OnSubStart7513703,
        ["7513704"] = self.OnSubStart7513704,
        ["7513705"] = self.OnSubStart7513705,
        ["7513711"] = self.OnSubStart7513711,
        ["7513709"] = self.OnSubStart7513709,
        ["7513706"] = self.OnSubStart7513706,
        ["7513707"] = self.OnSubStart7513707,
        ["7513710"] = self.OnSubStart7513710,
        ["7513712"] = self.OnSubStart7513712
    }
end

function Quest75137:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7513708"] = self.OnSubFinish7513708,
        ["7513701"] = self.OnSubFinish7513701,
        ["7513702"] = self.OnSubFinish7513702,
        ["7513703"] = self.OnSubFinish7513703,
        ["7513704"] = self.OnSubFinish7513704,
        ["7513705"] = self.OnSubFinish7513705,
        ["7513711"] = self.OnSubFinish7513711,
        ["7513709"] = self.OnSubFinish7513709,
        ["7513706"] = self.OnSubFinish7513706,
        ["7513707"] = self.OnSubFinish7513707,
        ["7513710"] = self.OnSubFinish7513710,
        ["7513712"] = self.OnSubFinish7513712
    }
end

function Quest75137:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75137:Start()
    print("Start")
end

function Quest75137:OnDestroy()
    print("OnDestroy")
end

function Quest75137:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75137:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75137:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75137:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        actorUtils.FinishQuestID(false, 7513712)
        actorUtils.SetQuestPostEffect("PostEffect_Scene_MemoryEffect04", false, 3, false)
    end
end

function Quest75137:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75137:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
    local n = 0.5
    if not arg6 then
        if not needLightUp then
            goto lbl_8
        end
    end

    n = 0
    ::lbl_8::
    this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg4 .. "N" .. arg2 .. "Trigger", arg4, arg2, arg3, arg5, n, arg1, 0.5, 2)
end

function Quest75137:OnSubStart7513708(arg1)
    print("OnSubStart7513708")
    actorMgr:CreateActorWithPos("Q7513708_Trigger", "Actor/Gadget/Q7513708_Trigger", 70900002, 0, points._Q7513708_TriggerPoint_.pos, points._Q7513708_TriggerPoint_.rot, true, false, nil)
end

function Quest75137:OnSubFinish7513708(arg1)
    print("OnSubFinish7513708")
end

function Quest75137:OnSubStart7513701(arg1)
    print("OnSubStart7513701")
    actorMgr:CreateActorWithPos("Q7513701_Trigger", "Actor/Gadget/Q7513701_Trigger", 70900002, 0, {x = 621.457, y = -602.187, z = 10732.37}, {x = 0, y = 315.069, z = 0}, true, false, 3)
end

function Quest75137:OnSubFinish7513701(arg1)
    print("OnSubFinish7513701")
end

function Quest75137:OnSubStart7513702(arg1)
    print("OnSubStart7513702")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc21604Data.id, 0, 7513702, 35)
end

function Quest75137:OnSubFinish7513702(arg1)
    print("OnSubFinish7513702")
    this:SafeDestroyQuestNpc(npcs.Npc21604Data.alias, 3)
end

function Quest75137:OnSubStart7513703(arg1)
    print("OnSubStart7513703")
    this:PlayCutsceneIndex(7504837, function(arg1)
        actorUtils.FinishQuestID(false, 7513703)
    end, nil, nil, false)
end

function Quest75137:OnSubFinish7513703(arg1)
    print("OnSubFinish7513703")
end

function Quest75137:OnSubStart7513704(arg1)
    print("OnSubStart7513704")
end

function Quest75137:OnSubFinish7513704(arg1)
    print("OnSubFinish7513704")
end

function Quest75137:OnSubStart7513705(arg1)
    print("OnSubStart7513705")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc21603Data.id, 0, 7513705, 30)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc21604Data.id, 0, 7513705, 35)
    this:DisableMainPageWithConfigByQuest(false, "DisableTestSumeruMainQuest")
    actorUtils.SetQuestPostEffect("PostEffect_Scene_MemoryEffect04", false, 3, false)
end

function Quest75137:OnSubFinish7513705(arg1)
    print("OnSubFinish7513705")
    this:SafeDestroyQuestNpc(npcs.Npc21603Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21604Data.alias, 3)
end

function Quest75137:OnSubStart7513711(arg1)
    print("OnSubStart7513711")
    this:TransmitPlayerUseCustomizedTplById(arg1, 7513609, 50)
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorUtils.FinishQuestID(false, 7513711)
        actorUtils.SetQuestPostEffect("PostEffect_Scene_MemoryEffect04", true, 3, true)
    end)

    this:DisableMainPageWithConfigByQuest(true, "DisableTestSumeruMainQuest")
end

function Quest75137:OnSubFinish7513711(arg1)
    print("OnSubFinish7513711")
end

function Quest75137:OnSubStart7513709(arg1)
    print("OnSubStart7513709")
    actorMgr:CreateActorWithPos("Q7513709Trigger", "Actor/Gadget/Q7513709Trigger", 70900002, 0, points._Q7513709TriggerPoint_.pos, points._Q7513709TriggerPoint_.rot, true, false, nil)
end

function Quest75137:OnSubFinish7513709(arg1)
    print("OnSubFinish7513709")
end

function Quest75137:OnSubStart7513706(arg1)
    print("OnSubStart7513706")
    this:CreateQuestNpc(arg1, npcs.Npc21604Data.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7513706_Trigger", "Actor/Gadget/Q7513706_Trigger", 70900002, 0, points._Q7513706_TriggerPoint_.pos, points._Q7513706_TriggerPoint_.rot, true, false, nil)
end

function Quest75137:OnSubFinish7513706(arg1)
    print("OnSubFinish7513706")
    this:SafeDestroyQuestNpc(npcs.Npc21604Data.alias, 3)
    this:ActorDestroy("Q7513706_Trigger")
    actorUtils.SetQuestPostEffect("PostEffect_Scene_MemoryEffect04", false, 3, false)
    this:DisableMainPageWithConfigByQuest(false, "DisableTestSumeruMainQuest")
    this:TransmitPlayerById(arg1, 7504841, nil, nil, nil)
end

function Quest75137:OnSubStart7513707(arg1)
    print("OnSubStart7513707")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0.5, npcs.Npc21604Data.id, 0, 7513707, 35)
    actorMgr:CreateActorWithPos("Q7513707_Trigger", "Actor/Gadget/Q7513707_Trigger", 70900002, 0, points._Q7513707_TriggerPoint_.pos, points._Q7513707_TriggerPoint_.rot, true, false, nil)
end

function Quest75137:OnSubFinish7513707(arg1)
    print("OnSubFinish7513707")
    this:SafeDestroyQuestNpc(npcs.Npc21604Data.alias, 3)
    this:ActorDestroy("Q7513707_Trigger")
end

function Quest75137:OnSubStart7513710(arg1)
    print("OnSubStart7513710")
end

function Quest75137:OnSubFinish7513710(arg1)
    print("OnSubFinish7513710")
end

function Quest75137:OnSubStart7513712(arg1)
    print("OnSubStart7513712")
end

function Quest75137:OnSubFinish7513712(arg1)
    print("OnSubFinish7513712")
end

return Quest75137

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76143 = class("Quest76143", QuestActorProxy)
Quest76143.defaultAlias = "Quest76143"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76143:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76143:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7614312"] = self.OnSubStart7614312,
        ["7614302"] = self.OnSubStart7614302,
        ["7614303"] = self.OnSubStart7614303,
        ["7614304"] = self.OnSubStart7614304,
        ["7614319"] = self.OnSubStart7614319,
        ["7614317"] = self.OnSubStart7614317,
        ["7614305"] = self.OnSubStart7614305,
        ["7614318"] = self.OnSubStart7614318,
        ["7614306"] = self.OnSubStart7614306,
        ["7614321"] = self.OnSubStart7614321,
        ["7614313"] = self.OnSubStart7614313,
        ["7614322"] = self.OnSubStart7614322,
        ["7614307"] = self.OnSubStart7614307,
        ["7614308"] = self.OnSubStart7614308,
        ["7614301"] = self.OnSubStart7614301,
        ["7614309"] = self.OnSubStart7614309,
        ["7614311"] = self.OnSubStart7614311,
        ["7614314"] = self.OnSubStart7614314,
        ["7614320"] = self.OnSubStart7614320,
        ["7614315"] = self.OnSubStart7614315,
        ["7614316"] = self.OnSubStart7614316
    }
end

function Quest76143:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7614312"] = self.OnSubFinish7614312,
        ["7614302"] = self.OnSubFinish7614302,
        ["7614303"] = self.OnSubFinish7614303,
        ["7614304"] = self.OnSubFinish7614304,
        ["7614319"] = self.OnSubFinish7614319,
        ["7614317"] = self.OnSubFinish7614317,
        ["7614305"] = self.OnSubFinish7614305,
        ["7614318"] = self.OnSubFinish7614318,
        ["7614306"] = self.OnSubFinish7614306,
        ["7614321"] = self.OnSubFinish7614321,
        ["7614313"] = self.OnSubFinish7614313,
        ["7614322"] = self.OnSubFinish7614322,
        ["7614307"] = self.OnSubFinish7614307,
        ["7614308"] = self.OnSubFinish7614308,
        ["7614301"] = self.OnSubFinish7614301,
        ["7614309"] = self.OnSubFinish7614309,
        ["7614311"] = self.OnSubFinish7614311,
        ["7614314"] = self.OnSubFinish7614314,
        ["7614320"] = self.OnSubFinish7614320,
        ["7614315"] = self.OnSubFinish7614315,
        ["7614316"] = self.OnSubFinish7614316
    }
end

function Quest76143:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7614312"] = self.OnSubFailed7614312,
        ["7614302"] = self.OnSubFailed7614302,
        ["7614303"] = self.OnSubFailed7614303,
        ["7614304"] = self.OnSubFailed7614304,
        ["7614319"] = self.OnSubFailed7614319,
        ["7614317"] = self.OnSubFailed7614317,
        ["7614305"] = self.OnSubFailed7614305,
        ["7614318"] = self.OnSubFailed7614318,
        ["7614306"] = self.OnSubFailed7614306,
        ["7614313"] = self.OnSubFailed7614313,
        ["7614322"] = self.OnSubFailed7614322,
        ["7614307"] = self.OnSubFailed7614307,
        ["7614301"] = self.OnSubFailed7614301,
        ["7614309"] = self.OnSubFailed7614309,
        ["7614311"] = self.OnSubFailed7614311,
        ["7614315"] = self.OnSubFailed7614315
    }
end

function Quest76143:Start()
    print("Start")
end

function Quest76143:OnDestroy()
    print("OnDestroy")
end

function Quest76143:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76143:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76143:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76143:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7614301Trigger", 76143)
    this:ActorDestroy("Q7614303Trigger", nil)
    this:ActorDestroy("Q7614304Trigger", nil)
    this:ActorDestroy("Q7614309Trigger", nil)
    this:ActorDestroy("Q7614310Trigger", nil)
    this:ActorDestroy("Q7614311Trigger", nil)
    this:ActorDestroy("Q7614308Trigger", nil)
    this:ActorDestroy("Q7614312Trigger", nil)
    this:ActorDestroy("Q7614314Trigger", nil)
    this:ActorDestroy("Q7614315Trigger", nil)
    this:ActorDestroy("Q7614317Trigger", nil)
    this:ActorDestroy("Q7614319Trigger", 76143)
end

function Quest76143:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        this:AfterMainPageActiveSafeCall(function(arg1)
            actorUtils.FinishQuestWithParam({false}, {7614320})
        end, nil)
    end
end

function Quest76143:ActorDestroy(arg1, arg2)
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

function Quest76143:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest76143:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76143:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg2, 0):DestroyWithDitherEx(1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end)
end

function Quest76143:CustomFunction() end

function Quest76143:OnSubStart7614312(arg1)
    print("OnSubStart7614312")
    actorMgr:CreateActorWithPos("Q7614312Trigger", "Actor/Gadget/Q7614312Trigger", 70900002, 0, points._Q7614312TriggerPoint_.pos, points._Q7614312TriggerPoint_.rot, true, false, 102, nil, 0, 0)
    actorUtils.SetMainPageFeatureDisable(76143, "MiniMap", false)
end

function Quest76143:OnSubFinish7614312(arg1)
    print("OnSubFinish7614312")
end

function Quest76143:OnSubFailed7614312(arg1)
    print("OnSubFailed7614312")
    this:RecycleAllRes()
end

function Quest76143:OnSubStart7614302(arg1)
    print("OnSubStart7614302")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc22262.id, 0, 7614302, 150, true)
    actorUtils.SetMainPageFeatureDisable(76143, "MiniMap", true)
end

function Quest76143:OnSubFinish7614302(arg1)
    print("OnSubFinish7614302")
    this:SafeDestroyQuestNpc(npcs.Npc22262.alias, 20279)
end

function Quest76143:OnSubFailed7614302(arg1)
    print("OnSubFailed7614302")
    this:RecycleAllRes()
end

function Quest76143:OnSubStart7614303(arg1)
    print("OnSubStart7614303")
    actorMgr:CreateActorWithPos("Q7614303Trigger", "Actor/Gadget/Q7614303Trigger", 70900002, 0, points._Q7614303TriggerPoint_.pos, points._Q7614303TriggerPoint_.rot, true, false, 20279, nil, 0, 0)
    actorUtils.SetMainPageFeatureDisable(76143, "MiniMap", true)
end

function Quest76143:OnSubFinish7614303(arg1)
    print("OnSubFinish7614303")
end

function Quest76143:OnSubFailed7614303(arg1)
    print("OnSubFailed7614303")
    this:RecycleAllRes()
end

function Quest76143:OnSubStart7614304(arg1)
    print("OnSubStart7614304")
    actorMgr:CreateActorWithPos("Q7614304Trigger", "Actor/Gadget/Q7614304Trigger", 70900002, 0, points._Q7614304TriggerPoint_.pos, points._Q7614304TriggerPoint_.rot, true, false, 20279, nil, 0, 0)
    actorUtils.SetMainPageFeatureDisable(76143, "MiniMap", true)
end

function Quest76143:OnSubFinish7614304(arg1)
    print("OnSubFinish7614304")
end

function Quest76143:OnSubFailed7614304(arg1)
    print("OnSubFailed7614304")
    this:RecycleAllRes()
end

function Quest76143:OnSubStart7614319(arg1)
    print("OnSubStart7614319")
    actorMgr:CreateActorWithPos("Q7614319Trigger", "Actor/Gadget/Q7614319Trigger", 70900002, 0, points._Q7614319TriggerPoint_.pos, points._Q7614319TriggerPoint_.rot, true, false, 20279, nil, 0, 76143)
    actorUtils.SetMainPageFeatureDisable(76143, "MiniMap", true)
end

function Quest76143:OnSubFinish7614319(arg1)
    print("OnSubFinish7614319")
end

function Quest76143:OnSubFailed7614319(arg1)
    print("OnSubFailed7614319")
    this:RecycleAllRes()
end

function Quest76143:OnSubStart7614317(arg1)
    print("OnSubStart7614317")
    actorMgr:CreateActorWithPos("Q7614317Trigger", "Actor/Gadget/Q7614317Trigger", 70900002, 0, points._Q7614317TriggerPoint_.pos, points._Q7614317TriggerPoint_.rot, true, false, 102, nil, 0, 0)
    actorUtils.SetMainPageFeatureDisable(76143, "MiniMap", false)
end

function Quest76143:OnSubFinish7614317(arg1)
    print("OnSubFinish7614317")
end

function Quest76143:OnSubFailed7614317(arg1)
    print("OnSubFailed7614317")
    this:RecycleAllRes()
end

function Quest76143:OnSubStart7614305(arg1)
    print("OnSubStart7614305")
    actorUtils.SetMainPageFeatureDisable(76143, "MiniMap", true)
end

function Quest76143:OnSubFinish7614305(arg1)
    print("OnSubFinish7614305")
end

function Quest76143:OnSubFailed7614305(arg1)
    print("OnSubFailed7614305")
    this:RecycleAllRes()
end

function Quest76143:OnSubStart7614318(arg1)
    print("OnSubStart7614318")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7614318, 0, 20, 0, npcs.Npc22262.id)
    actorUtils.SetMainPageFeatureDisable(76143, "MiniMap", true)
end

function Quest76143:OnSubFinish7614318(arg1)
    print("OnSubFinish7614318")
    this:SafeDestroyQuestNpc(npcs.Npc22262.alias, 20279)
end

function Quest76143:OnSubFailed7614318(arg1)
    print("OnSubFailed7614318")
    this:RecycleAllRes()
end

function Quest76143:OnSubStart7614306(arg1)
    print("OnSubStart7614306")
    actorUtils.SetMainPageFeatureDisable(76143, "MiniMap", true)
end

function Quest76143:OnSubFinish7614306(arg1)
    print("OnSubFinish7614306")
end

function Quest76143:OnSubFailed7614306(arg1)
    print("OnSubFailed7614306")
    this:RecycleAllRes()
end

function Quest76143:OnSubStart7614321(arg1)
    print("OnSubStart7614321")
    this:PlayCutsceneIndex(7614306, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7614321})
    end, nil, nil, false)
end

function Quest76143:OnSubFinish7614321(arg1)
    print("OnSubFinish7614321")
end

function Quest76143:OnSubStart7614313(arg1)
    print("OnSubStart7614313")
    actorUtils.SetMainPageFeatureDisable(76143, "MiniMap", true)
end

function Quest76143:OnSubFinish7614313(arg1)
    print("OnSubFinish7614313")
end

function Quest76143:OnSubFailed7614313(arg1)
    print("OnSubFailed7614313")
    this:RecycleAllRes()
end

function Quest76143:OnSubStart7614322(arg1)
    print("OnSubStart7614322")
    this:PlayCutsceneIndex(7614307, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7614322})
        actorUtils.SetMainPageFeatureDisable(76143, "MiniMap", true)
    end, nil, nil, false)
end

function Quest76143:OnSubFinish7614322(arg1)
    print("OnSubFinish7614322")
end

function Quest76143:OnSubFailed7614322(arg1)
    print("OnSubFailed7614322")
    this:RecycleAllRes()
end

function Quest76143:OnSubStart7614307(arg1)
    print("OnSubStart7614307")
    this:DisableMainPageWithConfigByQuest(true, "DisableTestSumeruMainQuest")
    this:SetNavigationByMainId(76143, true)
    actorUtils.SetMainPageFeatureDisable(76143, "MiniMap", true)
end

function Quest76143:OnSubFinish7614307(arg1)
    print("OnSubFinish7614307")
    this:DisableMainPageWithConfigByQuest(false, "DisableTestSumeruMainQuest")
end

function Quest76143:OnSubFailed7614307(arg1)
    print("OnSubFailed7614307")
    this:RecycleAllRes()
end

function Quest76143:OnSubStart7614308(arg1)
    print("OnSubStart7614308")
    actorMgr:CreateActorWithPos("Q7614308Trigger", "Actor/Gadget/Q7614308Trigger", 70900002, 0, points._Q7614308TriggerPoint_.pos, points._Q7614308TriggerPoint_.rot, true, false, 102, nil, 0, 0)
    this:PlayCutsceneIndex(7614308, function(arg1_2)
        this:TransmitPlayerByData(arg1, 1, datas.Transmit1, nil, nil, nil)
        globalActor:DisablePaimonInProfilePage({102})
        actorUtils.SetMainPageFeatureDisable(76143, "MiniMap", false)
    end, nil, nil, false)
end

function Quest76143:OnSubFinish7614308(arg1)
    print("OnSubFinish7614308")
    globalActor:ResumePaimonInProfilePage({102})
end

function Quest76143:OnSubStart7614301(arg1)
    print("OnSubStart7614301")
    actorMgr:CreateActorWithPos("Q7614301Trigger", "Actor/Gadget/Q7614301Trigger", 70900002, 0, points._Q7614301TriggerPoint_.pos, points._Q7614301TriggerPoint_.rot, true, false, 102, nil, 0, 76143)
    actorUtils.SetMainPageFeatureDisable(76143, "MiniMap", false)
end

function Quest76143:OnSubFinish7614301(arg1)
    print("OnSubFinish7614301")
end

function Quest76143:OnSubFailed7614301(arg1)
    print("OnSubFailed7614301")
    this:RecycleAllRes()
end

function Quest76143:OnSubStart7614309(arg1)
    print("OnSubStart7614309")
    this:CreateQuestNpc(arg1, npcs.Npc22454.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7614309Trigger", "Actor/Gadget/Q7614309Trigger", 70900002, 0, points._Q7614309TriggerPoint_.pos, points._Q7614309TriggerPoint_.rot, true, false, 102, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q7614310Trigger", "Actor/Gadget/Q7614310Trigger", 70900002, 0, points._Q7614310TriggerPoint_.pos, points._Q7614310TriggerPoint_.rot, true, false, 102, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q7614311Trigger", "Actor/Gadget/Q7614311Trigger", 70900002, 0, points._Q7614311TriggerPoint_.pos, points._Q7614311TriggerPoint_.rot, true, false, 102, nil, 0, 0)
    globalActor:DisablePaimonInProfilePage({102})
end

function Quest76143:OnSubFinish7614309(arg1)
    print("OnSubFinish7614309")
    globalActor:ResumePaimonInProfilePage({102})
end

function Quest76143:OnSubFailed7614309(arg1)
    print("OnSubFailed7614309")
    this:RecycleAllRes()
end

function Quest76143:OnSubStart7614311(arg1)
    print("OnSubStart7614311")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7614311, 0, 50, 0, npcs.Npc22262.id)
    globalActor:DisablePaimonInProfilePage({102})
end

function Quest76143:OnSubFinish7614311(arg1)
    print("OnSubFinish7614311")
    this:SafeDestroyQuestNpc(npcs.Npc22262.alias, 102)
    this:SafeDestroyQuestNpc(npcs.Npc22454.alias, 102)
    globalActor:ResumePaimonInProfilePage({102})
end

function Quest76143:OnSubFailed7614311(arg1)
    print("OnSubFailed7614311")
    this:RecycleAllRes()
end

function Quest76143:OnSubStart7614314(arg1)
    print("OnSubStart7614314")
    actorMgr:CreateActorWithPos("Q7614314Trigger", "Actor/Gadget/Q7614314Trigger", 70900002, 0, points._Q7614314TriggerPoint_.pos, points._Q7614314TriggerPoint_.rot, true, false, 102, nil, 0, 0)
    this:TransmitPlayerUseCustomizedTplById(arg1, 1, 105)
    globalActor:DisablePaimonInProfilePage({102})
end

function Quest76143:OnSubFinish7614314(arg1)
    print("OnSubFinish7614314")
    globalActor:ResumePaimonInProfilePage({102})
end

function Quest76143:OnSubStart7614320(arg1)
    print("OnSubStart7614320")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc22262.id, 0, 7614320, 80, true)
end

function Quest76143:OnSubFinish7614320(arg1)
    print("OnSubFinish7614320")
    this:NpcDestroyWithDither(102, npcs.Npc22262.alias)
end

function Quest76143:OnSubStart7614315(arg1)
    print("OnSubStart7614315")
    actorMgr:CreateActorWithPos("Q7614315Trigger", "Actor/Gadget/Q7614315Trigger", 70900002, 0, points._Q7614315TriggerPoint_.pos, points._Q7614315TriggerPoint_.rot, true, false, 102, nil, 0, 0)
end

function Quest76143:OnSubFinish7614315(arg1)
    print("OnSubFinish7614315")
end

function Quest76143:OnSubFailed7614315(arg1)
    print("OnSubFailed7614315")
    this:RecycleAllRes()
end

function Quest76143:OnSubStart7614316(arg1)
    print("OnSubStart7614316")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7614316, 0, 50, 0, npcs.Npc22355.id)
end

function Quest76143:OnSubFinish7614316(arg1)
    print("OnSubFinish7614316")
    this:SafeDestroyQuestNpc(npcs.Npc22355.alias, 102)
end

return Quest76143

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5028 = class("Quest5028", QuestActorProxy)
Quest5028.defaultAlias = "Quest5028"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest5028:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest5028:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["502821"] = self.OnSubStart502821,
        ["502822"] = self.OnSubStart502822,
        ["502801"] = self.OnSubStart502801,
        ["502802"] = self.OnSubStart502802,
        ["502803"] = self.OnSubStart502803,
        ["502812"] = self.OnSubStart502812,
        ["502804"] = self.OnSubStart502804,
        ["502823"] = self.OnSubStart502823,
        ["502805"] = self.OnSubStart502805,
        ["502806"] = self.OnSubStart502806,
        ["502807"] = self.OnSubStart502807,
        ["502808"] = self.OnSubStart502808,
        ["502809"] = self.OnSubStart502809,
        ["502810"] = self.OnSubStart502810,
        ["502811"] = self.OnSubStart502811
    }
end

function Quest5028:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["502821"] = self.OnSubFinish502821,
        ["502822"] = self.OnSubFinish502822,
        ["502801"] = self.OnSubFinish502801,
        ["502802"] = self.OnSubFinish502802,
        ["502803"] = self.OnSubFinish502803,
        ["502812"] = self.OnSubFinish502812,
        ["502804"] = self.OnSubFinish502804,
        ["502823"] = self.OnSubFinish502823,
        ["502805"] = self.OnSubFinish502805,
        ["502806"] = self.OnSubFinish502806,
        ["502807"] = self.OnSubFinish502807,
        ["502808"] = self.OnSubFinish502808,
        ["502809"] = self.OnSubFinish502809,
        ["502810"] = self.OnSubFinish502810,
        ["502811"] = self.OnSubFinish502811
    }
end

function Quest5028:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["502801"] = self.OnSubFailed502801,
        ["502802"] = self.OnSubFailed502802,
        ["502803"] = self.OnSubFailed502803,
        ["502812"] = self.OnSubFailed502812,
        ["502804"] = self.OnSubFailed502804,
        ["502823"] = self.OnSubFailed502823,
        ["502805"] = self.OnSubFailed502805,
        ["502806"] = self.OnSubFailed502806,
        ["502807"] = self.OnSubFailed502807,
        ["502808"] = self.OnSubFailed502808,
        ["502809"] = self.OnSubFailed502809,
        ["502810"] = self.OnSubFailed502810
    }
end

function Quest5028:Start()
    print("Start")
end

function Quest5028:OnDestroy()
    print("OnDestroy")
end

function Quest5028:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest5028:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest5028:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest5028:InvokeOnAbility(arg1)
    print("InvokeOnAbility")
    if arg1.valueInt == 1 then
        this:GetQuestNpcActor(npcs.Npc1025.alias, 5028):SetPlayerNpcEnergyType(1)
    else
        if arg1.valueInt == 2 then
            this:GetQuestNpcActor(npcs.Npc1026.alias, 5028):SetPlayerNpcEnergyType(1)
        end
    end
end

function Quest5028:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest5028:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest5028:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest5028:OnSubStart502821(arg1)
    print("OnSubStart502821")
    this:CreateQuestNpc(arg1, npcs.Npc14770.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q502821Trigger", "Actor/Gadget/Q502821Trigger", 70900002, 0, points._Q502821TriggerPoint_.pos, points._Q502821TriggerPoint_.rot, true, false, 20235)
end

function Quest5028:OnSubFinish502821(arg1)
    print("OnSubFinish502821")
    this:SafeDestroyQuestNpc(npcs.Npc14770.alias, 3)
    this:ActorDestroy("Q502821Trigger")
end

function Quest5028:OnSubStart502822(arg1)
    print("OnSubStart502822")
    actorMgr:CreateActorWithPos("Q502822Trigger", "Actor/Gadget/Q502822Trigger", 70900002, 0, points._Q502822TriggerPoint_.pos, points._Q502822TriggerPoint_.rot, true, false, 3)
end

function Quest5028:OnSubFinish502822(arg1)
    print("OnSubFinish502822")
    this:ActorDestroy("Q502822Trigger")
end

function Quest5028:OnSubStart502801(arg1)
    print("OnSubStart502801")
    this:NpcCreateWithNpcTrigger(npcs.Npc14762.id, 0, 15, 502801)
end

function Quest5028:OnSubFinish502801(arg1)
    print("OnSubFinish502801")
    this:SafeDestroyQuestNpc(npcs.Npc14762.alias, 20235)
end

function Quest5028:OnSubFailed502801(arg1)
    print("OnSubFailed502801")
    this:DestroyNpcTrigger("Q502801N14762Trigger")
    this:DestroyQuestNpcActor(npcs.Npc14762.alias, 20235)
end

function Quest5028:OnSubStart502802(arg1)
    print("OnSubStart502802")
    actorMgr:CreateActorWithPos("Q502802Trigger", "Actor/Gadget/Q502802Trigger", 70900002, 0, points._Q502802TriggerPoint_.pos, points._Q502802TriggerPoint_.rot, true, false, 20235)
end

function Quest5028:OnSubFinish502802(arg1)
    print("OnSubFinish502802")
    this:ActorDestroy("Q502802Trigger")
end

function Quest5028:OnSubFailed502802(arg1)
    print("OnSubFailed502802")
    this:ActorDestroy("Q502802Trigger")
end

function Quest5028:OnSubStart502803(arg1)
    print("OnSubStart502803")
    actorMgr:CreateActorWithPos("Q502803Trigger", "Actor/Gadget/Q502803Trigger", 70900002, 0, points._Q502803TriggerPoint_.pos, points._Q502803TriggerPoint_.rot, true, false, 20235)
    actorMgr:CreateActorWithPos("Q502803Trigger_T", "Actor/Gadget/Q502803Trigger_T", 70900002, 0, points._Q502803Trigger_TPoint_.pos, points._Q502803Trigger_TPoint_.rot, true, false, 20235)
end

function Quest5028:OnSubFinish502803(arg1)
    print("OnSubFinish502803")
    this:ActorDestroy("Q502803Trigger")
    this:ActorDestroy("Q502803Trigger_T")
    this:ShowBlackScreenWithDialogText(0, 1, 0, function(arg1)
        actorUtils.ShowContext("PyroTravelerTalentPage", 0)
        this:ActionSafeCall(function(arg1)
            this:QuestNarratorTask(datas.Narrator502801, nil)
        end)
    end, nil, nil, 0, false, true)
end

function Quest5028:OnSubFailed502803(arg1)
    print("OnSubFailed502803")
    this:ActorDestroy("Q502803Trigger")
    this:ActorDestroy("Q502803Trigger_T")
end

function Quest5028:OnSubStart502812(arg1)
    print("OnSubStart502812")
end

function Quest5028:OnSubFinish502812(arg1)
    print("OnSubFinish502812")
end

function Quest5028:OnSubFailed502812(arg1)
    print("OnSubFailed502812")
    this:ClearNarratorTask()
end

function Quest5028:OnSubStart502804(arg1)
    print("OnSubStart502804")
end

function Quest5028:OnSubFinish502804(arg1)
    print("OnSubFinish502804")
end

function Quest5028:OnSubFailed502804(arg1)
    print("OnSubFailed502804")
    this:ClearNarratorTask()
end

function Quest5028:OnSubStart502823(arg1)
    print("OnSubStart502823")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(2, npcs.Npc1089.id, 0, 502823, 30, true)
    actorMgr:CreateActorWithPos("Q502823Trigger_T", "Actor/Gadget/Q502823Trigger_T", 70900002, 0, points._Q502823Trigger_TPoint_.pos, points._Q502823Trigger_TPoint_.rot, true, false, 20235)
end

function Quest5028:OnSubFinish502823(arg1)
    print("OnSubFinish502823")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 20235)
    this:ActorDestroy("Q502823Trigger_T")
end

function Quest5028:OnSubFailed502823(arg1)
    print("OnSubFailed502823")
    this:ActorDestroy("Q502823Trigger_T")
    this:DestroyQuestNpcActor(npcs.Npc1089.alias, 20235)
end

function Quest5028:OnSubStart502805(arg1)
    print("OnSubStart502805")
    this:NpcCreateWithNpcTrigger(npcs.Npc14762.id, 0, 7, 502805)
    self:BanAvatarFreeStyle()
    this:DisableMainPageWithConfigByQuest(true, "DisableTestSumeruMainQuest")
end

function Quest5028:OnSubFinish502805(arg1)
    print("OnSubFinish502805")
    this:SafeDestroyQuestNpc(npcs.Npc14762.alias, 20235)
end

function Quest5028:OnSubFailed502805(arg1)
    print("OnSubFailed502805")
    this:DestroyNpcTrigger("Q502805N14762Trigger")
    this:DestroyQuestNpcActor(npcs.Npc14762.alias, 20235)
    self:ResumeAvatarFreeStyle()
    this:DisableMainPageWithConfigByQuest(false, "DisableTestSumeruMainQuest")
end

function Quest5028:OnSubStart502806(arg1)
    print("OnSubStart502806")
    self:BanAvatarFreeStyle()
    this:DisableMainPageWithConfigByQuest(true, "DisableTestSumeruMainQuest")
end

function Quest5028:OnSubFinish502806(arg1)
    print("OnSubFinish502806")
end

function Quest5028:OnSubFailed502806(arg1)
    print("OnSubFailed502806")
    self:ResumeAvatarFreeStyle()
    this:DisableMainPageWithConfigByQuest(false, "DisableTestSumeruMainQuest")
end

function Quest5028:OnSubStart502807(arg1)
    print("OnSubStart502807")
    this:CreateQuestNpc(arg1, npcs.Npc14762.id, 0, false, 0)
    this:DeployStoryByQuest(110502802)
    actorMgr:CreateActorWithPos("Q502807Trigger", "Actor/Gadget/Q502807Trigger", 70900002, 0, points._Q502807TriggerPoint_.pos, points._Q502807TriggerPoint_.rot, true, false, 20235)
    self:BanAvatarFreeStyle()
    this:DisableMainPageWithConfigByQuest(true, "DisableTestSumeruMainQuest")
    this:LevelLoadFinishSafeCall(function(arg1)
        if sceneData.currSceneID == 20235 then
            this:TransmitPlayerWithQuestIdByData(502807, 1, datas.TransmitDatafire02, nil, nil, nil)
        end
    end)
end

function Quest5028:OnSubFinish502807(arg1)
    print("OnSubFinish502807")
    this:SafeDestroyQuestNpc(npcs.Npc14762.alias, 20235)
    this:CancelStoryByQuest(110502802)
    this:ActorDestroy("Q502807Trigger")
    self:ResumeAvatarFreeStyle()
    this:DisableMainPageWithConfigByQuest(false, "DisableTestSumeruMainQuest")
end

function Quest5028:OnSubFailed502807(arg1)
    print("OnSubFailed502807")
    this:CancelStoryByQuest(110502802)
    this:ActorDestroy("Q502807Trigger")
    self:ResumeAvatarFreeStyle()
    this:DisableMainPageWithConfigByQuest(false, "DisableTestSumeruMainQuest")
    this:DestroyQuestNpcActor(npcs.Npc14762.alias, 20235)
end

function Quest5028:OnSubStart502808(arg1)
    print("OnSubStart502808")
    actorMgr:CreateActorWithPos("Q502801Trigger", "Actor/Gadget/Q502801Trigger", 70900002, 0, points._Q502801TriggerPoint_.pos, points._Q502801TriggerPoint_.rot, true, false, 20235)
    actorMgr:CreateActorWithPos("Q502808Trigger", "Actor/Gadget/Q502808Trigger", 70900002, 0, points._Q502808TriggerPoint_.pos, points._Q502808TriggerPoint_.rot, true, false, 20235)
end

function Quest5028:OnSubFinish502808(arg1)
    print("OnSubFinish502808")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.Narrator502802, nil)
    end)

    this:ActorDestroy("Q502801Trigger")
    this:ActorDestroy("Q502808Trigger")
end

function Quest5028:OnSubFailed502808(arg1)
    print("OnSubFailed502808")
    this:ActorDestroy("Q502801Trigger")
    this:ActorDestroy("Q502808Trigger")
end

function Quest5028:OnSubStart502809(arg1)
    print("OnSubStart502809")
    globalActor:StartGuide("GuideSpecialFocusAttackIOS")
end

function Quest5028:OnSubFinish502809(arg1)
    print("OnSubFinish502809")
    globalActor:EndGuide("GuideSpecialFocusAttackIOS")
    globalActor:EndGuide("GuideSpecialFocusAttackPC")
    globalActor:EndGuide("GuideSpecialFocusAttackPS")
end

function Quest5028:OnSubFailed502809(arg1)
    print("OnSubFailed502809")
    this:ClearNarratorTask()
    globalActor:EndGuide("GuideSpecialFocusAttackIOS")
    globalActor:EndGuide("GuideSpecialFocusAttackPC")
    globalActor:EndGuide("GuideSpecialFocusAttackPS")
end

function Quest5028:OnSubStart502810(arg1)
    print("OnSubStart502810")
    actorMgr:CreateActorWithPos("Q502810Trigger", "Actor/Gadget/Q502810Trigger", 70900002, 0, points._Q502810TriggerPoint_.pos, points._Q502810TriggerPoint_.rot, true, false, 20235)
end

function Quest5028:OnSubFinish502810(arg1)
    print("OnSubFinish502810")
    this:ActorDestroy("Q502810Trigger")
    this:ShowBlackScreenWithDialogText(0, 2, 0, nil, nil, nil, 0, false, true)
end

function Quest5028:OnSubFailed502810(arg1)
    print("OnSubFailed502810")
    this:ActorDestroy("Q502810Trigger")
end

function Quest5028:OnSubStart502811(arg1)
    print("OnSubStart502811")
    actorMgr:CreateActorWithPos("Q502811Trigger", "Actor/Gadget/Q502811Trigger", 70900002, 0, points._Q502811TriggerPoint_.pos, points._Q502811TriggerPoint_.rot, true, false, 20235)
end

function Quest5028:OnSubFinish502811(arg1)
    print("OnSubFinish502811")
    this:ActorDestroy("Q502811Trigger")
end

return Quest5028

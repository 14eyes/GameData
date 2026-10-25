require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5021 = class("Quest5021", QuestActorProxy)
Quest5021.defaultAlias = "Quest5021"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest5021:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest5021:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["502101"] = self.OnSubStart502101,
        ["502102"] = self.OnSubStart502102,
        ["502103"] = self.OnSubStart502103,
        ["502104"] = self.OnSubStart502104,
        ["502105"] = self.OnSubStart502105,
        ["502122"] = self.OnSubStart502122,
        ["502106"] = self.OnSubStart502106,
        ["502135"] = self.OnSubStart502135,
        ["502108"] = self.OnSubStart502108,
        ["502109"] = self.OnSubStart502109,
        ["502110"] = self.OnSubStart502110,
        ["502136"] = self.OnSubStart502136,
        ["502111"] = self.OnSubStart502111,
        ["502112"] = self.OnSubStart502112,
        ["502107"] = self.OnSubStart502107,
        ["502118"] = self.OnSubStart502118,
        ["502119"] = self.OnSubStart502119,
        ["502113"] = self.OnSubStart502113,
        ["502114"] = self.OnSubStart502114,
        ["502115"] = self.OnSubStart502115,
        ["502116"] = self.OnSubStart502116,
        ["502132"] = self.OnSubStart502132,
        ["502133"] = self.OnSubStart502133,
        ["502117"] = self.OnSubStart502117,
        ["502120"] = self.OnSubStart502120,
        ["502121"] = self.OnSubStart502121,
        ["502123"] = self.OnSubStart502123,
        ["502124"] = self.OnSubStart502124,
        ["502125"] = self.OnSubStart502125,
        ["502126"] = self.OnSubStart502126,
        ["502127"] = self.OnSubStart502127,
        ["502128"] = self.OnSubStart502128,
        ["502129"] = self.OnSubStart502129,
        ["502130"] = self.OnSubStart502130,
        ["502134"] = self.OnSubStart502134,
        ["502131"] = self.OnSubStart502131
    }
end

function Quest5021:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["502101"] = self.OnSubFinish502101,
        ["502102"] = self.OnSubFinish502102,
        ["502103"] = self.OnSubFinish502103,
        ["502104"] = self.OnSubFinish502104,
        ["502105"] = self.OnSubFinish502105,
        ["502122"] = self.OnSubFinish502122,
        ["502106"] = self.OnSubFinish502106,
        ["502135"] = self.OnSubFinish502135,
        ["502108"] = self.OnSubFinish502108,
        ["502109"] = self.OnSubFinish502109,
        ["502110"] = self.OnSubFinish502110,
        ["502136"] = self.OnSubFinish502136,
        ["502111"] = self.OnSubFinish502111,
        ["502112"] = self.OnSubFinish502112,
        ["502107"] = self.OnSubFinish502107,
        ["502118"] = self.OnSubFinish502118,
        ["502119"] = self.OnSubFinish502119,
        ["502113"] = self.OnSubFinish502113,
        ["502114"] = self.OnSubFinish502114,
        ["502115"] = self.OnSubFinish502115,
        ["502116"] = self.OnSubFinish502116,
        ["502132"] = self.OnSubFinish502132,
        ["502133"] = self.OnSubFinish502133,
        ["502117"] = self.OnSubFinish502117,
        ["502120"] = self.OnSubFinish502120,
        ["502121"] = self.OnSubFinish502121,
        ["502123"] = self.OnSubFinish502123,
        ["502124"] = self.OnSubFinish502124,
        ["502125"] = self.OnSubFinish502125,
        ["502126"] = self.OnSubFinish502126,
        ["502127"] = self.OnSubFinish502127,
        ["502128"] = self.OnSubFinish502128,
        ["502129"] = self.OnSubFinish502129,
        ["502130"] = self.OnSubFinish502130,
        ["502134"] = self.OnSubFinish502134,
        ["502131"] = self.OnSubFinish502131
    }
end

function Quest5021:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["502101"] = self.OnSubFailed502101,
        ["502105"] = self.OnSubFailed502105,
        ["502106"] = self.OnSubFailed502106
    }
end

function Quest5021:Start()
    print("Start")
end

function Quest5021:OnDestroy()
    print("OnDestroy")
end

function Quest5021:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest5021:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest5021:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest5021:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        this:ActionSafeCall(function(arg1)
            actorUtils.FinishQuestID(false, 502108)
        end)
    end
end

function Quest5021:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest5021:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest5021:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest5021:OnSubStart502101(arg1)
    print("OnSubStart502101")
end

function Quest5021:OnSubFinish502101(arg1)
    print("OnSubFinish502101")
    if this:GetSubQuestState(502102) == 3 then
        this:ActionSafeCall(function(arg1)
            actorUtils.ShowContext("AbyssWarTaskCompleteDialogContext", 0)
        end)
    end

    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc14511.alias, 5021):DoFreeStyle(4260, true, nil, true, true, false, true)
    end)
end

function Quest5021:OnSubFailed502101(arg1)
    print("OnSubFailed502101")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc14511.alias, 5021):DoFreeStyle(4260, true, nil, true, true, false, true)
        if this:GetSubQuestState(502102) == 3 then
            this:ActionSafeCall(function(arg1)
                actorUtils.ShowContext("AbyssWarTaskCompleteDialogContext", 0)
            end)
        end
    end)
end

function Quest5021:OnSubStart502102(arg1)
    print("OnSubStart502102")
end

function Quest5021:OnSubFinish502102(arg1)
    print("OnSubFinish502102")
    local questGlobalVar = this:GetQuestGlobalVar(501101)
    if questGlobalVar == 1 then
        this:ActionSafeCall(function(arg1)
            actorUtils.ShowContext("AbyssWarTaskCompleteDialogContext", 0)
        end)
    elseif questGlobalVar == 10 then
        this:ActionSafeCall(function(arg1)
            actorUtils.ShowContext("AbyssWarTaskCompleteDialogContext", 0)
        end)
    end
end

function Quest5021:OnSubStart502103(arg1)
    print("OnSubStart502103")
    this:CreateQuestNpc(arg1, npcs.Npc14510.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14511.id, 0, false, 0)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc14511.alias, 5021):DoFreeStyle(4260, true, nil, true, true, false, true)
    end)
end

function Quest5021:OnSubFinish502103(arg1)
    print("OnSubFinish502103")
    this:SafeDestroyQuestNpc(npcs.Npc14510.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14511.alias, 20238)
end

function Quest5021:OnSubStart502104(arg1)
    print("OnSubStart502104")
    this:CreateQuestNpc(arg1, npcs.Npc14512.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14512.alias, 5021):DoFreeStyle(1282, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc14526.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14526.alias, 5021):DoFreeStyle(1070, true, nil, true, true, false, true)
end

function Quest5021:OnSubFinish502104(arg1)
    print("OnSubFinish502104")
end

function Quest5021:OnSubStart502105(arg1)
    print("OnSubStart502105")
    this:LevelLoadFinishSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc14512.alias, 5021):DoFreeStyle(1282, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc14526.alias, 5021):DoFreeStyle(1070, true, nil, true, true, false, true)
    end)

    actorMgr:CreateActorWithPos("Q502105Trigger", "Actor/Gadget/Q502105Trigger", 70900002, 0, points._Q502105TriggerPoint_.pos, points._Q502105TriggerPoint_.rot, true, false, 20238)
end

function Quest5021:OnSubFinish502105(arg1)
    print("OnSubFinish502105")
    this:ActionSafeCall(function(arg1)
        this:CreateQuestNpcById(502122, npcs.Npc14526.id, 0, false, 0)
        this:CreateQuestNpcById(502122, npcs.Npc14512.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14512.alias, 5021):DoFreeStyle(1130, true, nil, true, true, false, true)
        this:GetQuestNpcActor(npcs.Npc14526.alias, 5021):DoFreeStyle(4100, true, nil, true, true, false, true)
    end)

    if this:GetSubQuestState(501136) == 3 then
        this:ActionSafeCall(function(arg1)
            actorUtils.ShowContext("AbyssWarTaskCompleteDialogContext", 0)
        end)
    end

    this:ActorDestroy("Q502105Trigger")
end

function Quest5021:OnSubFailed502105(arg1)
    print("OnSubFailed502105")
    this:ActorDestroy("Q502105Trigger")
end

function Quest5021:OnSubStart502122(arg1)
    print("OnSubStart502122")
    local subQuestState = this:GetSubQuestState(502105)
    if subQuestState == 3 then
        this:CreateQuestNpc(arg1, npcs.Npc14526.id, 0, false, 0)
    elseif subQuestState == 2 then
        this:CreateQuestNpcById(502105, npcs.Npc14512.id, 0, false, 0)
        this:CreateQuestNpcById(502105, npcs.Npc14526.id, 0, false, 0)
    end
end

function Quest5021:OnSubFinish502122(arg1)
    print("OnSubFinish502122")
    this:SafeDestroyQuestNpc(npcs.Npc14512.alias, 20238)
end

function Quest5021:OnSubStart502106(arg1)
    print("OnSubStart502106")
    this:CreateQuestNpc(arg1, npcs.Npc14403.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14403.alias, 5021):DoFreeStyle(1282, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14403.alias, 5021):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
    this:GetQuestNpcActor(npcs.Npc14403.alias, 5021):DisableInteeHeadCtrl(true)
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(110501118)
    end)
end

function Quest5021:OnSubFinish502106(arg1)
    print("OnSubFinish502106")
    this:SafeDestroyQuestNpc(npcs.Npc14403.alias, 20238)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("AbyssWarTaskCompleteDialogContext", 0)
        this:CancelStoryByQuest(110501118)
    end)
end

function Quest5021:OnSubFailed502106(arg1)
    print("OnSubFailed502106")
    this:ActionSafeCall(function(arg1)
        this:CancelStoryByQuest(110501118)
    end)
end

function Quest5021:OnSubStart502135(arg1)
    print("OnSubStart502135")
end

function Quest5021:OnSubFinish502135(arg1)
    print("OnSubFinish502135")
end

function Quest5021:OnSubStart502108(arg1)
    print("OnSubStart502108")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14398.id, arg1)
    this:GetQuestNpcActor(npcs.Npc14398.alias, 5021):DoFreeStyle(1120, true, nil, true, true, false, true)
end

function Quest5021:OnSubFinish502108(arg1)
    print("OnSubFinish502108")
    this:SafeDestroyQuestNpc(npcs.Npc14398.alias, 20238)
end

function Quest5021:OnSubStart502109(arg1)
    print("OnSubStart502109")
end

function Quest5021:OnSubFinish502109(arg1)
    print("OnSubFinish502109")
end

function Quest5021:OnSubStart502110(arg1)
    print("OnSubStart502110")
    this:NpcCreateWithNpcTriggerAndBlackscreen(502110, 0, 50, 1, npcs.Npc14398.id)
    this:GetQuestNpcActor(npcs.Npc14398.alias, 5021):DoFreeStyle(1230, true, nil, true, true, false, true)
end

function Quest5021:OnSubFinish502110(arg1)
    print("OnSubFinish502110")
    if this:GetSubQuestState(501106) == 3 then
        this:ActionSafeCall(function(arg1)
            actorUtils.ShowContext("AbyssWarTaskCompleteDialogContext", 0)
        end)
    end

    this:ActionSafeCall(function(arg1)
        this:CreateQuestNpcById(502111, npcs.Npc14398.id, 0, false, 0)
    end)
end

function Quest5021:OnSubStart502136(arg1)
    print("OnSubStart502136")
    this:CreateQuestNpc(arg1, npcs.Npc14398.id, 0, false, 0)
end

function Quest5021:OnSubFinish502136(arg1)
    print("OnSubFinish502136")
    this:SafeDestroyQuestNpc(npcs.Npc14398.alias, 20238)
end

function Quest5021:OnSubStart502111(arg1)
    print("OnSubStart502111")
end

function Quest5021:OnSubFinish502111(arg1)
    print("OnSubFinish502111")
    this:SafeDestroyQuestNpc(npcs.Npc14398.alias, 20238)
end

function Quest5021:OnSubStart502112(arg1)
    print("OnSubStart502112")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14393.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14394.id, arg1)
    this:CreateLocalGadget(74006019, "0", {x = -1967.748, y = 220.889, z = 7809.614}, {x = 0, y = -175.205, z = 0}, 20238, nil, nil, false, 0, true)
end

function Quest5021:OnSubFinish502112(arg1)
    print("OnSubFinish502112")
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("AbyssWarTaskCompleteDialogContext", 0)
    end)
end

function Quest5021:OnSubStart502107(arg1)
    print("OnSubStart502107")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14393.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14394.id, arg1)
    this:CreateLocalGadget(74006019, "0", {x = -1967.748, y = 220.889, z = 7809.614}, {x = 0, y = -175.205, z = 0}, 20238, nil, nil, false, 0, true)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc14393.alias, 5021):DisableInteeHeadCtrl(true)
    end)
end

function Quest5021:OnSubFinish502107(arg1)
    print("OnSubFinish502107")
    this:SafeDestroyQuestNpc(npcs.Npc14393.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14394.alias, 20238)
    this:RemoveLocalGadget(74006019, "0")
end

function Quest5021:OnSubStart502118(arg1)
    print("OnSubStart502118")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14393.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14394.id, arg1)
    this:CreateLocalGadget(74006019, "0", {x = -1967.748, y = 220.889, z = 7809.614}, {x = 0, y = -175.205, z = 0}, 20238, nil, nil, false, 0, true)
    this:ActionSafeCall(function(arg1)
        local realAlias = this:GetRealAlias(npcs.Npc14394.alias)
        this:GetQuestNpcActor(npcs.Npc14393.alias, 5021):LookAtTarget(realAlias, datas.lookParam, true)
        this:GetQuestNpcActor(npcs.Npc14393.alias, 5021):DisableInteeHeadCtrl(true)
    end)
end

function Quest5021:OnSubFinish502118(arg1)
    print("OnSubFinish502118")
    this:SafeDestroyQuestNpc(npcs.Npc14393.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14394.alias, 20238)
    this:RemoveLocalGadget(74006019, "0")
end

function Quest5021:OnSubStart502119(arg1)
    print("OnSubStart502119")
end

function Quest5021:OnSubFinish502119(arg1)
    print("OnSubFinish502119")
end

function Quest5021:OnSubStart502113(arg1)
    print("OnSubStart502113")
    this:CreateQuestNpc(arg1, npcs.Npc14392.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14392.alias, 5021):DoFreeStyle(1240, true, nil, true, true, false, true)
end

function Quest5021:OnSubFinish502113(arg1)
    print("OnSubFinish502113")
end

function Quest5021:OnSubStart502114(arg1)
    print("OnSubStart502114")
    this:CreateQuestNpc(arg1, npcs.Npc14392.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14392.alias, 5021):DoFreeStyle(1120, true, nil, true, true, false, true)
end

function Quest5021:OnSubFinish502114(arg1)
    print("OnSubFinish502114")
end

function Quest5021:OnSubStart502115(arg1)
    print("OnSubStart502115")
    this:CreateQuestNpc(arg1, npcs.Npc14512.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14512.alias, 5021):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest5021:OnSubFinish502115(arg1)
    print("OnSubFinish502115")
end

function Quest5021:OnSubStart502116(arg1)
    print("OnSubStart502116")
    this:CreateQuestNpc(arg1, npcs.Npc14393.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14393.alias, 5021):DoFreeStyle(1190, true, nil, true, true, false, true)
end

function Quest5021:OnSubFinish502116(arg1)
    print("OnSubFinish502116")
end

function Quest5021:OnSubStart502132(arg1)
    print("OnSubStart502132")
end

function Quest5021:OnSubFinish502132(arg1)
    print("OnSubFinish502132")
end

function Quest5021:OnSubStart502133(arg1)
    print("OnSubStart502133")
end

function Quest5021:OnSubFinish502133(arg1)
    print("OnSubFinish502133")
end

function Quest5021:OnSubStart502117(arg1)
    print("OnSubStart502117")
    this:CreateQuestNpc(arg1, npcs.Npc14512.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14512.alias, 5021):DoFreeStyle(1130, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14393.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14393.alias, 5021):DoFreeStyle(1120, true, nil, true, true, false, false)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc14512.alias, 5021)
    local realAlias = this:GetRealAlias(npcs.Npc14393.alias)
    questNpcActor:LookAtTarget(realAlias, datas.lookParam, true)
    local v = this:GetQuestNpcActor(npcs.Npc14393.alias, 5021)
    local realAlias2 = this:GetRealAlias(npcs.Npc14512.alias)
    v:LookAtTarget(realAlias2, datas.lookParam, true)
end

function Quest5021:OnSubFinish502117(arg1)
    print("OnSubFinish502117")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc14512.alias, 5021):DoFreeStyle(1130, true, nil, true, true, false, false)
        this:GetQuestNpcActor(npcs.Npc14393.alias, 5021):DoFreeStyle(1120, true, nil, true, true, false, false)
    end)
end

function Quest5021:OnSubStart502120(arg1)
    print("OnSubStart502120")
    this:CreateQuestNpc(arg1, npcs.Npc14511.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14511.alias, 5021):DoFreeStyle(1240, true, nil, true, true, false, false)
end

function Quest5021:OnSubFinish502120(arg1)
    print("OnSubFinish502120")
    if this:GetQuestGlobalVar(501101) == 20 then
        this:ActionSafeCall(function(arg1)
            this:GetQuestNpcActor(npcs.Npc14511.alias, 5021):DoFreeStyle(1230, true, nil, true, true, false, true)
        end)
    else
        this:ActionSafeCall(function(arg1)
            this:GetQuestNpcActor(npcs.Npc14511.alias, 5021):DoFreeStyle(1160, true, nil, true, true, false, true)
        end)
    end
end

function Quest5021:OnSubStart502121(arg1)
    print("OnSubStart502121")
    if this:GetSubQuestState(502120) == 3 then
        this:CreateQuestNpc(arg1, npcs.Npc14511.id, 0, false, 0)
        if this:GetQuestGlobalVar(501101) == 20 then
            this:GetQuestNpcActor(npcs.Npc14511.alias, 5021):DoFreeStyle(1230, true, nil, true, true, false, false)
        else
            this:GetQuestNpcActor(npcs.Npc14511.alias, 5021):DoFreeStyle(1160, true, nil, true, true, false, false)
        end
    end

    if this:GetSubQuestState(502117) == 3 then
        this:CreateQuestNpc(arg1, npcs.Npc14512.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14512.alias, 5021):DoFreeStyle(1130, true, nil, true, true, false, true)
        this:CreateQuestNpc(arg1, npcs.Npc14393.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14393.alias, 5021):DoFreeStyle(1120, true, nil, true, true, false, true)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc14512.alias, 5021)
        local realAlias = this:GetRealAlias(npcs.Npc14393.alias)
        questNpcActor:LookAtTarget(realAlias, datas.lookParam, true)
        local v = this:GetQuestNpcActor(npcs.Npc14393.alias, 5021)
        local realAlias2 = this:GetRealAlias(npcs.Npc14512.alias)
        v:LookAtTarget(realAlias2, datas.lookParam, true)
    end

    if this:GetSubQuestState(502115) == 3 then
        this:CreateQuestNpc(arg1, npcs.Npc14512.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14512.alias, 5021):DoFreeStyle(1190, true, nil, true, true, false, false)
    end

    if this:GetSubQuestState(502116) == 3 then
        this:CreateQuestNpc(arg1, npcs.Npc14393.id, 0, false, 0)
        this:GetQuestNpcActor(npcs.Npc14393.alias, 5021):DoFreeStyle(1190, true, nil, true, true, false, false)
    end
end

function Quest5021:OnSubFinish502121(arg1)
    print("OnSubFinish502121")
    this:SafeDestroyQuestNpc(npcs.Npc14511.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14393.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14512.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14392.alias, 20238)
end

function Quest5021:OnSubStart502123(arg1)
    print("OnSubStart502123")
    actorUtils.FinishQuestID(false, 502123)
end

function Quest5021:OnSubFinish502123(arg1)
    print("OnSubFinish502123")
end

function Quest5021:OnSubStart502124(arg1)
    print("OnSubStart502124")
    actorUtils.FinishQuestID(false, 502124)
end

function Quest5021:OnSubFinish502124(arg1)
    print("OnSubFinish502124")
end

function Quest5021:OnSubStart502125(arg1)
    print("OnSubStart502125")
    actorUtils.FinishQuestID(false, 502125)
end

function Quest5021:OnSubFinish502125(arg1)
    print("OnSubFinish502125")
end

function Quest5021:OnSubStart502126(arg1)
    print("OnSubStart502126")
    actorUtils.FinishQuestID(false, 502126)
end

function Quest5021:OnSubFinish502126(arg1)
    print("OnSubFinish502126")
end

function Quest5021:OnSubStart502127(arg1)
    print("OnSubStart502127")
    actorUtils.FinishQuestID(false, 502127)
end

function Quest5021:OnSubFinish502127(arg1)
    print("OnSubFinish502127")
end

function Quest5021:OnSubStart502128(arg1)
    print("OnSubStart502128")
    actorUtils.FinishQuestID(false, 502128)
end

function Quest5021:OnSubFinish502128(arg1)
    print("OnSubFinish502128")
end

function Quest5021:OnSubStart502129(arg1)
    print("OnSubStart502129")
    actorUtils.FinishQuestID(false, 502129)
end

function Quest5021:OnSubFinish502129(arg1)
    print("OnSubFinish502129")
end

function Quest5021:OnSubStart502130(arg1)
    print("OnSubStart502130")
    actorUtils.FinishQuestID(false, 502130)
end

function Quest5021:OnSubFinish502130(arg1)
    print("OnSubFinish502130")
end

function Quest5021:OnSubStart502134(arg1)
    print("OnSubStart502134")
end

function Quest5021:OnSubFinish502134(arg1)
    print("OnSubFinish502134")
end

function Quest5021:OnSubStart502131(arg1)
    print("OnSubStart502131")
end

function Quest5021:OnSubFinish502131(arg1)
    print("OnSubFinish502131")
end

return Quest5021

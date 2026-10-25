require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest7017 = class("Quest7017", QuestActorProxy)
Quest7017.defaultAlias = "Quest7017"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest7017:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest7017:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["701701"] = self.OnSubStart701701,
        ["701732"] = self.OnSubStart701732,
        ["701719"] = self.OnSubStart701719,
        ["701733"] = self.OnSubStart701733,
        ["701702"] = self.OnSubStart701702,
        ["701703"] = self.OnSubStart701703,
        ["701705"] = self.OnSubStart701705,
        ["701734"] = self.OnSubStart701734,
        ["701716"] = self.OnSubStart701716,
        ["701704"] = self.OnSubStart701704,
        ["701706"] = self.OnSubStart701706,
        ["701707"] = self.OnSubStart701707,
        ["701708"] = self.OnSubStart701708,
        ["701709"] = self.OnSubStart701709,
        ["701717"] = self.OnSubStart701717,
        ["701718"] = self.OnSubStart701718,
        ["701720"] = self.OnSubStart701720,
        ["701721"] = self.OnSubStart701721,
        ["701722"] = self.OnSubStart701722,
        ["701724"] = self.OnSubStart701724,
        ["701725"] = self.OnSubStart701725,
        ["701736"] = self.OnSubStart701736,
        ["701726"] = self.OnSubStart701726,
        ["701710"] = self.OnSubStart701710,
        ["701723"] = self.OnSubStart701723,
        ["701730"] = self.OnSubStart701730,
        ["701727"] = self.OnSubStart701727,
        ["701735"] = self.OnSubStart701735,
        ["701728"] = self.OnSubStart701728,
        ["701729"] = self.OnSubStart701729,
        ["701711"] = self.OnSubStart701711,
        ["701712"] = self.OnSubStart701712,
        ["701713"] = self.OnSubStart701713,
        ["701714"] = self.OnSubStart701714,
        ["701731"] = self.OnSubStart701731,
        ["701715"] = self.OnSubStart701715
    }
end

function Quest7017:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["701701"] = self.OnSubFinish701701,
        ["701732"] = self.OnSubFinish701732,
        ["701719"] = self.OnSubFinish701719,
        ["701733"] = self.OnSubFinish701733,
        ["701702"] = self.OnSubFinish701702,
        ["701703"] = self.OnSubFinish701703,
        ["701705"] = self.OnSubFinish701705,
        ["701734"] = self.OnSubFinish701734,
        ["701716"] = self.OnSubFinish701716,
        ["701704"] = self.OnSubFinish701704,
        ["701706"] = self.OnSubFinish701706,
        ["701707"] = self.OnSubFinish701707,
        ["701708"] = self.OnSubFinish701708,
        ["701709"] = self.OnSubFinish701709,
        ["701717"] = self.OnSubFinish701717,
        ["701718"] = self.OnSubFinish701718,
        ["701720"] = self.OnSubFinish701720,
        ["701721"] = self.OnSubFinish701721,
        ["701722"] = self.OnSubFinish701722,
        ["701724"] = self.OnSubFinish701724,
        ["701725"] = self.OnSubFinish701725,
        ["701736"] = self.OnSubFinish701736,
        ["701726"] = self.OnSubFinish701726,
        ["701710"] = self.OnSubFinish701710,
        ["701723"] = self.OnSubFinish701723,
        ["701730"] = self.OnSubFinish701730,
        ["701727"] = self.OnSubFinish701727,
        ["701735"] = self.OnSubFinish701735,
        ["701728"] = self.OnSubFinish701728,
        ["701729"] = self.OnSubFinish701729,
        ["701711"] = self.OnSubFinish701711,
        ["701712"] = self.OnSubFinish701712,
        ["701713"] = self.OnSubFinish701713,
        ["701714"] = self.OnSubFinish701714,
        ["701731"] = self.OnSubFinish701731,
        ["701715"] = self.OnSubFinish701715
    }
end

function Quest7017:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["701719"] = self.OnSubFailed701719,
        ["701702"] = self.OnSubFailed701702,
        ["701716"] = self.OnSubFailed701716,
        ["701704"] = self.OnSubFailed701704,
        ["701718"] = self.OnSubFailed701718,
        ["701720"] = self.OnSubFailed701720,
        ["701721"] = self.OnSubFailed701721,
        ["701722"] = self.OnSubFailed701722,
        ["701724"] = self.OnSubFailed701724,
        ["701725"] = self.OnSubFailed701725,
        ["701736"] = self.OnSubFailed701736,
        ["701726"] = self.OnSubFailed701726,
        ["701710"] = self.OnSubFailed701710,
        ["701723"] = self.OnSubFailed701723,
        ["701727"] = self.OnSubFailed701727,
        ["701735"] = self.OnSubFailed701735,
        ["701728"] = self.OnSubFailed701728,
        ["701729"] = self.OnSubFailed701729,
        ["701711"] = self.OnSubFailed701711,
        ["701712"] = self.OnSubFailed701712,
        ["701713"] = self.OnSubFailed701713,
        ["701714"] = self.OnSubFailed701714
    }
end

function Quest7017:Start()
    print("Start")
end

function Quest7017:OnDestroy()
    print("OnDestroy")
end

function Quest7017:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest7017:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest7017:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest7017:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q701702Trigger", 7017)
    this:ActorDestroy("Q701704Trigger", 7017)
    this:ActorDestroy("Q701721Trigger", 7017)
    this:ActorDestroy("Q701732Trigger", 7017)
    this:ActorDestroy("Q701734Trigger", 7017)
    this:ActorDestroy("Q701736Trigger", 7017)
end

function Quest7017:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 100 then
        datas.Trust_value = 50.0
        self:ShowQuestLikingBar(7017, 17017, datas.Trust_value, false, "TRUST_EXP_NAME")
    elseif arg1 == 101 then
        local trust_value = datas.Trust_value + 20.0
        datas.Trust_value = trust_value
        self:UpdateQuestLikingBar(datas.Trust_value, false, "TRUST_LEVEL_UP")
    elseif arg1 == 102 then
        local trust_value = datas.Trust_value - 20.0
        datas.Trust_value = trust_value
        self:UpdateQuestLikingBar(datas.Trust_value, false, "TRUST_LEVEL_DOWN")
    elseif arg1 == 103 then
        self:HideQuestLikingBar()
    elseif arg1 == 104 then
        if 100 <= datas.Trust_value then
            this:SetQuestVarByMainId(0, 1)
        else
            this:SetQuestVarByMainId(0, 2)
        end

        if this:GetQuestVar(701703, 0) == 2 then
            actorUtils.FinishQuestWithParam({true}, {701703})
        end
    elseif arg1 == 200 then
        this:SetQuestVarByMainId(2, 0)
    elseif arg1 == 201 then
        this:SetQuestVarByMainId(2, 1)
    elseif arg1 == 202 then
        this:SetQuestVarByMainId(2, 2)
    elseif arg1 == 300 then
        datas.ChangeMoustacheCount = 0
        this:SetQuestVarByMainId(3, 0)
    elseif arg1 == 301 then
        local changeMoustacheCount = datas.ChangeMoustacheCount + 1
        datas.ChangeMoustacheCount = changeMoustacheCount
        if datas.ChangeMoustacheCount == 10 then
            this:SetQuestVarByMainId(3, 1)
        else
            if 10 < datas.ChangeMoustacheCount then
                this:SetQuestVarByMainId(3, 2)
            end
        end
    elseif arg1 == 401 then
        this:SetQuestVarByMainId(4, 1)
    elseif arg1 == 400 then
        this:SetQuestVarByMainId(4, 0)
    elseif arg1 == 105 then
        self:ShowQuestLikingBar(7017, 17017, datas.Trust_value, false, "TRUST_EXP_NAME")
    elseif arg1 == 106 then
        local trust_value = datas.Trust_value + 10.0
        datas.Trust_value = trust_value
        self:UpdateQuestLikingBar(datas.Trust_value, false, "TRUST_LEVEL_UP")
    elseif arg1 == 107 then
        local trust_value = datas.Trust_value - 10.0
        datas.Trust_value = trust_value
        self:UpdateQuestLikingBar(datas.Trust_value, false, "TRUST_LEVEL_DOWN")
    elseif arg1 == 108 then
        this:SetQuestVarByMainId(5, 1)
    elseif arg1 == 109 then
        this:RecycleAllRes()
    end
end

function Quest7017:ActorDestroy(arg1, arg2)
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

function Quest7017:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest7017:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest7017:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest7017:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest7017:OnSubStart701701(arg1)
    print("OnSubStart701701")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc17009.id, 0, 701701, 10, true)
end

function Quest7017:OnSubFinish701701(arg1)
    print("OnSubFinish701701")
    this:NpcDestroyImmediately(1159, npcs.Npc17009.alias)
end

function Quest7017:OnSubStart701732(arg1)
    print("OnSubStart701732")
    actorMgr:CreateActorWithPos("Q701732Trigger", "Actor/Gadget/Q701732Trigger", 70900002, 0, points._Q701732TriggerPoint_.pos, points._Q701732TriggerPoint_.rot, true, false, 3, nil, 0, 7017)
end

function Quest7017:OnSubFinish701732(arg1)
    print("OnSubFinish701732")
end

function Quest7017:OnSubStart701719(arg1)
    print("OnSubStart701719")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc17009.id, 0, 701719, 40, true)
    this:DeployStoryByQuest(110701704)
end

function Quest7017:OnSubFinish701719(arg1)
    print("OnSubFinish701719")
    this:NpcDestroyImmediately(3, npcs.Npc17009.alias)
end

function Quest7017:OnSubFailed701719(arg1)
    print("OnSubFailed701719")
    this:RecycleAllRes()
end

function Quest7017:OnSubStart701733(arg1)
    print("OnSubStart701733")
end

function Quest7017:OnSubFinish701733(arg1)
    print("OnSubFinish701733")
end

function Quest7017:OnSubStart701702(arg1)
    print("OnSubStart701702")
    this:DisableMainPageByQuest(true, "DisableLeyLineChallengeBattle")
    this:CreateQuestNpc(arg1, npcs.Npc17544.id, 0, false, 0)
    this:DeployStoryByQuest(110701704)
    globalActor:SpawnAttachInFixedAreaEx("7017020", "AlyoshaDisguise_DGlasses001", 10000148, nil, nil, nil, {3}, true)
    local questVar = this:GetQuestVar(701702, 2)
    if questVar == 0 then
        globalActor:SpawnAttachInFixedAreaEx("7017021", "AlyoshaDisguise_DBeard002", 10000148, nil, nil, nil, {3}, true)
    elseif questVar == 1 then
        globalActor:SpawnAttachInFixedAreaEx("7017021", "AlyoshaDisguise_DBeard001", 10000148, nil, nil, nil, {3}, true)
    elseif questVar == 2 then
        globalActor:SpawnAttachInFixedAreaEx("7017021", "AlyoshaDisguise_DBeard003", 10000148, nil, nil, nil, {3}, true)
    else
        globalActor:SpawnAttachInFixedAreaEx("7017021", "AlyoshaDisguise_DBeard001", 10000148, nil, nil, nil, {3}, true)
    end
end

function Quest7017:OnSubFinish701702(arg1)
    print("OnSubFinish701702")
    this:NpcDestroyImmediately(3, npcs.Npc17544.alias)
    globalActor:UnSpawnAttachInFixedArea(7017020)
    globalActor:UnSpawnAttachInFixedArea(7017021)
end

function Quest7017:OnSubFailed701702(arg1)
    print("OnSubFailed701702")
    this:ShowBlackScreen(0, 1, 0.5, nil, nil, nil, "", false, true)
    this:RecycleAllRes()
    this:CancelStoryByQuest(110701704)
    globalActor:UnSpawnAttachInFixedArea(7017020)
    globalActor:UnSpawnAttachInFixedArea(7017021)
    this:DisableMainPageByQuest(false, "DisableLeyLineChallengeBattle")
end

function Quest7017:OnSubStart701703(arg1)
    print("OnSubStart701703")
    this:NpcCreateWithNpcTrigger(npcs.Npc17017.id, 0, 10, 701703)
    this:SetQuestVarByMainId(0, 0)
    this:SetQuestVarByMainId(5, 0)
    self:HideQuestLikingBar()
    this:CancelStoryByQuest(110701704)
end

function Quest7017:OnSubFinish701703(arg1)
    print("OnSubFinish701703")
    this:NpcDestroyImmediately(3, npcs.Npc17017.alias)
end

function Quest7017:OnSubStart701705(arg1)
    print("OnSubStart701705")
    this:NpcCreateWithNpcTriggerAndBlackscreen(701705, 0, 10, 0, npcs.Npc17017.id)
end

function Quest7017:OnSubFinish701705(arg1)
    print("OnSubFinish701705")
    this:NpcDestroyImmediately(3, npcs.Npc17017.alias)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest7017:OnSubStart701734(arg1)
    print("OnSubStart701734")
    this:CreateQuestNpc(arg1, npcs.Npc17017.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q701734Trigger", "Actor/Gadget/Q701734Trigger", 70900002, 0, points._Q701734TriggerPoint_.pos, points._Q701734TriggerPoint_.rot, true, false, 3, nil, 0, 7017)
    this:SetQuestVarByMainId(5, 0)
end

function Quest7017:OnSubFinish701734(arg1)
    print("OnSubFinish701734")
end

function Quest7017:OnSubStart701716(arg1)
    print("OnSubStart701716")
    this:AddIceCreatureHideSphereRegion(701716, 3, {x = 9317.451, y = 281.668, z = 6856.337}, 140)
    this:NpcCreateWithNpcTrigger(npcs.Npc17017.id, 0, 15, 701716)
    this:CallDelayByQuest("701716", 0.5, function(arg1)
        this:DeployStoryByQuest(110701700)
    end)

    globalActor:SpawnAttachInFixedAreaEx("7017020", "AlyoshaDisguise_DGlasses001", 10000148, nil, nil, nil, {3}, true)
    local questVar = this:GetQuestVar(701702, 2)
    if questVar == 0 then
        globalActor:SpawnAttachInFixedAreaEx("7017021", "AlyoshaDisguise_DBeard002", 10000148, nil, nil, nil, {3}, true)
    elseif questVar == 1 then
        globalActor:SpawnAttachInFixedAreaEx("7017021", "AlyoshaDisguise_DBeard001", 10000148, nil, nil, nil, {3}, true)
    elseif questVar == 2 then
        globalActor:SpawnAttachInFixedAreaEx("7017021", "AlyoshaDisguise_DBeard003", 10000148, nil, nil, nil, {3}, true)
    else
        globalActor:SpawnAttachInFixedAreaEx("7017021", "AlyoshaDisguise_DBeard001", 10000148, nil, nil, nil, {3}, true)
    end
end

function Quest7017:OnSubFinish701716(arg1)
    print("OnSubFinish701716")
    this:NpcDestroyImmediately(3, npcs.Npc17017.alias)
end

function Quest7017:OnSubFailed701716(arg1)
    print("OnSubFailed701716")
    this:UnCallDelayByQuest("701716")
    this:RecycleAllRes()
    this:ShowBlackScreenWithDialogText(0, 1, 0.5, nil, nil, nil, 0, false, true)
    this:RemoveAllIceCreatureHideRegion(701716)
    globalActor:UnSpawnAttachInFixedArea(7017020)
    globalActor:UnSpawnAttachInFixedArea(7017021)
end

function Quest7017:OnSubStart701704(arg1)
    print("OnSubStart701704")
    this:AddIceCreatureHideSphereRegion(701716, 3, {x = 9317.451, y = 281.668, z = 6856.337}, 140)
    globalActor:SpawnAttachInFixedAreaEx("7017020", "AlyoshaDisguise_DGlasses001", 10000148, nil, nil, nil, {3}, true)
    local questVar = this:GetQuestVar(701702, 2)
    if questVar == 0 then
        globalActor:SpawnAttachInFixedAreaEx("7017021", "AlyoshaDisguise_DBeard002", 10000148, nil, nil, nil, {3}, true)
    elseif questVar == 1 then
        globalActor:SpawnAttachInFixedAreaEx("7017021", "AlyoshaDisguise_DBeard001", 10000148, nil, nil, nil, {3}, true)
    elseif questVar == 2 then
        globalActor:SpawnAttachInFixedAreaEx("7017021", "AlyoshaDisguise_DBeard003", 10000148, nil, nil, nil, {3}, true)
    else
        globalActor:SpawnAttachInFixedAreaEx("7017021", "AlyoshaDisguise_DBeard001", 10000148, nil, nil, nil, {3}, true)
    end
end

function Quest7017:OnSubFinish701704(arg1)
    print("OnSubFinish701704")
    this:TransmitPlayerById(arg1, 2, nil, nil, nil)
    this:CancelStoryByQuest(110701700)
    globalActor:UnSpawnAttachInFixedArea(7017020)
    globalActor:UnSpawnAttachInFixedArea(7017021)
    this:DisableMainPageByQuest(false, "DisableLeyLineChallengeBattle")
    this:RemoveAllIceCreatureHideRegion(701716)
end

function Quest7017:OnSubFailed701704(arg1)
    print("OnSubFailed701704")
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
    this:DisableMainPageByQuest(false, "DisableLeyLineChallengeBattle")
    globalActor:UnSpawnAttachInFixedArea(7017020)
    globalActor:UnSpawnAttachInFixedArea(7017021)
    this:CancelStoryByQuest(110701700)
end

function Quest7017:OnSubStart701706(arg1)
    print("OnSubStart701706")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc17017.id, 0, 701706, 10, true)
end

function Quest7017:OnSubFinish701706(arg1)
    print("OnSubFinish701706")
    this:NpcDestroyImmediately(1159, npcs.Npc17017.alias)
end

function Quest7017:OnSubStart701707(arg1)
    print("OnSubStart701707")
    this:NpcCreateWithNpcTrigger(npcs.Npc1339.id, 0, 20, 701707)
    this:CreateQuestNpc(arg1, npcs.Npc1332.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1332.alias, 7017):DoFreeStyle(1220, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc1332.alias, 7017):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1331.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1331.alias, 7017):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1331.alias, 7017):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc1335.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1335.alias, 7017):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1335.alias, 7017):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc17017.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc17017.alias, 7017):DoFreeStyle(1070, true, nil, true, true, false, true)
end

function Quest7017:OnSubFinish701707(arg1)
    print("OnSubFinish701707")
    this:NpcDestroyImmediately(1162, npcs.Npc1339.alias)
    this:NpcDestroyImmediately(1159, npcs.Npc1332.alias)
    this:NpcDestroyImmediately(1159, npcs.Npc1331.alias)
    this:NpcDestroyImmediately(1159, npcs.Npc1335.alias)
    this:NpcDestroyImmediately(1159, npcs.Npc17017.alias)
    this:TransmitPlayerById(arg1, 1, nil, nil, nil)
end

function Quest7017:OnSubStart701708(arg1)
    print("OnSubStart701708")
end

function Quest7017:OnSubFinish701708(arg1)
    print("OnSubFinish701708")
end

function Quest7017:OnSubStart701709(arg1)
    print("OnSubStart701709")
    this:CreateQuestNpc(arg1, npcs.Npc17332.id, 0, false, 0)
    this:NotifyTo(npcs.Npc3568.alias, 1, true)
end

function Quest7017:OnSubFinish701709(arg1)
    print("OnSubFinish701709")
    this:NpcDestroyImmediately(1163, npcs.Npc17332.alias)
    this:LightNotifyTo(npcs.Npc3568.alias, 0, true)
    this:PlayerEnterDungeonByData({entrySceneId = 1163, pointId = 3, dungeonId = 1341, questId = 701709, questPointCfgId = 1}, datas.__EmbedClientConfig_12, nil, nil)
end

function Quest7017:OnSubStart701717(arg1)
    print("OnSubStart701717")
end

function Quest7017:OnSubFinish701717(arg1)
    print("OnSubFinish701717")
end

function Quest7017:OnSubStart701718(arg1)
    print("OnSubStart701718")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc17009.id, 0, 701718, 50, true)
    this:DeployStoryByQuest(110701705)
end

function Quest7017:OnSubFinish701718(arg1)
    print("OnSubFinish701718")
    this:NpcDestroyImmediately(20373, npcs.Npc17009.alias)
end

function Quest7017:OnSubFailed701718(arg1)
    print("OnSubFailed701718")
    this:RecycleAllRes()
end

function Quest7017:OnSubStart701720(arg1)
    print("OnSubStart701720")
    this:NpcCreateWithNpcTrigger(npcs.Npc17009.id, 0, 30, 701720)
    this:DeployStoryByQuest(110701705)
end

function Quest7017:OnSubFinish701720(arg1)
    print("OnSubFinish701720")
    this:NpcDestroyImmediately(20373, npcs.Npc17009.alias)
end

function Quest7017:OnSubFailed701720(arg1)
    print("OnSubFailed701720")
    this:RecycleAllRes()
end

function Quest7017:OnSubStart701721(arg1)
    print("OnSubStart701721")
    this:DeployStoryByQuest(110701702)
    this:DeployStoryByQuest(110701705)
end

function Quest7017:OnSubFinish701721(arg1)
    print("OnSubFinish701721")
    this:CancelStoryByQuest(110701705)
end

function Quest7017:OnSubFailed701721(arg1)
    print("OnSubFailed701721")
    this:RecycleAllRes()
end

function Quest7017:OnSubStart701722(arg1)
    print("OnSubStart701722")
    this:NpcCreateWithNpcTrigger(npcs.Npc17009.id, 0, 10, 701722)
    this:DeployStoryByQuest(110701702)
end

function Quest7017:OnSubFinish701722(arg1)
    print("OnSubFinish701722")
    this:NpcDestroyImmediately(20373, npcs.Npc17009.alias)
    this:CancelStoryByQuest(110701702)
end

function Quest7017:OnSubFailed701722(arg1)
    print("OnSubFailed701722")
    this:RecycleAllRes()
end

function Quest7017:OnSubStart701724(arg1)
    print("OnSubStart701724")
    this:DeployStoryByQuest(110701703)
end

function Quest7017:OnSubFinish701724(arg1)
    print("OnSubFinish701724")
    this:CancelStoryByQuest(110701703)
end

function Quest7017:OnSubFailed701724(arg1)
    print("OnSubFailed701724")
    this:RecycleAllRes()
end

function Quest7017:OnSubStart701725(arg1)
    print("OnSubStart701725")
    this:NpcCreateWithNpcTrigger(npcs.Npc17009.id, 0, 20, 701725)
end

function Quest7017:OnSubFinish701725(arg1)
    print("OnSubFinish701725")
    this:NpcDestroyImmediately(20373, npcs.Npc17009.alias)
end

function Quest7017:OnSubFailed701725(arg1)
    print("OnSubFailed701725")
    this:RecycleAllRes()
end

function Quest7017:OnSubStart701736(arg1)
    print("OnSubStart701736")
    actorMgr:CreateActorWithPos("Q701736Trigger", "Actor/Gadget/Q701736Trigger", 70900002, 0, points._Q701736TriggerPoint_.pos, points._Q701736TriggerPoint_.rot, true, false, 20373, nil, 0, 7017)
    this:DeployStoryByQuest(110701706)
end

function Quest7017:OnSubFinish701736(arg1)
    print("OnSubFinish701736")
    this:CancelStoryByQuest(110701706)
end

function Quest7017:OnSubFailed701736(arg1)
    print("OnSubFailed701736")
    this:RecycleAllRes()
end

function Quest7017:OnSubStart701726(arg1)
    print("OnSubStart701726")
    this:NpcCreateWithNpcTrigger(npcs.Npc17009.id, 0, 50, 701726)
end

function Quest7017:OnSubFinish701726(arg1)
    print("OnSubFinish701726")
    this:NpcDestroyImmediately(20373, npcs.Npc17009.alias)
end

function Quest7017:OnSubFailed701726(arg1)
    print("OnSubFailed701726")
    this:RecycleAllRes()
end

function Quest7017:OnSubStart701710(arg1)
    print("OnSubStart701710")
    this:NpcCreateWithNpcTrigger(npcs.Npc17009.id, 0, 5, 701710)
    this:DeployStoryByQuest(110701701)
end

function Quest7017:OnSubFinish701710(arg1)
    print("OnSubFinish701710")
    this:NpcDestroyImmediately(20373, npcs.Npc17009.alias)
end

function Quest7017:OnSubFailed701710(arg1)
    print("OnSubFailed701710")
    this:RecycleAllRes()
end

function Quest7017:OnSubStart701723(arg1)
    print("OnSubStart701723")
end

function Quest7017:OnSubFinish701723(arg1)
    print("OnSubFinish701723")
end

function Quest7017:OnSubFailed701723(arg1)
    print("OnSubFailed701723")
    this:RecycleAllRes()
end

function Quest7017:OnSubStart701730(arg1)
    print("OnSubStart701730")
end

function Quest7017:OnSubFinish701730(arg1)
    print("OnSubFinish701730")
end

function Quest7017:OnSubStart701727(arg1)
    print("OnSubStart701727")
    this:DeployStoryByQuest(110701701)
end

function Quest7017:OnSubFinish701727(arg1)
    print("OnSubFinish701727")
end

function Quest7017:OnSubFailed701727(arg1)
    print("OnSubFailed701727")
    this:RecycleAllRes()
end

function Quest7017:OnSubStart701735(arg1)
    print("OnSubStart701735")
    this:DeployStoryByQuest(110701701)
end

function Quest7017:OnSubFinish701735(arg1)
    print("OnSubFinish701735")
end

function Quest7017:OnSubFailed701735(arg1)
    print("OnSubFailed701735")
    this:RecycleAllRes()
end

function Quest7017:OnSubStart701728(arg1)
    print("OnSubStart701728")
    this:NpcCreateWithNpcTrigger(npcs.Npc17009.id, 0, 50, 701728)
    this:DeployStoryByQuest(110701701)
end

function Quest7017:OnSubFinish701728(arg1)
    print("OnSubFinish701728")
    this:NpcDestroyImmediately(20373, npcs.Npc17009.alias)
    this:CancelStoryByQuest(110701701)
end

function Quest7017:OnSubFailed701728(arg1)
    print("OnSubFailed701728")
    this:RecycleAllRes()
end

function Quest7017:OnSubStart701729(arg1)
    print("OnSubStart701729")
    this:CancelStoryByQuest(110701701)
end

function Quest7017:OnSubFinish701729(arg1)
    print("OnSubFinish701729")
end

function Quest7017:OnSubFailed701729(arg1)
    print("OnSubFailed701729")
    this:RecycleAllRes()
end

function Quest7017:OnSubStart701711(arg1)
    print("OnSubStart701711")
    this:NpcCreateWithNpcTrigger(npcs.Npc17009.id, 0, 16, 701711)
    this:CreateQuestNpc(arg1, npcs.Npc16569.id, 0, false, 0)
end

function Quest7017:OnSubFinish701711(arg1)
    print("OnSubFinish701711")
    this:NpcDestroyImmediately(20373, npcs.Npc17009.alias)
    this:NpcDestroyImmediately(20373, npcs.Npc16569.alias)
end

function Quest7017:OnSubFailed701711(arg1)
    print("OnSubFailed701711")
    this:RecycleAllRes()
end

function Quest7017:OnSubStart701712(arg1)
    print("OnSubStart701712")
    this:NpcCreateWithNpcTrigger(npcs.Npc16569.id, 0, 20, 701712)
    this:CreateQuestNpc(arg1, npcs.Npc17129.id, 0, false, 0)
end

function Quest7017:OnSubFinish701712(arg1)
    print("OnSubFinish701712")
    this:NpcDestroyImmediately(20373, npcs.Npc16569.alias)
    this:NpcDestroyImmediately(20373, npcs.Npc17129.alias)
end

function Quest7017:OnSubFailed701712(arg1)
    print("OnSubFailed701712")
    this:RecycleAllRes()
end

function Quest7017:OnSubStart701713(arg1)
    print("OnSubStart701713")
end

function Quest7017:OnSubFinish701713(arg1)
    print("OnSubFinish701713")
end

function Quest7017:OnSubFailed701713(arg1)
    print("OnSubFailed701713")
    this:RecycleAllRes()
end

function Quest7017:OnSubStart701714(arg1)
    print("OnSubStart701714")
    this:NpcCreateWithNpcTrigger(npcs.Npc17009.id, 0, 60, 701714)
end

function Quest7017:OnSubFinish701714(arg1)
    print("OnSubFinish701714")
    this:NpcDestroyImmediately(20373, npcs.Npc17009.alias)
end

function Quest7017:OnSubFailed701714(arg1)
    print("OnSubFailed701714")
    this:RecycleAllRes()
end

function Quest7017:OnSubStart701731(arg1)
    print("OnSubStart701731")
end

function Quest7017:OnSubFinish701731(arg1)
    print("OnSubFinish701731")
    this:ShowBlackScreenWithDialogText(0, 3, 0, nil, nil, nil, 0, false, true)
    this:TransmitPlayerById(arg1, 1, function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_701707, nil)
    end, nil, nil)
end

function Quest7017:OnSubStart701715(arg1)
    print("OnSubStart701715")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc17009.id, 0, 701715, 50, true)
end

function Quest7017:OnSubFinish701715(arg1)
    print("OnSubFinish701715")
    this:NpcDestroyImmediately(1158, npcs.Npc17009.alias)
end

return Quest7017

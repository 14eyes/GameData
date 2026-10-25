require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5011 = class("Quest5011", QuestActorProxy)
Quest5011.defaultAlias = "Quest5011"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest5011:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest5011:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["501128"] = self.OnSubStart501128,
        ["501101"] = self.OnSubStart501101,
        ["501138"] = self.OnSubStart501138,
        ["501129"] = self.OnSubStart501129,
        ["501102"] = self.OnSubStart501102,
        ["501132"] = self.OnSubStart501132,
        ["501103"] = self.OnSubStart501103,
        ["501104"] = self.OnSubStart501104,
        ["501139"] = self.OnSubStart501139,
        ["501105"] = self.OnSubStart501105,
        ["501107"] = self.OnSubStart501107,
        ["501116"] = self.OnSubStart501116,
        ["501117"] = self.OnSubStart501117,
        ["501118"] = self.OnSubStart501118,
        ["501136"] = self.OnSubStart501136,
        ["501140"] = self.OnSubStart501140,
        ["501115"] = self.OnSubStart501115,
        ["501111"] = self.OnSubStart501111,
        ["501119"] = self.OnSubStart501119,
        ["501120"] = self.OnSubStart501120,
        ["501123"] = self.OnSubStart501123,
        ["501134"] = self.OnSubStart501134,
        ["501141"] = self.OnSubStart501141,
        ["501135"] = self.OnSubStart501135,
        ["501108"] = self.OnSubStart501108,
        ["501109"] = self.OnSubStart501109,
        ["501110"] = self.OnSubStart501110,
        ["501106"] = self.OnSubStart501106,
        ["501142"] = self.OnSubStart501142,
        ["501137"] = self.OnSubStart501137,
        ["501112"] = self.OnSubStart501112,
        ["501113"] = self.OnSubStart501113,
        ["501114"] = self.OnSubStart501114,
        ["501143"] = self.OnSubStart501143,
        ["501124"] = self.OnSubStart501124,
        ["501125"] = self.OnSubStart501125,
        ["501126"] = self.OnSubStart501126,
        ["501127"] = self.OnSubStart501127,
        ["501121"] = self.OnSubStart501121,
        ["501122"] = self.OnSubStart501122,
        ["501144"] = self.OnSubStart501144,
        ["501130"] = self.OnSubStart501130,
        ["501133"] = self.OnSubStart501133,
        ["501131"] = self.OnSubStart501131
    }
end

function Quest5011:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["501128"] = self.OnSubFinish501128,
        ["501101"] = self.OnSubFinish501101,
        ["501138"] = self.OnSubFinish501138,
        ["501129"] = self.OnSubFinish501129,
        ["501102"] = self.OnSubFinish501102,
        ["501132"] = self.OnSubFinish501132,
        ["501103"] = self.OnSubFinish501103,
        ["501104"] = self.OnSubFinish501104,
        ["501139"] = self.OnSubFinish501139,
        ["501105"] = self.OnSubFinish501105,
        ["501107"] = self.OnSubFinish501107,
        ["501116"] = self.OnSubFinish501116,
        ["501117"] = self.OnSubFinish501117,
        ["501118"] = self.OnSubFinish501118,
        ["501136"] = self.OnSubFinish501136,
        ["501140"] = self.OnSubFinish501140,
        ["501115"] = self.OnSubFinish501115,
        ["501111"] = self.OnSubFinish501111,
        ["501119"] = self.OnSubFinish501119,
        ["501120"] = self.OnSubFinish501120,
        ["501123"] = self.OnSubFinish501123,
        ["501134"] = self.OnSubFinish501134,
        ["501141"] = self.OnSubFinish501141,
        ["501135"] = self.OnSubFinish501135,
        ["501108"] = self.OnSubFinish501108,
        ["501109"] = self.OnSubFinish501109,
        ["501110"] = self.OnSubFinish501110,
        ["501106"] = self.OnSubFinish501106,
        ["501142"] = self.OnSubFinish501142,
        ["501137"] = self.OnSubFinish501137,
        ["501112"] = self.OnSubFinish501112,
        ["501113"] = self.OnSubFinish501113,
        ["501114"] = self.OnSubFinish501114,
        ["501143"] = self.OnSubFinish501143,
        ["501124"] = self.OnSubFinish501124,
        ["501125"] = self.OnSubFinish501125,
        ["501126"] = self.OnSubFinish501126,
        ["501127"] = self.OnSubFinish501127,
        ["501121"] = self.OnSubFinish501121,
        ["501122"] = self.OnSubFinish501122,
        ["501144"] = self.OnSubFinish501144,
        ["501130"] = self.OnSubFinish501130,
        ["501133"] = self.OnSubFinish501133,
        ["501131"] = self.OnSubFinish501131
    }
end

function Quest5011:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest5011:Start()
    print("Start")
end

function Quest5011:OnDestroy()
    print("OnDestroy")
end

function Quest5011:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest5011:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest5011:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest5011:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        this:ActionSafeCall(function(arg1)
            actorUtils.FinishQuestID(false, 501121)
        end)
    elseif arg1 == 1 then
        actorUtils.FinishQuestID(false, 501133)
    end
end

function Quest5011:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest5011:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest5011:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelay(2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest5011:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest5011:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest5011:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest5011:OnSubStart501128(arg1)
    print("OnSubStart501128")
end

function Quest5011:OnSubFinish501128(arg1)
    print("OnSubFinish501128")
end

function Quest5011:OnSubStart501101(arg1)
    print("OnSubStart501101")
    this:NpcCreateWithNpcTrigger(npcs.Npc1089.id, 0, 8, 501101)
    this:GetQuestNpcActor(npcs.Npc1089.alias, 5011):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc14508.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14508.alias, 5011):DoFreeStyle(1172, true, nil, true, true, false, true)
    actorMgr:CreateActorWithPos("Q501101Trigger", "Actor/Gadget/Q501101Trigger", 70900002, 0, points._Q501101TriggerPoint_.pos, points._Q501101TriggerPoint_.rot, true, false, 20238)
end

function Quest5011:OnSubFinish501101(arg1)
    print("OnSubFinish501101")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14508.alias, 20238)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("InLevelMapAbyssWarPageContext", 0)
    end)

    this:ActorDestroy("Q501101Trigger")
end

function Quest5011:OnSubStart501138(arg1)
    print("OnSubStart501138")
end

function Quest5011:OnSubFinish501138(arg1)
    print("OnSubFinish501138")
end

function Quest5011:OnSubStart501129(arg1)
    print("OnSubStart501129")
end

function Quest5011:OnSubFinish501129(arg1)
    print("OnSubFinish501129")
end

function Quest5011:OnSubStart501102(arg1)
    print("OnSubStart501102")
    this:ClearNarratorTask()
    this:CancelStoryByQuest(110501105)
end

function Quest5011:OnSubFinish501102(arg1)
    print("OnSubFinish501102")
    this:QuestNarratorTask(datas.NarratorWithId_501114, function(arg1)
        actorUtils.ShowContext("AbyssWarErosionHud", 1)
        this:CallDelayByQuest("delayClosePage", 2, function(arg1)
            actorUtils.ShowContext("AbyssWarErosionHud", 0)
        end)
    end)
end

function Quest5011:OnSubStart501132(arg1)
    print("OnSubStart501132")
    this:CreateQuestNpc(arg1, npcs.Npc14385.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14385.alias, 5011):DoFreeStyle(4050, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14386.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14386.alias, 5011):DoFreeStyle(1284, true, nil, true, true, false, true)
    this:DeployStoryByQuest(110501105)
    this:GetQuestNpcActor(npcs.Npc14385.alias, 5011):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14386.alias, 5011):DisableInteeHeadCtrl(true)
end

function Quest5011:OnSubFinish501132(arg1)
    print("OnSubFinish501132")
    this:CancelStoryByQuest(110501105)
    this:QuestNarratorTask(datas.NarratorWithId_501101, nil)
end

function Quest5011:OnSubStart501103(arg1)
    print("OnSubStart501103")
    this:GetQuestNpcActor(npcs.Npc14385.alias, 5011):DoFreeStyle(4050, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14386.alias, 5011):DoFreeStyle(1284, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14385.alias, 5011):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14386.alias, 5011):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q501102NarratorTrigger2", "Actor/Gadget/Q501102NarratorTrigger2", 70900002, 0, points._Q501102NarratorTrigger2Point_.pos, points._Q501102NarratorTrigger2Point_.rot, true, false, 20238)
end

function Quest5011:OnSubFinish501103(arg1)
    print("OnSubFinish501103")
    this:SafeDestroyQuestNpc(npcs.Npc14385.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14386.alias, 20238)
    this:ClearNarratorTask()
end

function Quest5011:OnSubStart501104(arg1)
    print("OnSubStart501104")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(501104, 0, 50, 1, npcs.Npc14384.id)
    this:CreateLocalGadget(73010007, "0", {x = -1725.75, y = 143.8, z = 8650.96}, {x = 0, y = -5.274, z = 0}, 20238, nil, nil, false, 0, true)
end

function Quest5011:OnSubFinish501104(arg1)
    print("OnSubFinish501104")
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("AbyssWarBattleReportDialogContext", 1)
    end)

    this:ClearNarratorTask()
end

function Quest5011:OnSubStart501139(arg1)
    print("OnSubStart501139")
end

function Quest5011:OnSubFinish501139(arg1)
    print("OnSubFinish501139")
end

function Quest5011:OnSubStart501105(arg1)
    print("OnSubStart501105")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14384.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14385.id, arg1)
    this:GetQuestNpcActor(npcs.Npc14385.alias, 5011):DoFreeStyle(1280, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14386.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14387.id, arg1)
    this:ActionSafeCall(nil)
    this:DeployStoryByQuest(110501100)
    this:CreateLocalGadget(73010007, "0", {x = -1725.75, y = 143.8, z = 8650.96}, {x = 0, y = -5.274, z = 0}, 20238, nil, nil, false, 0, true)
end

function Quest5011:OnSubFinish501105(arg1)
    print("OnSubFinish501105")
    this:SafeDestroyQuestNpc(npcs.Npc14384.alias, 20238)
    this:CancelStoryByQuest(110501100)
    this:RemoveLocalGadget(73010007, "0")
end

function Quest5011:OnSubStart501107(arg1)
    print("OnSubStart501107")
    if sceneData.currSceneID == 20238 then
        this:AfterMainPageActiveSafeCall(function(arg1_2)
            this:LevelLoadFinishSafeCall(function(arg1_2)
                this:TransmitPlayerByData(arg1, 1, datas.TransmitData, nil, nil, nil)
            end)
        end)
    end

    this:DeployStoryByQuest(110501117)
    this:DeployStoryByQuest(110501116)
    this:CancelStoryByQuest(110501103)
end

function Quest5011:OnSubFinish501107(arg1)
    print("OnSubFinish501107")
    this:SafeDestroyQuestNpc(npcs.Npc14384.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14385.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14386.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14387.alias, 20238)
end

function Quest5011:OnSubStart501116(arg1)
    print("OnSubStart501116")
    this:DeployStoryByQuest(110501103)
    this:DeployStoryByQuest(110501117)
    this:DeployStoryByQuest(110501116)
end

function Quest5011:OnSubFinish501116(arg1)
    print("OnSubFinish501116")
    this:CancelStoryByQuest(110501103)
    this:CancelStoryByQuest(110501116)
end

function Quest5011:OnSubStart501117(arg1)
    print("OnSubStart501117")
    this:DeployStoryByQuest(110501117)
    actorMgr:CreateActorWithPos("Q501116Trigger", "Actor/Gadget/Q501116Trigger", 70900002, 0, points._Q501116TriggerPoint_.pos, points._Q501116TriggerPoint_.rot, true, false, 20238)
end

function Quest5011:OnSubFinish501117(arg1)
    print("OnSubFinish501117")
    this:ActorDestroy("Q501116Trigger")
    this:ClearNarratorTask()
    this:UnCallDelayByQuest("501116")
end

function Quest5011:OnSubStart501118(arg1)
    print("OnSubStart501118")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(501118, 0, 60, 1, npcs.Npc14388.id)
    this:CreateQuestNpc(arg1, npcs.Npc14389.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14391.id, 0, false, 0)
    this:DeployStoryByQuest(110501117)
end

function Quest5011:OnSubFinish501118(arg1)
    print("OnSubFinish501118")
end

function Quest5011:OnSubStart501136(arg1)
    print("OnSubStart501136")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14388.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14389.id, arg1)
    this:GetQuestNpcActor(npcs.Npc14389.alias, 5011):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14583.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc14583.alias, 5011):DoFreeStyle(1282, true, nil, true, true, false, true)
    end)

    this:CreateQuestNpc(arg1, npcs.Npc14391.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14579.id, 0, false, 0)
    this:DeployStoryByQuest(110501117)
    this:GetQuestNpcActor(npcs.Npc14388.alias, 5011):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14389.alias, 5011):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(110501101)
    this:CreateLocalGadget(70710470, "0", {x = -2078.97, y = 142.21, z = 8588.578}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
end

function Quest5011:OnSubFinish501136(arg1)
    print("OnSubFinish501136")
    this:NpcDestroyWithBlackscreen(20238, npcs.Npc14391.alias)
    this:CancelStoryByQuest(110501101)
    if this:GetSubQuestState(502105) == 3 then
        this:ActionSafeCall(function(arg1)
            actorUtils.ShowContext("AbyssWarTaskCompleteDialogContext", 0)
        end)
    end
end

function Quest5011:OnSubStart501140(arg1)
    print("OnSubStart501140")
    this:GetQuestNpcActor(npcs.Npc14583.alias, 5011):DoFreeStyle(1282, true, nil, true, true, false, false)
    this:DeployStoryByQuest(110501117)
    this:GetQuestNpcActor(npcs.Npc14388.alias, 5011):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14389.alias, 5011):DisableInteeHeadCtrl(true)
end

function Quest5011:OnSubFinish501140(arg1)
    print("OnSubFinish501140")
end

function Quest5011:OnSubStart501115(arg1)
    print("OnSubStart501115")
    this:GetQuestNpcActor(npcs.Npc14389.alias, 5011):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14583.alias, 5011):DoFreeStyle(1282, true, nil, true, true, false, false)
    this:DeployStoryByQuest(110501117)
    this:GetQuestNpcActor(npcs.Npc14388.alias, 5011):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14389.alias, 5011):DisableInteeHeadCtrl(true)
    this:CreateLocalGadget(70710470, "0", {x = -2078.97, y = 142.21, z = 8588.578}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
end

function Quest5011:OnSubFinish501115(arg1)
    print("OnSubFinish501115")
    this:SafeDestroyQuestNpc(npcs.Npc14388.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14389.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14390.alias, 20238)
end

function Quest5011:OnSubStart501111(arg1)
    print("OnSubStart501111")
    if sceneData.currSceneID == 20238 then
        this:AfterMainPageActiveSafeCall(function(arg1_2)
            this:LevelLoadFinishSafeCall(function(arg1_2)
                this:TransmitPlayerByData(arg1, 1, datas.TransmitData, nil, nil, nil)
            end)
        end)
    end

    this:CancelStoryByQuest(110501106)
end

function Quest5011:OnSubFinish501111(arg1)
    print("OnSubFinish501111")
    this:SafeDestroyQuestNpc(npcs.Npc14384.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14385.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14386.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14387.alias, 20238)
end

function Quest5011:OnSubStart501119(arg1)
    print("OnSubStart501119")
    this:DeployStoryByQuest(110501106)
end

function Quest5011:OnSubFinish501119(arg1)
    print("OnSubFinish501119")
    this:CancelStoryByQuest(110501106)
    this:QuestNarratorTask(datas.NarratorWithId_501109, nil)
end

function Quest5011:OnSubStart501120(arg1)
    print("OnSubStart501120")
end

function Quest5011:OnSubFinish501120(arg1)
    print("OnSubFinish501120")
end

function Quest5011:OnSubStart501123(arg1)
    print("OnSubStart501123")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501123, 0, 50, 1, npcs.Npc14404.id)
    this:CreateLocalGadget(73010007, "0", {x = -1734.915, y = 53.278, z = 8208.214}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
end

function Quest5011:OnSubFinish501123(arg1)
    print("OnSubFinish501123")
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("AbyssWarErosionHud", 1)
        this:CallDelayByQuest("501123", 2, function(arg1)
            actorUtils.ShowContext("AbyssWarErosionHud", 0)
        end)
    end)
end

function Quest5011:OnSubStart501134(arg1)
    print("OnSubStart501134")
    this:CreateLocalGadget(73010007, "0", {x = -1734.915, y = 53.278, z = 8208.214}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
end

function Quest5011:OnSubFinish501134(arg1)
    print("OnSubFinish501134")
end

function Quest5011:OnSubStart501141(arg1)
    print("OnSubStart501141")
    this:CreateLocalGadget(73010007, "0", {x = -1734.915, y = 53.278, z = 8208.214}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
end

function Quest5011:OnSubFinish501141(arg1)
    print("OnSubFinish501141")
end

function Quest5011:OnSubStart501135(arg1)
    print("OnSubStart501135")
    this:CreateLocalGadget(73010007, "0", {x = -1734.915, y = 53.278, z = 8208.214}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
end

function Quest5011:OnSubFinish501135(arg1)
    print("OnSubFinish501135")
end

function Quest5011:OnSubStart501108(arg1)
    print("OnSubStart501108")
    this:GetQuestNpcActor(npcs.Npc14583.alias, 5011):DoFreeStyle(1282, true, nil, true, true, false, false)
    this:DeployStoryByQuest(110501117)
    this:CreateLocalGadget(73010007, "0", {x = -1734.915, y = 53.278, z = 8208.214}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
end

function Quest5011:OnSubFinish501108(arg1)
    print("OnSubFinish501108")
    this:SafeDestroyQuestNpc(npcs.Npc14388.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14389.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14390.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14579.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14583.alias, 20238)
    actorMgr:GetActor("5011"):QuestNarratorTask(datas.NarratorWithId_501105, nil)
    this:RemoveLocalGadget(73010007, "0")
    this:CancelStoryByQuest(110501117)
    this:RemoveLocalGadget(70710470, "0")
end

function Quest5011:OnSubStart501109(arg1)
    print("OnSubStart501109")
    this:DeployStoryByQuest(110501109)
    this:CreateLocalGadget(73010007, "0", {x = -1573.577, y = 68.91, z = 8097.566}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
end

function Quest5011:OnSubFinish501109(arg1)
    print("OnSubFinish501109")
    this:CancelStoryByQuest(110501109)
end

function Quest5011:OnSubStart501110(arg1)
    print("OnSubStart501110")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501110, 0, 50, 1, npcs.Npc14398.id)
    this:CreateLocalGadget(73010007, "0", {x = -1573.577, y = 68.91, z = 8097.566}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
end

function Quest5011:OnSubFinish501110(arg1)
    print("OnSubFinish501110")
    this:SafeDestroyQuestNpc(npcs.Npc14398.alias, 20238)
end

function Quest5011:OnSubStart501106(arg1)
    print("OnSubStart501106")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14402.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14400.id, arg1)
    this:DeployStoryByQuest(110501112)
    this:CreateLocalGadget(73010007, "0", {x = -1573.577, y = 68.91, z = 8097.566}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
end

function Quest5011:OnSubFinish501106(arg1)
    print("OnSubFinish501106")
    this:NpcDestroyWithBlackscreen(20238, npcs.Npc14402.alias)
    if this:GetSubQuestState(502110) == 3 then
        this:ActionSafeCall(function(arg1)
            actorUtils.ShowContext("AbyssWarTaskCompleteDialogContext", 0)
        end)
    end
end

function Quest5011:OnSubStart501142(arg1)
    print("OnSubStart501142")
    this:DeployStoryByQuest(110501112)
end

function Quest5011:OnSubFinish501142(arg1)
    print("OnSubFinish501142")
end

function Quest5011:OnSubStart501137(arg1)
    print("OnSubStart501137")
    this:DeployStoryByQuest(110501112)
    this:CreateLocalGadget(73010007, "0", {x = -1573.577, y = 68.91, z = 8097.566}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
end

function Quest5011:OnSubFinish501137(arg1)
    print("OnSubFinish501137")
end

function Quest5011:OnSubStart501112(arg1)
    print("OnSubStart501112")
    this:GetQuestNpcActor(npcs.Npc14583.alias, 5011):DoFreeStyle(1282, true, nil, true, true, false, false)
    this:DeployStoryByQuest(110501111)
    this:DeployStoryByQuest(110501117)
    this:CreateLocalGadget(73010007, "0", {x = -1734.915, y = 53.278, z = 8208.214}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
end

function Quest5011:OnSubFinish501112(arg1)
    print("OnSubFinish501112")
    this:SafeDestroyQuestNpc(npcs.Npc14388.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14389.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14390.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14579.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14583.alias, 20238)
    this:RemoveLocalGadget(73010007, "0")
    this:CancelStoryByQuest(110501117)
    this:RemoveLocalGadget(70710470, "0")
end

function Quest5011:OnSubStart501113(arg1)
    print("OnSubStart501113")
    this:DeployStoryByQuest(110501111)
end

function Quest5011:OnSubFinish501113(arg1)
    print("OnSubFinish501113")
    this:CancelStoryByQuest(110501111)
end

function Quest5011:OnSubStart501114(arg1)
    print("OnSubStart501114")
    this:CreateQuestNpc(arg1, npcs.Npc14392.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q501114Trigger", "Actor/Gadget/Q501114Trigger", 70900002, 0, points._Q501114TriggerPoint_.pos, points._Q501114TriggerPoint_.rot, true, false, 20238)
end

function Quest5011:OnSubFinish501114(arg1)
    print("OnSubFinish501114")
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("AbyssWarErosionHud", 1)
        this:CallDelayByQuest("501114", 2, function(arg1)
            actorUtils.ShowContext("AbyssWarErosionHud", 0)
        end)
    end)
end

function Quest5011:OnSubStart501143(arg1)
    print("OnSubStart501143")
end

function Quest5011:OnSubFinish501143(arg1)
    print("OnSubFinish501143")
end

function Quest5011:OnSubStart501124(arg1)
    print("OnSubStart501124")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14395.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14392.id, arg1)
    this:GetQuestNpcActor(npcs.Npc14392.alias, 5011):DoFreeStyle(1240, true, nil, true, true, false, true)
    this:DeployStoryByQuest(110501104)
    this:GetQuestNpcActor(npcs.Npc14392.alias, 5011):DisableInteeHeadCtrl(true)
end

function Quest5011:OnSubFinish501124(arg1)
    print("OnSubFinish501124")
    this:SafeDestroyQuestNpc(npcs.Npc14395.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14392.alias, 20238)
    this:CancelStoryByQuest(110501104)
    this:GetQuestNpcActor(npcs.Npc14392.alias, 5011):DisableInteeHeadCtrl(false)
end

function Quest5011:OnSubStart501125(arg1)
    print("OnSubStart501125")
    this:DeployStoryByQuest(110501112)
    this:CreateLocalGadget(73010007, "0", {x = -1573.577, y = 68.91, z = 8097.566}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
end

function Quest5011:OnSubFinish501125(arg1)
    print("OnSubFinish501125")
    this:SafeDestroyQuestNpc(npcs.Npc14400.alias, 20238)
    actorMgr:GetActor("5011"):QuestNarratorTask(datas.NarratorWithId_501107, nil)
    this:CancelStoryByQuest(110501112)
    this:RemoveLocalGadget(73010007, "0")
end

function Quest5011:OnSubStart501126(arg1)
    print("OnSubStart501126")
    this:DeployStoryByQuest(110501115)
    this:CreateLocalGadget(74006008, "0", {x = -1856.468, y = 119.314, z = 8726.333}, {x = 0, y = -183.925, z = 0}, 20238, nil, nil, false, 0, true)
    this:CreateLocalGadget(73010007, "0", {x = -1915.404, y = 113.895, z = 8689.87}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
end

function Quest5011:OnSubFinish501126(arg1)
    print("OnSubFinish501126")
    this:CancelStoryByQuest(110501115)
end

function Quest5011:OnSubStart501127(arg1)
    print("OnSubStart501127")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501127, 0, 20, 1, npcs.Npc1088.id)
    this:CreateLocalGadget(74006008, "0", {x = -1856.468, y = 119.314, z = 8726.333}, {x = 0, y = -183.925, z = 0}, 20238, nil, nil, false, 0, true)
    this:CreateLocalGadget(73010007, "0", {x = -1915.404, y = 113.895, z = 8689.87}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
end

function Quest5011:OnSubFinish501127(arg1)
    print("OnSubFinish501127")
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_501115, nil)
        actorUtils.ShowContext("AbyssWarErosionHud", 1)
        this:CallDelayByQuest("501127", 2, function(arg1)
            actorUtils.ShowContext("AbyssWarErosionHud", 0)
        end)
    end)

    this:RemoveLocalGadget(74006008, "0")
end

function Quest5011:OnSubStart501121(arg1)
    print("OnSubStart501121")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc1088.id, arg1)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14221.id, arg1)
    this:CreateQuestNpc(arg1, npcs.Npc14408.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14408.alias, 5011):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14409.id, arg1)
    this:CreateQuestNpc(arg1, npcs.Npc14621.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14621.alias, 5011):DoFreeStyle(4100, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14620.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14620.alias, 5011):DoFreeStyle(1283, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc14385.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14386.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14271.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14272.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14272.alias, 5011):DoFreeStyle(1172, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc14435.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14435.alias, 5011):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc14439.id, 0, false, 0)
    if this:GetSubQuestState(501135) == 3 then
        this:CreateQuestNpc(arg1, npcs.Npc14404.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14405.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14406.id, 0, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14407.id, 0, false, 0)
    end

    this:GetQuestNpcActor(npcs.Npc14408.alias, 5011):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14621.alias, 5011):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(110501113)
    this:CreateLocalGadget(73010007, "0", {x = -1915.404, y = 113.895, z = 8689.87}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
end

function Quest5011:OnSubFinish501121(arg1)
    print("OnSubFinish501121")
    this:SafeDestroyQuestNpc(npcs.Npc14439.alias, 20238)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_501112, nil)
    end)
end

function Quest5011:OnSubStart501122(arg1)
    print("OnSubStart501122")
    this:GetQuestNpcActor(npcs.Npc14408.alias, 5011):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14621.alias, 5011):DoFreeStyle(4100, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14620.alias, 5011):DoFreeStyle(1283, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc14272.alias, 5011):DoFreeStyle(1172, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc14435.alias, 5011):DoFreeStyle(1230, true, nil, true, true, false, true)
    if this:GetSubQuestState(502106) == 3 then
        this:CreateQuestNpc(arg1, npcs.Npc14403.id, 0, false, 0)
        this:NpcCreateWithNpcTrigger(npcs.Npc1088.id, 0, 5, 501122)
        this:CreateQuestNpc(arg1, npcs.Npc14221.id, 0, false, 0)
    else
        actorMgr:CreateActorWithPos("Q501122Trigger", "Actor/Gadget/Q501122Trigger", 70900002, 0, points._Q501122TriggerPoint_.pos, points._Q501122TriggerPoint_.rot, true, false, 20238)
        this:CreateQuestNpc(arg1, npcs.Npc1088_1.id, 8, false, 0)
        this:CreateQuestNpc(arg1, npcs.Npc14221_1.id, 9, false, 0)
    end

    this:GetQuestNpcActor(npcs.Npc14408.alias, 5011):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14621.alias, 5011):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(110501113)
    this:CreateLocalGadget(73010007, "0", {x = -1915.404, y = 113.895, z = 8689.87}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
    local subQuestState = this:GetSubQuestState(501135)
end

function Quest5011:OnSubFinish501122(arg1)
    print("OnSubFinish501122")
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14408.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14409.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14621.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14620.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14385.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14386.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14271.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14272.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14435.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14404.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14405.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14406.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14407.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14221.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc1088_1.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14221_1.alias, 20238)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("AbyssWarErosionHud", 1)
        this:CallDelayByQuest("501122", 3, function(arg1)
            actorUtils.ShowContext("AbyssWarErosionHud", 0)
        end)
    end)

    this:GetQuestNpcActor(npcs.Npc14408.alias, 5011):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc14621.alias, 5011):DisableInteeHeadCtrl(false)
    this:CancelStoryByQuest(110501113)
    this:ActorDestroy("Q501122Trigger")
end

function Quest5011:OnSubStart501144(arg1)
    print("OnSubStart501144")
end

function Quest5011:OnSubFinish501144(arg1)
    print("OnSubFinish501144")
end

function Quest5011:OnSubStart501130(arg1)
    print("OnSubStart501130")
    this:CreateLocalGadget(73010007, "0", {x = -1915.404, y = 113.895, z = 8689.87}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
end

function Quest5011:OnSubFinish501130(arg1)
    print("OnSubFinish501130")
end

function Quest5011:OnSubStart501133(arg1)
    print("OnSubStart501133")
end

function Quest5011:OnSubFinish501133(arg1)
    print("OnSubFinish501133")
end

function Quest5011:OnSubStart501131(arg1)
    print("OnSubStart501131")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501131, 0, 80, 1, npcs.Npc1088.id)
    this:CreateLocalGadget(73010007, "0", {x = -1915.404, y = 113.895, z = 8689.87}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
end

function Quest5011:OnSubFinish501131(arg1)
    print("OnSubFinish501131")
    this:SafeDestroyQuestNpc(npcs.Npc1088.alias, 20238)
    this:RemoveLocalGadget(73010007, "0")
end

return Quest5011

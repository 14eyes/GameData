require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest5012 = class("Quest5012", QuestActorProxy)
Quest5012.defaultAlias = "Quest5012"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest5012:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest5012:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["501249"] = self.OnSubStart501249,
        ["501201"] = self.OnSubStart501201,
        ["501202"] = self.OnSubStart501202,
        ["501203"] = self.OnSubStart501203,
        ["501204"] = self.OnSubStart501204,
        ["501205"] = self.OnSubStart501205,
        ["501206"] = self.OnSubStart501206,
        ["501207"] = self.OnSubStart501207,
        ["501245"] = self.OnSubStart501245,
        ["501250"] = self.OnSubStart501250,
        ["501208"] = self.OnSubStart501208,
        ["501210"] = self.OnSubStart501210,
        ["501211"] = self.OnSubStart501211,
        ["501239"] = self.OnSubStart501239,
        ["501212"] = self.OnSubStart501212,
        ["501251"] = self.OnSubStart501251,
        ["501246"] = self.OnSubStart501246,
        ["501216"] = self.OnSubStart501216,
        ["501217"] = self.OnSubStart501217,
        ["501240"] = self.OnSubStart501240,
        ["501213"] = self.OnSubStart501213,
        ["501214"] = self.OnSubStart501214,
        ["501215"] = self.OnSubStart501215,
        ["501244"] = self.OnSubStart501244,
        ["501252"] = self.OnSubStart501252,
        ["501218"] = self.OnSubStart501218,
        ["501219"] = self.OnSubStart501219,
        ["501220"] = self.OnSubStart501220,
        ["501242"] = self.OnSubStart501242,
        ["501241"] = self.OnSubStart501241,
        ["501221"] = self.OnSubStart501221,
        ["501253"] = self.OnSubStart501253,
        ["501247"] = self.OnSubStart501247,
        ["501222"] = self.OnSubStart501222,
        ["501223"] = self.OnSubStart501223,
        ["501224"] = self.OnSubStart501224,
        ["501254"] = self.OnSubStart501254,
        ["501225"] = self.OnSubStart501225,
        ["501226"] = self.OnSubStart501226,
        ["501227"] = self.OnSubStart501227,
        ["501228"] = self.OnSubStart501228,
        ["501229"] = self.OnSubStart501229,
        ["501230"] = self.OnSubStart501230,
        ["501255"] = self.OnSubStart501255,
        ["501248"] = self.OnSubStart501248,
        ["501231"] = self.OnSubStart501231,
        ["501232"] = self.OnSubStart501232,
        ["501233"] = self.OnSubStart501233,
        ["501243"] = self.OnSubStart501243,
        ["501234"] = self.OnSubStart501234,
        ["501235"] = self.OnSubStart501235,
        ["501236"] = self.OnSubStart501236,
        ["501237"] = self.OnSubStart501237,
        ["501209"] = self.OnSubStart501209,
        ["501238"] = self.OnSubStart501238
    }
end

function Quest5012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["501249"] = self.OnSubFinish501249,
        ["501201"] = self.OnSubFinish501201,
        ["501202"] = self.OnSubFinish501202,
        ["501203"] = self.OnSubFinish501203,
        ["501204"] = self.OnSubFinish501204,
        ["501205"] = self.OnSubFinish501205,
        ["501206"] = self.OnSubFinish501206,
        ["501207"] = self.OnSubFinish501207,
        ["501245"] = self.OnSubFinish501245,
        ["501250"] = self.OnSubFinish501250,
        ["501208"] = self.OnSubFinish501208,
        ["501210"] = self.OnSubFinish501210,
        ["501211"] = self.OnSubFinish501211,
        ["501239"] = self.OnSubFinish501239,
        ["501212"] = self.OnSubFinish501212,
        ["501251"] = self.OnSubFinish501251,
        ["501246"] = self.OnSubFinish501246,
        ["501216"] = self.OnSubFinish501216,
        ["501217"] = self.OnSubFinish501217,
        ["501240"] = self.OnSubFinish501240,
        ["501213"] = self.OnSubFinish501213,
        ["501214"] = self.OnSubFinish501214,
        ["501215"] = self.OnSubFinish501215,
        ["501244"] = self.OnSubFinish501244,
        ["501252"] = self.OnSubFinish501252,
        ["501218"] = self.OnSubFinish501218,
        ["501219"] = self.OnSubFinish501219,
        ["501220"] = self.OnSubFinish501220,
        ["501242"] = self.OnSubFinish501242,
        ["501241"] = self.OnSubFinish501241,
        ["501221"] = self.OnSubFinish501221,
        ["501253"] = self.OnSubFinish501253,
        ["501247"] = self.OnSubFinish501247,
        ["501222"] = self.OnSubFinish501222,
        ["501223"] = self.OnSubFinish501223,
        ["501224"] = self.OnSubFinish501224,
        ["501254"] = self.OnSubFinish501254,
        ["501225"] = self.OnSubFinish501225,
        ["501226"] = self.OnSubFinish501226,
        ["501227"] = self.OnSubFinish501227,
        ["501228"] = self.OnSubFinish501228,
        ["501229"] = self.OnSubFinish501229,
        ["501230"] = self.OnSubFinish501230,
        ["501255"] = self.OnSubFinish501255,
        ["501248"] = self.OnSubFinish501248,
        ["501231"] = self.OnSubFinish501231,
        ["501232"] = self.OnSubFinish501232,
        ["501233"] = self.OnSubFinish501233,
        ["501243"] = self.OnSubFinish501243,
        ["501234"] = self.OnSubFinish501234,
        ["501235"] = self.OnSubFinish501235,
        ["501236"] = self.OnSubFinish501236,
        ["501237"] = self.OnSubFinish501237,
        ["501209"] = self.OnSubFinish501209,
        ["501238"] = self.OnSubFinish501238
    }
end

function Quest5012:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["501232"] = self.OnSubFailed501232}
end

function Quest5012:Start()
    print("Start")
end

function Quest5012:OnDestroy()
    print("OnDestroy")
end

function Quest5012:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest5012:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest5012:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest5012:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest5012:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest5012:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest5012:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest5012:OnSubStart501249(arg1)
    print("OnSubStart501249")
end

function Quest5012:OnSubFinish501249(arg1)
    print("OnSubFinish501249")
end

function Quest5012:OnSubStart501201(arg1)
    print("OnSubStart501201")
    this:CreateQuestNpc(arg1, npcs.Npc14408.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc14409.id, 0, false, 0)
    if this:GetQuestVar(501201, 0) == 0 then
        this:ActionSafeCall(function(arg1)
            this:CallDelayByQuest("501201", 1, function(arg1)
                actorUtils.ShowContext("AbyssWarBattleReportDialogContext", 0)
                this:SetQuestVarByMainId(0, 1)
            end)
        end)
    end

    this:CreateLocalGadget(73010007, "0", {x = -1915.404, y = 113.895, z = 8689.87}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
end

function Quest5012:OnSubFinish501201(arg1)
    print("OnSubFinish501201")
    this:RemoveLocalGadget(73010007, "0")
end

function Quest5012:OnSubStart501202(arg1)
    print("OnSubStart501202")
    this:DeployStoryByQuest(110501202)
end

function Quest5012:OnSubFinish501202(arg1)
    print("OnSubFinish501202")
    this:SafeDestroyQuestNpc(npcs.Npc14408.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14409.alias, 20238)
    actorMgr:GetActor("5012"):QuestNarratorTask(datas.NarratorWithId_501201, nil)
end

function Quest5012:OnSubStart501203(arg1)
    print("OnSubStart501203")
    this:DeployStoryByQuest(110501202)
end

function Quest5012:OnSubFinish501203(arg1)
    print("OnSubFinish501203")
end

function Quest5012:OnSubStart501204(arg1)
    print("OnSubStart501204")
    this:DeployStoryByQuest(110501202)
end

function Quest5012:OnSubFinish501204(arg1)
    print("OnSubFinish501204")
end

function Quest5012:OnSubStart501205(arg1)
    print("OnSubStart501205")
    this:DeployStoryByQuest(110501205)
end

function Quest5012:OnSubFinish501205(arg1)
    print("OnSubFinish501205")
    this:SafeDestroyQuestNpc(npcs.Npc14409.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14408.alias, 20238)
end

function Quest5012:OnSubStart501206(arg1)
    print("OnSubStart501206")
    this:DeployStoryByQuest(110501205)
    this:CreateLocalGadget(73010007, "0", {x = -2148.204, y = 137.756, z = 8783.448}, {x = 0, y = 337.27, z = 0}, 20238, nil, nil, false, 0, true)
    actorMgr:CreateActorWithPos("Q501205Trigger", "Actor/Gadget/Q501205Trigger", 70900002, 0, points._Q501205TriggerPoint_.pos, points._Q501205TriggerPoint_.rot, true, false, 20238)
end

function Quest5012:OnSubFinish501206(arg1)
    print("OnSubFinish501206")
    this:ActorDestroy("Q501205Trigger")
    this:ClearNarratorTask()
end

function Quest5012:OnSubStart501207(arg1)
    print("OnSubStart501207")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501207, 0, 40, 1, npcs.Npc14415.id)
    this:DeployStoryByQuest(110501205)
    this:CreateLocalGadget(73010007, "0", {x = -2148.204, y = 137.756, z = 8783.448}, {x = 0, y = 337.27, z = 0}, 20238, nil, nil, false, 0, true)
end

function Quest5012:OnSubFinish501207(arg1)
    print("OnSubFinish501207")
    this:SafeDestroyQuestNpc(npcs.Npc14415.alias, 20238)
    this:RemoveLocalGadget(73010007, "0")
end

function Quest5012:OnSubStart501245(arg1)
    print("OnSubStart501245")
    this:DeployStoryByQuest(110501205)
    this:DeployStoryByQuest(110501202)
    this:DeployStoryByQuest(110501210)
    actorMgr:CreateActorWithPos("Q501245Trigger", "Actor/Gadget/Q501245Trigger", 70900002, 0, points._Q501245TriggerPoint_.pos, points._Q501245TriggerPoint_.rot, true, false, 20238)
    actorMgr:CreateActorWithPos("Q501245Trigger_1", "Actor/Gadget/Q501245Trigger_1", 70900002, 0, points._Q501245Trigger_1Point_.pos, points._Q501245Trigger_1Point_.rot, true, false, 20238)
end

function Quest5012:OnSubFinish501245(arg1)
    print("OnSubFinish501245")
    this:CancelStoryByQuest(110501205)
    this:CancelStoryByQuest(110501202)
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("AbyssWarBattleReportDialogContext", 0)
    end)

    this:ActorDestroy("Q501245Trigger")
    this:ActorDestroy("Q501245Trigger_1")
end

function Quest5012:OnSubStart501250(arg1)
    print("OnSubStart501250")
end

function Quest5012:OnSubFinish501250(arg1)
    print("OnSubFinish501250")
end

function Quest5012:OnSubStart501208(arg1)
    print("OnSubStart501208")
    this:DeployStoryByQuest(110501210)
end

function Quest5012:OnSubFinish501208(arg1)
    print("OnSubFinish501208")
    this:CancelStoryByQuest(110501210)
end

function Quest5012:OnSubStart501210(arg1)
    print("OnSubStart501210")
end

function Quest5012:OnSubFinish501210(arg1)
    print("OnSubFinish501210")
end

function Quest5012:OnSubStart501211(arg1)
    print("OnSubStart501211")
    actorMgr:CreateActorWithPos("Q501211Trigger", "Actor/Gadget/Q501211Trigger", 70900002, 0, points._Q501211TriggerPoint_.pos, points._Q501211TriggerPoint_.rot, true, false, 20238)
    this:DeployStoryByQuest(110501117)
    this:CreateLocalGadget(73010007, "0", {x = -2062.35, y = 145.13, z = 8681.33}, {x = 0, y = 229.473, z = 0}, 20238, nil, nil, false, 0, true)
end

function Quest5012:OnSubFinish501211(arg1)
    print("OnSubFinish501211")
    this:ActorDestroy("Q501211Trigger")
end

function Quest5012:OnSubStart501239(arg1)
    print("OnSubStart501239")
    actorMgr:CreateActorWithPos("Q501239Trigger", "Actor/Gadget/Q501239Trigger", 70900002, 0, points._Q501239TriggerPoint_.pos, points._Q501239TriggerPoint_.rot, true, false, 20238)
    this:DeployStoryByQuest(110501117)
    this:CreateLocalGadget(73010007, "0", {x = -2062.35, y = 145.13, z = 8681.33}, {x = 0, y = 229.473, z = 0}, 20238, nil, nil, false, 0, true)
end

function Quest5012:OnSubFinish501239(arg1)
    print("OnSubFinish501239")
    this:ActorDestroy("Q501239Trigger")
end

function Quest5012:OnSubStart501212(arg1)
    print("OnSubStart501212")
    if this:GetSubQuestState(501118) == 3 then
        this:CreateQuestNpcWithTriggerBlackEx("Q501212_TalkTrigger", 501212, npcs.Npc14388.id, 0, 40, 0.5, 1, 0.5, 2)
    else
        this:CreateQuestNpc(arg1, npcs.Npc14439.id, 0, false, 0)
    end

    this:DeployStoryByQuest(110501117)
    this:CreateLocalGadget(73010007, "0", {x = -2062.35, y = 145.13, z = 8681.33}, {x = 0, y = 229.473, z = 0}, 20238, nil, nil, false, 0, true)
end

function Quest5012:OnSubFinish501212(arg1)
    print("OnSubFinish501212")
    this:SafeDestroyQuestNpc(npcs.Npc14388.alias, 20238)
    this:SafeDestroyQuestNpc(npcs.Npc14439.alias, 20238)
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(110501207)
    end)
end

function Quest5012:OnSubStart501251(arg1)
    print("OnSubStart501251")
    this:CreateLocalGadget(73010007, "0", {x = -2062.35, y = 145.13, z = 8681.33}, {x = 0, y = 229.473, z = 0}, 20238, nil, nil, false, 0, true)
end

function Quest5012:OnSubFinish501251(arg1)
    print("OnSubFinish501251")
end

function Quest5012:OnSubStart501246(arg1)
    print("OnSubStart501246")
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(110501117)
        this:CreateLocalGadget(73010007, "0", {x = -2062.35, y = 145.13, z = 8681.33}, {x = 0, y = 229.473, z = 0}, 20238, nil, nil, false, 0, true)
    end)
end

function Quest5012:OnSubFinish501246(arg1)
    print("OnSubFinish501246")
    this:CancelStoryByQuest(110501117)
    this:CancelStoryByQuest(110501207)
    this:RemoveLocalGadget(73010007, "0")
end

function Quest5012:OnSubStart501216(arg1)
    print("OnSubStart501216")
    this:DeployStoryByQuest(110501216)
end

function Quest5012:OnSubFinish501216(arg1)
    print("OnSubFinish501216")
    actorMgr:GetActor("5012"):QuestNarratorTask(datas.NarratorWithId_501205, nil)
end

function Quest5012:OnSubStart501217(arg1)
    print("OnSubStart501217")
    this:CreateQuestNpc(arg1, npcs.Npc14548.id, 0, false, 0)
    this:DeployStoryByQuest(110501216)
end

function Quest5012:OnSubFinish501217(arg1)
    print("OnSubFinish501217")
end

function Quest5012:OnSubStart501240(arg1)
    print("OnSubStart501240")
    this:CreateQuestNpc(arg1, npcs.Npc14548.id, 0, false, 0)
    this:DeployStoryByQuest(110501216)
    this:DeployStoryByQuest(110501211)
end

function Quest5012:OnSubFinish501240(arg1)
    print("OnSubFinish501240")
    this:SafeDestroyQuestNpc(npcs.Npc14548.alias, 20238)
    this:CancelStoryByQuest(110501211)
end

function Quest5012:OnSubStart501213(arg1)
    print("OnSubStart501213")
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(110501117)
    end)

    this:CreateLocalGadget(73010007, "0", {x = -2062.35, y = 145.13, z = 8681.33}, {x = 0, y = 229.473, z = 0}, 20238, nil, nil, false, 0, true)
end

function Quest5012:OnSubFinish501213(arg1)
    print("OnSubFinish501213")
    this:CancelStoryByQuest(110501117)
    this:CancelStoryByQuest(110501207)
    this:RemoveLocalGadget(73010007, "0")
end

function Quest5012:OnSubStart501214(arg1)
    print("OnSubStart501214")
    this:DeployStoryByQuest(110501214)
end

function Quest5012:OnSubFinish501214(arg1)
    print("OnSubFinish501214")
    this:LevelLoadFinishSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_501206, nil)
    end)
end

function Quest5012:OnSubStart501215(arg1)
    print("OnSubStart501215")
    this:DeployStoryByQuest(110501214)
end

function Quest5012:OnSubFinish501215(arg1)
    print("OnSubFinish501215")
end

function Quest5012:OnSubStart501244(arg1)
    print("OnSubStart501244")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501244, 0, 30, 1, npcs.Npc14582.id)
    this:DeployStoryByQuest(110501214)
end

function Quest5012:OnSubFinish501244(arg1)
    print("OnSubFinish501244")
    this:SafeDestroyQuestNpc(npcs.Npc14582.alias, 20238)
end

function Quest5012:OnSubStart501252(arg1)
    print("OnSubStart501252")
end

function Quest5012:OnSubFinish501252(arg1)
    print("OnSubFinish501252")
end

function Quest5012:OnSubStart501218(arg1)
    print("OnSubStart501218")
    this:DeployStoryByQuest(110501216)
    this:DeployStoryByQuest(110501214)
end

function Quest5012:OnSubFinish501218(arg1)
    print("OnSubFinish501218")
    this:CancelStoryByQuest(110501216)
    this:CancelStoryByQuest(110501214)
end

function Quest5012:OnSubStart501219(arg1)
    print("OnSubStart501219")
end

function Quest5012:OnSubFinish501219(arg1)
    print("OnSubFinish501219")
    actorMgr:GetActor("5012"):QuestNarratorTask(datas.NarratorWithId_501208, nil)
end

function Quest5012:OnSubStart501220(arg1)
    print("OnSubStart501220")
    this:CreateLocalGadget(73010007, "0", {x = -1573.946, y = 68.8, z = 8097.93}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
    this:DeployStoryByQuest(110501220)
end

function Quest5012:OnSubFinish501220(arg1)
    print("OnSubFinish501220")
end

function Quest5012:OnSubStart501242(arg1)
    print("OnSubStart501242")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501242, 0, 50, 1, npcs.Npc14398.id)
    this:CreateLocalGadget(73010007, "0", {x = -1573.946, y = 68.8, z = 8097.93}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
    this:DeployStoryByQuest(110501220)
end

function Quest5012:OnSubFinish501242(arg1)
    print("OnSubFinish501242")
    this:SafeDestroyQuestNpc(npcs.Npc14398.alias, 20238)
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(110501201)
    end)
end

function Quest5012:OnSubStart501241(arg1)
    print("OnSubStart501241")
    this:CreateLocalGadget(73010007, "0", {x = -1573.946, y = 68.8, z = 8097.93}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
    this:DeployStoryByQuest(110501220)
end

function Quest5012:OnSubFinish501241(arg1)
    print("OnSubFinish501241")
end

function Quest5012:OnSubStart501221(arg1)
    print("OnSubStart501221")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501221, 0, 50, 1, npcs.Npc14398.id)
    this:CreateLocalGadget(73010007, "0", {x = -1573.946, y = 68.8, z = 8097.93}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
    this:DeployStoryByQuest(110501220)
end

function Quest5012:OnSubFinish501221(arg1)
    print("OnSubFinish501221")
    this:SafeDestroyQuestNpc(npcs.Npc14398.alias, 20238)
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(110501201)
    end)
end

function Quest5012:OnSubStart501253(arg1)
    print("OnSubStart501253")
    this:CreateLocalGadget(73010007, "0", {x = -1573.946, y = 68.8, z = 8097.93}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
end

function Quest5012:OnSubFinish501253(arg1)
    print("OnSubFinish501253")
end

function Quest5012:OnSubStart501247(arg1)
    print("OnSubStart501247")
    this:CreateLocalGadget(73010007, "0", {x = -1573.946, y = 68.8, z = 8097.93}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
    this:DeployStoryByQuest(110501220)
end

function Quest5012:OnSubFinish501247(arg1)
    print("OnSubFinish501247")
    this:CancelStoryByQuest(110501201)
    this:RemoveLocalGadget(73010007, "0")
end

function Quest5012:OnSubStart501222(arg1)
    print("OnSubStart501222")
    this:CreateQuestNpc(arg1, npcs.Npc14605.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc14605.alias, 5012):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14605.alias, 5012):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
    this:DeployStoryByQuest(110501208)
    this:DeployStoryByQuest(110501220)
end

function Quest5012:OnSubFinish501222(arg1)
    print("OnSubFinish501222")
    this:CancelStoryByQuest(110501220)
end

function Quest5012:OnSubStart501223(arg1)
    print("OnSubStart501223")
    this:GetQuestNpcActor(npcs.Npc14605.alias, 5012):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(110501208)
    this:GetQuestNpcActor(npcs.Npc14605.alias, 5012):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
    actorMgr:CreateActorWithPos("Q501222Trigger", "Actor/Gadget/Q501222Trigger", 70900002, 0, points._Q501222TriggerPoint_.pos, points._Q501222TriggerPoint_.rot, true, false, 20238)
end

function Quest5012:OnSubFinish501223(arg1)
    print("OnSubFinish501223")
    this:ActorDestroy("Q501222Trigger")
end

function Quest5012:OnSubStart501224(arg1)
    print("OnSubStart501224")
    this:GetQuestNpcActor(npcs.Npc14605.alias, 5012):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(110501208)
    this:GetQuestNpcActor(npcs.Npc14605.alias, 5012):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
end

function Quest5012:OnSubFinish501224(arg1)
    print("OnSubFinish501224")
    this:ActionSafeCall(function(arg1)
        actorUtils.ShowContext("AbyssWarBattleReportDialogContext", 0)
    end)
end

function Quest5012:OnSubStart501254(arg1)
    print("OnSubStart501254")
    this:DeployStoryByQuest(110501208)
    this:GetQuestNpcActor(npcs.Npc14605.alias, 5012):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14605.alias, 5012):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
end

function Quest5012:OnSubFinish501254(arg1)
    print("OnSubFinish501254")
end

function Quest5012:OnSubStart501225(arg1)
    print("OnSubStart501225")
    this:DeployStoryByQuest(110501208)
    this:GetQuestNpcActor(npcs.Npc14605.alias, 5012):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14605.alias, 5012):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
end

function Quest5012:OnSubFinish501225(arg1)
    print("OnSubFinish501225")
end

function Quest5012:OnSubStart501226(arg1)
    print("OnSubStart501226")
    this:CancelStoryByQuest(110501203)
    this:DeployStoryByQuest(110501208)
    this:GetQuestNpcActor(npcs.Npc14605.alias, 5012):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14605.alias, 5012):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
    if sceneData.currSceneID == 20238 then
        this:LevelLoadFinishSafeCall(function(arg1_2)
            this:TransmitPlayerByData(arg1, 1, datas.TransmitData_6, nil, nil, nil)
        end)
    end
end

function Quest5012:OnSubFinish501226(arg1)
    print("OnSubFinish501226")
end

function Quest5012:OnSubStart501227(arg1)
    print("OnSubStart501227")
    actorMgr:CreateActorWithPos("Q501227Narrator1", "Actor/Gadget/Q501227Narrator1", 70900002, 0, points._Q501227Narrator1Point_.pos, points._Q501227Narrator1Point_.rot, true, false, 20238)
    this:DeployStoryByQuest(110501208)
    this:DeployStoryByQuest(110501203)
    this:GetQuestNpcActor(npcs.Npc14605.alias, 5012):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc14605.alias, 5012):PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
    actorMgr:CreateActorWithPos("Q501227Trigger", "Actor/Gadget/Q501227Trigger", 70900002, 0, points._Q501227TriggerPoint_.pos, points._Q501227TriggerPoint_.rot, true, false, 20238)
end

function Quest5012:OnSubFinish501227(arg1)
    print("OnSubFinish501227")
    this:SafeDestroyQuestNpc(npcs.Npc14605.alias, 20238)
    this:CancelStoryByQuest(110501208)
end

function Quest5012:OnSubStart501228(arg1)
    print("OnSubStart501228")
    actorMgr:CreateActorWithPos("Q501228Trigger", "Actor/Gadget/Q501228Trigger", 70900002, 0, points._Q501228TriggerPoint_.pos, points._Q501228TriggerPoint_.rot, true, false, 20238)
    this:CreateLocalGadget(74006044, "0", {x = -1706.079, y = 48.46, z = 8151.091}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
    this:DeployStoryByQuest(110501203)
    actorMgr:CreateActorWithPos("Q501228Trigger_1", "Actor/Gadget/Q501228Trigger_1", 70900002, 0, points._Q501228Trigger_1Point_.pos, points._Q501228Trigger_1Point_.rot, true, false, 20238)
end

function Quest5012:OnSubFinish501228(arg1)
    print("OnSubFinish501228")
    this:QuestNarratorTask(datas.NarratorWithId_501210, nil)
    this:CancelStoryByQuest(110501203)
    this:ActorDestroy("Q501228Trigger")
    this:ActorDestroy("Q501228Trigger_1")
end

function Quest5012:OnSubStart501229(arg1)
    print("OnSubStart501229")
    this:CreateLocalGadget(74006044, "0", {x = -1706.079, y = 48.46, z = 8151.091}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
    this:DeployStoryByQuest(110501204)
end

function Quest5012:OnSubFinish501229(arg1)
    print("OnSubFinish501229")
    this:CancelStoryByQuest(110501204)
end

function Quest5012:OnSubStart501230(arg1)
    print("OnSubStart501230")
    this:ActionSafeCall(function(arg1)
        this:NpcCreateWithNpcTriggerAndBlackscreen(501230, 0, 50, 1, npcs.Npc14515.id)
    end)

    this:CreateLocalGadget(73010007, "0", {x = -1734.915, y = 53.278, z = 8208.214}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
    this:CreateLocalGadget(74006044, "0", {x = -1706.079, y = 48.46, z = 8151.091}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
end

function Quest5012:OnSubFinish501230(arg1)
    print("OnSubFinish501230")
    this:SafeDestroyQuestNpc(npcs.Npc14515.alias, 20238)
end

function Quest5012:OnSubStart501255(arg1)
    print("OnSubStart501255")
    this:CreateLocalGadget(73010007, "0", {x = -1734.915, y = 53.278, z = 8208.214}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
    this:CreateLocalGadget(74006044, "0", {x = -1706.079, y = 48.46, z = 8151.091}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
end

function Quest5012:OnSubFinish501255(arg1)
    print("OnSubFinish501255")
end

function Quest5012:OnSubStart501248(arg1)
    print("OnSubStart501248")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc14580.id, arg1)
    this:CreateLocalGadget(73010007, "0", {x = -1734.915, y = 53.278, z = 8208.214}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
    this:CreateLocalGadget(74006044, "0", {x = -1706.079, y = 48.46, z = 8151.091}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(110501206)
    end)
end

function Quest5012:OnSubFinish501248(arg1)
    print("OnSubFinish501248")
    this:SafeDestroyQuestNpc(npcs.Npc14580.alias, 20238)
    this:CancelStoryByQuest(110501206)
end

function Quest5012:OnSubStart501231(arg1)
    print("OnSubStart501231")
    actorMgr:CreateActorWithPos("Q501231Trigger", "Actor/Gadget/Q501231Trigger", 70900002, 0, points._Q501231TriggerPoint_.pos, points._Q501231TriggerPoint_.rot, true, false, 20238)
    this:CreateLocalGadget(73010007, "0", {x = -1734.915, y = 53.278, z = 8208.214}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
    this:CreateLocalGadget(74006044, "0", {x = -1706.079, y = 48.46, z = 8151.091}, {x = 0, y = 0, z = 0}, 20238, nil, nil, false, 0, true)
    this:DeployStoryByQuest(110501212)
end

function Quest5012:OnSubFinish501231(arg1)
    print("OnSubFinish501231")
    this:RemoveLocalGadget(73010007, "0")
    this:ActorDestroy("Q501231Trigger")
    this:RemoveLocalGadget(74006044, "0")
end

function Quest5012:OnSubStart501232(arg1)
    print("OnSubStart501232")
    this:DeployStoryByQuest(110501212)
end

function Quest5012:OnSubFinish501232(arg1)
    print("OnSubFinish501232")
    this:CancelStoryByQuest(110501212)
end

function Quest5012:OnSubFailed501232(arg1)
    print("OnSubFailed501232")
    this:CancelStoryByQuest(110501212)
end

function Quest5012:OnSubStart501233(arg1)
    print("OnSubStart501233")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501233, 0, 50, 1, npcs.Npc1095.id)
end

function Quest5012:OnSubFinish501233(arg1)
    print("OnSubFinish501233")
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 20238)
end

function Quest5012:OnSubStart501243(arg1)
    print("OnSubStart501243")
    this:DeployStoryByQuest(110501213)
end

function Quest5012:OnSubFinish501243(arg1)
    print("OnSubFinish501243")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_Ballon, nil, nil, nil)
    this:CancelStoryByQuest(110501213)
end

function Quest5012:OnSubStart501234(arg1)
    print("OnSubStart501234")
    this:DeployStoryByQuest(110501209)
end

function Quest5012:OnSubFinish501234(arg1)
    print("OnSubFinish501234")
    this:QuestNarratorTask(datas.NarratorWithId_501212, nil)
end

function Quest5012:OnSubStart501235(arg1)
    print("OnSubStart501235")
    this:DeployStoryByQuest(110501209)
end

function Quest5012:OnSubFinish501235(arg1)
    print("OnSubFinish501235")
end

function Quest5012:OnSubStart501236(arg1)
    print("OnSubStart501236")
    this:DeployStoryByQuest(110501209)
end

function Quest5012:OnSubFinish501236(arg1)
    print("OnSubFinish501236")
    this:DestroyQuestNpcActorByAlias(npcs.Npc14224.alias, false)
    this:DestroyQuestNpcActorByAlias(npcs.Npc1092.alias, false)
    this:TransmitPlayerByData(arg1, 7, datas.TransmitData_5, nil, nil, nil)
    this:CancelStoryByQuest(110501209)
end

function Quest5012:OnSubStart501237(arg1)
    print("OnSubStart501237")
    this:NpcCreateWithNpcTrigger(npcs.Npc1089.id, 0, 30, 501237)
end

function Quest5012:OnSubFinish501237(arg1)
    print("OnSubFinish501237")
    this:SafeDestroyQuestNpc(npcs.Npc1089.alias, 20238)
end

function Quest5012:OnSubStart501209(arg1)
    print("OnSubStart501209")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501209, 0, 30, 1, npcs.Npc1089.id)
    this:CreateQuestNpc(arg1, npcs.Npc1087.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1088.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1091.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1092.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1094.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc1095.id, 0, false, 0)
    this:CreateLocalGadget(74006063, "0", {x = -1909.431, y = 52.304, z = 9061.099}, {x = 0, y = 31.55, z = 0}, 20238, nil, nil, false, 0, true)
    this:CreateLocalGadget(74006062, "0", {x = -1903.12, y = 52.324, z = 9071.98}, {x = 0, y = 210.988, z = 0}, 20238, nil, nil, false, 0, true)
    this:CreateLocalGadget(74006064, "0", {x = -1903.58, y = 52.359, z = 9060.79}, {x = 0, y = -18.176, z = 0}, 20238, nil, nil, false, 0, true)
    this:CreateLocalGadget(74006065, "0", {x = -1912.699, y = 52.284, z = 9066.446}, {x = 0, y = 92.47, z = 0}, 20238, nil, nil, false, 0, true)
    this:CreateLocalGadget(74006066, "0", {x = -1899.903, y = 52.359, z = 9067.292}, {x = 0, y = -99.871, z = 0}, 20238, nil, nil, false, 0, true)
    this:CreateLocalGadget(74006067, "0", {x = -1909.671, y = 52.292, z = 9072.101}, {x = 0, y = 147.49, z = 0}, 20238, nil, nil, false, 0, true)
    this:ActionSafeCall(function(arg1)
        this:DeployStoryByQuest(110501217)
    end)
end

function Quest5012:OnSubFinish501209(arg1)
    print("OnSubFinish501209")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData_6, nil, nil, nil)
    this:RemoveLocalGadget(74006062, "0")
    this:RemoveLocalGadget(74006063, "0")
    this:RemoveLocalGadget(74006064, "0")
    this:RemoveLocalGadget(74006065, "0")
    this:RemoveLocalGadget(74006066, "0")
    this:RemoveLocalGadget(74006067, "0")
    this:CancelStoryByQuest(110501217)
    this:DestroyQuestNpcActorByAlias(npcs.Npc1089.alias, false)
    this:DestroyQuestNpcActorByAlias(npcs.Npc1087.alias, false)
    this:DestroyQuestNpcActorByAlias(npcs.Npc1088.alias, false)
    this:DestroyQuestNpcActorByAlias(npcs.Npc1091.alias, false)
    this:DestroyQuestNpcActorByAlias(npcs.Npc1092.alias, false)
    this:DestroyQuestNpcActorByAlias(npcs.Npc1094.alias, false)
end

function Quest5012:OnSubStart501238(arg1)
    print("OnSubStart501238")
    this:NpcCreateWithNpcTriggerAndBlackscreen(501238, 0, 10, 1, npcs.Npc1095.id)
end

function Quest5012:OnSubFinish501238(arg1)
    print("OnSubFinish501238")
    this:SafeDestroyQuestNpc(npcs.Npc1095.alias, 20238)
end

return Quest5012

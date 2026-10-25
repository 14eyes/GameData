require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest7012 = class("Quest7012", QuestActorProxy)
Quest7012.defaultAlias = "Quest7012"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest7012:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest7012:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["701240"] = self.OnSubStart701240,
        ["701201"] = self.OnSubStart701201,
        ["701252"] = self.OnSubStart701252,
        ["701253"] = self.OnSubStart701253,
        ["701254"] = self.OnSubStart701254,
        ["701202"] = self.OnSubStart701202,
        ["701203"] = self.OnSubStart701203,
        ["701204"] = self.OnSubStart701204,
        ["701241"] = self.OnSubStart701241,
        ["701258"] = self.OnSubStart701258,
        ["701220"] = self.OnSubStart701220,
        ["701257"] = self.OnSubStart701257,
        ["701221"] = self.OnSubStart701221,
        ["701205"] = self.OnSubStart701205,
        ["701206"] = self.OnSubStart701206,
        ["701207"] = self.OnSubStart701207,
        ["701208"] = self.OnSubStart701208,
        ["701209"] = self.OnSubStart701209,
        ["701210"] = self.OnSubStart701210,
        ["701250"] = self.OnSubStart701250,
        ["701251"] = self.OnSubStart701251,
        ["701211"] = self.OnSubStart701211,
        ["701212"] = self.OnSubStart701212,
        ["701213"] = self.OnSubStart701213,
        ["701224"] = self.OnSubStart701224,
        ["701214"] = self.OnSubStart701214,
        ["701225"] = self.OnSubStart701225,
        ["701215"] = self.OnSubStart701215,
        ["701229"] = self.OnSubStart701229,
        ["701230"] = self.OnSubStart701230,
        ["701243"] = self.OnSubStart701243,
        ["701222"] = self.OnSubStart701222,
        ["701231"] = self.OnSubStart701231,
        ["701232"] = self.OnSubStart701232,
        ["701233"] = self.OnSubStart701233,
        ["701234"] = self.OnSubStart701234,
        ["701226"] = self.OnSubStart701226,
        ["701247"] = self.OnSubStart701247,
        ["701223"] = self.OnSubStart701223,
        ["701255"] = self.OnSubStart701255,
        ["701235"] = self.OnSubStart701235,
        ["701236"] = self.OnSubStart701236,
        ["701245"] = self.OnSubStart701245,
        ["701237"] = self.OnSubStart701237,
        ["701248"] = self.OnSubStart701248,
        ["701249"] = self.OnSubStart701249,
        ["701242"] = self.OnSubStart701242,
        ["701238"] = self.OnSubStart701238,
        ["701244"] = self.OnSubStart701244,
        ["701239"] = self.OnSubStart701239,
        ["701246"] = self.OnSubStart701246,
        ["701227"] = self.OnSubStart701227,
        ["701228"] = self.OnSubStart701228,
        ["701216"] = self.OnSubStart701216,
        ["701217"] = self.OnSubStart701217,
        ["701218"] = self.OnSubStart701218,
        ["701219"] = self.OnSubStart701219,
        ["701256"] = self.OnSubStart701256
    }
end

function Quest7012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["701240"] = self.OnSubFinish701240,
        ["701201"] = self.OnSubFinish701201,
        ["701252"] = self.OnSubFinish701252,
        ["701253"] = self.OnSubFinish701253,
        ["701254"] = self.OnSubFinish701254,
        ["701202"] = self.OnSubFinish701202,
        ["701203"] = self.OnSubFinish701203,
        ["701204"] = self.OnSubFinish701204,
        ["701241"] = self.OnSubFinish701241,
        ["701258"] = self.OnSubFinish701258,
        ["701220"] = self.OnSubFinish701220,
        ["701257"] = self.OnSubFinish701257,
        ["701221"] = self.OnSubFinish701221,
        ["701205"] = self.OnSubFinish701205,
        ["701206"] = self.OnSubFinish701206,
        ["701207"] = self.OnSubFinish701207,
        ["701208"] = self.OnSubFinish701208,
        ["701209"] = self.OnSubFinish701209,
        ["701210"] = self.OnSubFinish701210,
        ["701250"] = self.OnSubFinish701250,
        ["701251"] = self.OnSubFinish701251,
        ["701211"] = self.OnSubFinish701211,
        ["701212"] = self.OnSubFinish701212,
        ["701213"] = self.OnSubFinish701213,
        ["701224"] = self.OnSubFinish701224,
        ["701214"] = self.OnSubFinish701214,
        ["701225"] = self.OnSubFinish701225,
        ["701215"] = self.OnSubFinish701215,
        ["701229"] = self.OnSubFinish701229,
        ["701230"] = self.OnSubFinish701230,
        ["701243"] = self.OnSubFinish701243,
        ["701222"] = self.OnSubFinish701222,
        ["701231"] = self.OnSubFinish701231,
        ["701232"] = self.OnSubFinish701232,
        ["701233"] = self.OnSubFinish701233,
        ["701234"] = self.OnSubFinish701234,
        ["701226"] = self.OnSubFinish701226,
        ["701247"] = self.OnSubFinish701247,
        ["701223"] = self.OnSubFinish701223,
        ["701255"] = self.OnSubFinish701255,
        ["701235"] = self.OnSubFinish701235,
        ["701236"] = self.OnSubFinish701236,
        ["701245"] = self.OnSubFinish701245,
        ["701237"] = self.OnSubFinish701237,
        ["701248"] = self.OnSubFinish701248,
        ["701249"] = self.OnSubFinish701249,
        ["701242"] = self.OnSubFinish701242,
        ["701238"] = self.OnSubFinish701238,
        ["701244"] = self.OnSubFinish701244,
        ["701239"] = self.OnSubFinish701239,
        ["701246"] = self.OnSubFinish701246,
        ["701227"] = self.OnSubFinish701227,
        ["701228"] = self.OnSubFinish701228,
        ["701216"] = self.OnSubFinish701216,
        ["701217"] = self.OnSubFinish701217,
        ["701218"] = self.OnSubFinish701218,
        ["701219"] = self.OnSubFinish701219,
        ["701256"] = self.OnSubFinish701256
    }
end

function Quest7012:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["701241"] = self.OnSubFailed701241,
        ["701258"] = self.OnSubFailed701258,
        ["701220"] = self.OnSubFailed701220,
        ["701257"] = self.OnSubFailed701257,
        ["701221"] = self.OnSubFailed701221,
        ["701205"] = self.OnSubFailed701205,
        ["701209"] = self.OnSubFailed701209,
        ["701210"] = self.OnSubFailed701210,
        ["701212"] = self.OnSubFailed701212,
        ["701213"] = self.OnSubFailed701213,
        ["701224"] = self.OnSubFailed701224,
        ["701225"] = self.OnSubFailed701225,
        ["701247"] = self.OnSubFailed701247,
        ["701223"] = self.OnSubFailed701223,
        ["701255"] = self.OnSubFailed701255,
        ["701235"] = self.OnSubFailed701235,
        ["701217"] = self.OnSubFailed701217
    }
end

function Quest7012:Start()
    print("Start")
end

function Quest7012:OnDestroy()
    print("OnDestroy")
end

function Quest7012:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest7012:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest7012:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest7012:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q701210Trigger", 7012)
    this:ActorDestroy("Q701216Trigger", 7012)
    this:ActorDestroy("Q701209Trigger", 7012)
    this:ActorDestroy("Q701211Trigger", 7012)
    this:ActorDestroy("Q701218Trigger", 7012)
    this:ActorDestroy("Q701219Trigger", 7012)
    this:ActorDestroy("Q701225Trigger", 7012)
    this:ActorDestroy("Q701226Trigger", 7012)
    this:ActorDestroy("Q701227Trigger", 7012)
    this:ActorDestroy("Q701229Trigger", 7012)
    this:ActorDestroy("Q701232Trigger", 7012)
    this:ActorDestroy("Q701233Trigger", 7012)
    this:ActorDestroy("Q701234Trigger", 7012)
    this:ActorDestroy("Q701235Trigger", 7012)
    this:ActorDestroy("Q701236Trigger", 7012)
    this:ActorDestroy("Q701238Trigger", 7012)
    this:ActorDestroy("Q701242Trigger", 7012)
    this:ActorDestroy("Q701243Trigger", 7012)
    this:ActorDestroy("Q701246Trigger", 7012)
    this:ActorDestroy("Q701247Trigger", 7012)
    this:ActorDestroy("Q701248Trigger", 7012)
    this:ActorDestroy("Q701249Trigger", 7012)
    this:ActorDestroy("Q701250Trigger", 7012)
    this:ActorDestroy("Q701250Trigger", 7012)
    this:ActorDestroy("Q701255Trigger", 7012)
    this:ActorDestroy("Q701257Trigger", 7012)
end

function Quest7012:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 70121001 then
        this:ActorDestroy("Q701210Trigger", 7012)
    elseif arg1 == 70121901 then
        actorUtils.FinishQuestWithParam({false}, {701256})
    end
end

function Quest7012:ActorDestroy(arg1, arg2)
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

function Quest7012:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest7012:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest7012:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest7012:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest7012:OnSubStart701240(arg1)
    print("OnSubStart701240")
    this:NpcCreateWithNpcTriggerAndBlackscreen(701240, 0, 15, 1, npcs.Npc22302.id)
end

function Quest7012:OnSubFinish701240(arg1)
    print("OnSubFinish701240")
    this:NpcDestroyImmediately(3, npcs.Npc22302.alias)
end

function Quest7012:OnSubStart701201(arg1)
    print("OnSubStart701201")
    this:DeployRangeStoryByQuest(110701201, 3, {x = 7628.591, y = 216.378, z = 7749.2}, 200, 210)
end

function Quest7012:OnSubFinish701201(arg1)
    print("OnSubFinish701201")
end

function Quest7012:OnSubStart701252(arg1)
    print("OnSubStart701252")
    this:DeployRangeStoryByQuest(110701201, 3, {x = 7628.591, y = 216.378, z = 7749.2}, 200, 210)
end

function Quest7012:OnSubFinish701252(arg1)
    print("OnSubFinish701252")
end

function Quest7012:OnSubStart701253(arg1)
    print("OnSubStart701253")
    this:DeployRangeStoryByQuest(110701201, 3, {x = 7628.591, y = 216.378, z = 7749.2}, 200, 210)
end

function Quest7012:OnSubFinish701253(arg1)
    print("OnSubFinish701253")
end

function Quest7012:OnSubStart701254(arg1)
    print("OnSubStart701254")
    this:DeployRangeStoryByQuest(110701201, 3, {x = 7628.591, y = 216.378, z = 7749.2}, 200, 210)
end

function Quest7012:OnSubFinish701254(arg1)
    print("OnSubFinish701254")
end

function Quest7012:OnSubStart701202(arg1)
    print("OnSubStart701202")
    this:NpcCreateWithNpcTriggerAndBlackscreen(701202, 0, 15, 1, npcs.Npc1331.id)
    this:DeployRangeStoryByQuest(110701201, 3, {x = 7628.591, y = 216.378, z = 7749.2}, 200, 210)
end

function Quest7012:OnSubFinish701202(arg1)
    print("OnSubFinish701202")
    this:NpcDestroyImmediately(3, npcs.Npc1331.alias)
    this:CancelRangeStoryByQuest(110701201)
end

function Quest7012:OnSubStart701203(arg1)
    print("OnSubStart701203")
    this:NpcCreateWithNpcTriggerAndBlackscreen(701203, 0, 8, 1, npcs.Npc1331.id)
    this:NotifyTo(npcs.Npc7890.alias, 1, true)
    this:NotifyTo(npcs.Npc3493.alias, 1, true)
    this:NotifyTo(npcs.Npc7849.alias, 1, true)
    this:NotifyTo(npcs.Npc7852.alias, 1, true)
    this:NotifyTo(npcs.Npc7887.alias, 1, true)
    this:NotifyTo(npcs.Npc7888.alias, 1, true)
    this:NotifyTo(npcs.Npc7889.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc16839.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16839.alias, 7012):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16839.alias, 7012):DisableInteeHeadCtrl(false)
    this:CreateQuestNpc(arg1, npcs.Npc16840.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16840.alias, 7012):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16840.alias, 7012):DisableInteeHeadCtrl(false)
    this:CreateQuestNpc(arg1, npcs.Npc16841.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16841.alias, 7012):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16841.alias, 7012):DisableInteeHeadCtrl(false)
    this:CreateQuestNpc(arg1, npcs.Npc16837.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16837.alias, 7012):DoFreeStyle(1180, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16837.alias, 7012):DisableInteeHeadCtrl(false)
    this:CreateQuestNpc(arg1, npcs.Npc16650.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc16650.alias, 7012):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc16650.alias, 7012):DisableInteeHeadCtrl(false)
    this:NotifyTo(npcs.Npc7851.alias, 1, true)
end

function Quest7012:OnSubFinish701203(arg1)
    print("OnSubFinish701203")
end

function Quest7012:OnSubStart701204(arg1)
    print("OnSubStart701204")
    this:CreateQuestNpc(arg1, npcs.Npc1331.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16949.id, 0, false, 0)
    this:NotifyTo(npcs.Npc7890.alias, 1, true)
    this:NotifyTo(npcs.Npc3493.alias, 1, true)
    this:NotifyTo(npcs.Npc7849.alias, 1, true)
    this:NotifyTo(npcs.Npc7852.alias, 1, true)
    this:NotifyTo(npcs.Npc7887.alias, 1, true)
    this:NotifyTo(npcs.Npc7888.alias, 1, true)
    this:NotifyTo(npcs.Npc7889.alias, 1, true)
    this:NotifyTo(npcs.Npc7851.alias, 1, true)
    this:DeployStoryByQuest(110701221)
    this:ExitTailMode()
end

function Quest7012:OnSubFinish701204(arg1)
    print("OnSubFinish701204")
    this:NpcDestroyImmediately(3, npcs.Npc16650.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16837.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16839.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16840.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16841.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitBlackData, nil, nil, nil)
end

function Quest7012:OnSubStart701241(arg1)
    print("OnSubStart701241")
    this:NotifyTo(npcs.Npc7890.alias, 1, true)
    this:NotifyTo(npcs.Npc3493.alias, 1, true)
    this:NotifyTo(npcs.Npc7849.alias, 1, true)
    this:NotifyTo(npcs.Npc7852.alias, 1, true)
    this:NotifyTo(npcs.Npc7887.alias, 1, true)
    this:NotifyTo(npcs.Npc7888.alias, 1, true)
    this:NotifyTo(npcs.Npc7889.alias, 1, true)
    this:NotifyTo(npcs.Npc7851.alias, 1, true)
    this:DeployStoryByQuest(110701202)
end

function Quest7012:OnSubFinish701241(arg1)
    print("OnSubFinish701241")
end

function Quest7012:OnSubFailed701241(arg1)
    print("OnSubFailed701241")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitDataSneakFail, nil, nil, nil)
    this:CancelStoryByQuest(110701202)
end

function Quest7012:OnSubStart701258(arg1)
    print("OnSubStart701258")
end

function Quest7012:OnSubFinish701258(arg1)
    print("OnSubFinish701258")
end

function Quest7012:OnSubFailed701258(arg1)
    print("OnSubFailed701258")
    this:CancelStoryByQuest(110701202)
end

function Quest7012:OnSubStart701220(arg1)
    print("OnSubStart701220")
    this:NotifyTo(npcs.Npc7890.alias, 1, true)
    this:NotifyTo(npcs.Npc3493.alias, 1, true)
    this:NotifyTo(npcs.Npc7849.alias, 1, true)
    this:NotifyTo(npcs.Npc7852.alias, 1, true)
    this:NotifyTo(npcs.Npc7887.alias, 1, true)
    this:NotifyTo(npcs.Npc7888.alias, 1, true)
    this:NotifyTo(npcs.Npc7889.alias, 1, true)
    this:NotifyTo(npcs.Npc7851.alias, 1, true)
    this:DeployStoryByQuest(110701202)
    this:DeployStoryByQuest(110701221)
end

function Quest7012:OnSubFinish701220(arg1)
    print("OnSubFinish701220")
    this:TransmitPlayerByData(arg1, 1, datas.TransmitBlackData, nil, nil, nil)
end

function Quest7012:OnSubFailed701220(arg1)
    print("OnSubFailed701220")
    this:RecycleAllRes()
end

function Quest7012:OnSubStart701257(arg1)
    print("OnSubStart701257")
    this:NotifyTo(npcs.Npc3493.alias, 1, true)
    this:NotifyTo(npcs.Npc7849.alias, 1, true)
    this:NotifyTo(npcs.Npc7851.alias, 1, true)
    this:NotifyTo(npcs.Npc7852.alias, 1, true)
    this:NotifyTo(npcs.Npc7887.alias, 1, true)
    this:NotifyTo(npcs.Npc7888.alias, 1, true)
    this:NotifyTo(npcs.Npc7889.alias, 1, true)
    this:NotifyTo(npcs.Npc7890.alias, 1, true)
    actorMgr:CreateActorWithPos("Q701257Trigger", "Actor/Gadget/Q701257Trigger", 70900002, 0, points._Q701257TriggerPoint_.pos, points._Q701257TriggerPoint_.rot, true, false, 3, nil, 0, 7012)
    this:DeployStoryByQuest(110701202)
end

function Quest7012:OnSubFinish701257(arg1)
    print("OnSubFinish701257")
    this:SetNavigationByMainId(7012, true)
end

function Quest7012:OnSubFailed701257(arg1)
    print("OnSubFailed701257")
    this:RecycleAllRes()
end

function Quest7012:OnSubStart701221(arg1)
    print("OnSubStart701221")
    this:NotifyTo(npcs.Npc7890.alias, 1, true)
    this:NotifyTo(npcs.Npc3493.alias, 1, true)
    this:NotifyTo(npcs.Npc7849.alias, 1, true)
    this:NotifyTo(npcs.Npc7852.alias, 1, true)
    this:NotifyTo(npcs.Npc7887.alias, 1, true)
    this:NotifyTo(npcs.Npc7888.alias, 1, true)
    this:NotifyTo(npcs.Npc7889.alias, 1, true)
    this:NotifyTo(npcs.Npc7851.alias, 1, true)
    this:DeployStoryByQuest(110701202)
end

function Quest7012:OnSubFinish701221(arg1)
    print("OnSubFinish701221")
    this:CancelStoryByQuest(110701202)
end

function Quest7012:OnSubFailed701221(arg1)
    print("OnSubFailed701221")
    this:RecycleAllRes()
end

function Quest7012:OnSubStart701205(arg1)
    print("OnSubStart701205")
    this:NpcCreateWithNpcTriggerAndBlackscreen(701205, 0, 38, 1, npcs.Npc1331.id)
    this:NotifyTo(npcs.Npc7890.alias, 1, true)
    this:NotifyTo(npcs.Npc3493.alias, 1, true)
    this:NotifyTo(npcs.Npc7849.alias, 1, true)
    this:NotifyTo(npcs.Npc7852.alias, 1, true)
    this:NotifyTo(npcs.Npc7887.alias, 1, true)
    this:NotifyTo(npcs.Npc7888.alias, 1, true)
    this:NotifyTo(npcs.Npc7889.alias, 1, true)
    this:NotifyTo(npcs.Npc7851.alias, 1, true)
    this:DeployStoryByQuest(110701221)
end

function Quest7012:OnSubFinish701205(arg1)
    print("OnSubFinish701205")
    this:NpcDestroyImmediately(3, npcs.Npc1331.alias)
    this:QuestNarratorTask(datas.NarratorWithId_701210, nil)
end

function Quest7012:OnSubFailed701205(arg1)
    print("OnSubFailed701205")
    this:RecycleAllRes()
end

function Quest7012:OnSubStart701206(arg1)
    print("OnSubStart701206")
    this:NpcCreateWithNpcTriggerAndBlackscreen(701206, 0, 10, 1, npcs.Npc1331.id)
    this:NotifyTo(npcs.Npc7890.alias, 1, true)
    this:NotifyTo(npcs.Npc3493.alias, 1, true)
    this:NotifyTo(npcs.Npc7849.alias, 1, true)
    this:NotifyTo(npcs.Npc7852.alias, 1, true)
    this:NotifyTo(npcs.Npc7887.alias, 1, true)
    this:NotifyTo(npcs.Npc7888.alias, 1, true)
    this:NotifyTo(npcs.Npc7889.alias, 1, true)
    this:NotifyTo(npcs.Npc7851.alias, 1, true)
    this:DeployStoryByQuest(110701221)
end

function Quest7012:OnSubFinish701206(arg1)
    print("OnSubFinish701206")
    this:NpcDestroyImmediately(3, npcs.Npc1331.alias)
end

function Quest7012:OnSubStart701207(arg1)
    print("OnSubStart701207")
    this:NpcCreateWithNpcTriggerAndBlackscreen(701207, 0, 4.8, 1, npcs.Npc1331.id)
    this:NotifyTo(npcs.Npc7890.alias, 1, true)
    this:NotifyTo(npcs.Npc3493.alias, 1, true)
    this:NotifyTo(npcs.Npc7849.alias, 1, true)
    this:NotifyTo(npcs.Npc7852.alias, 1, true)
    this:NotifyTo(npcs.Npc7887.alias, 1, true)
    this:NotifyTo(npcs.Npc7888.alias, 1, true)
    this:NotifyTo(npcs.Npc7889.alias, 1, true)
    this:NotifyTo(npcs.Npc7851.alias, 1, true)
    this:DeployStoryByQuest(110701221)
end

function Quest7012:OnSubFinish701207(arg1)
    print("OnSubFinish701207")
    this:NpcDestroyImmediately(3, npcs.Npc1331.alias)
    this:LightNotifyTo(npcs.Npc7890.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7849.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7852.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7887.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7888.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7889.alias, 0, true)
    this:LightNotifyTo(npcs.Npc7851.alias, 0, true)
    this:CancelStoryByQuest(110701221)
end

function Quest7012:OnSubStart701208(arg1)
    print("OnSubStart701208")
    this:CreateQuestNpc(arg1, npcs.Npc16839.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16840.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc16841.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc16837.id, 0, 15, 701208)
    this:GetQuestNpcActor(npcs.Npc16837.alias, 7012):DoFreeStyle(1170, true, nil, true, true, false, true)
    this:NotifyTo(npcs.Npc3493.alias, 1, true)
    this:NotifyTo(npcs.Npc7890.alias, 1, true)
end

function Quest7012:OnSubFinish701208(arg1)
    print("OnSubFinish701208")
    this:NpcDestroyImmediately(3, npcs.Npc16839.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16840.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16841.alias)
    this:NpcDestroyImmediately(3, npcs.Npc16837.alias)
end

function Quest7012:OnSubStart701209(arg1)
    print("OnSubStart701209")
    this:NotifyTo(npcs.Npc3493.alias, 1, true)
    this:NotifyTo(npcs.Npc7890.alias, 1, true)
    actorMgr:CreateActorWithPos("Q701209Trigger", "Actor/Gadget/Q701209Trigger", 70900002, 0, points._Q701209TriggerPoint_.pos, points._Q701209TriggerPoint_.rot, true, false, 3, nil, 0, 7012)
end

function Quest7012:OnSubFinish701209(arg1)
    print("OnSubFinish701209")
    this:ActorDestroy("Q701209Trigger", 7012)
end

function Quest7012:OnSubFailed701209(arg1)
    print("OnSubFailed701209")
    this:RecycleAllRes()
    this:ActorDestroy("Q701209Trigger", 7012)
end

function Quest7012:OnSubStart701210(arg1)
    print("OnSubStart701210")
    this:NpcCreateWithNpcTriggerAndBlackscreen(701210, 0, 40, 1, npcs.Npc1331.id)
    this:NotifyTo(npcs.Npc3493.alias, 1, true)
    this:NotifyTo(npcs.Npc7890.alias, 1, true)
    actorMgr:CreateActorWithPos("Q701210Trigger", "Actor/Gadget/Q701210Trigger", 70900002, 0, points._Q701210TriggerPoint_.pos, points._Q701210TriggerPoint_.rot, true, false, 3, nil, 0, 7012)
end

function Quest7012:OnSubFinish701210(arg1)
    print("OnSubFinish701210")
    this:NpcDestroyImmediately(3, npcs.Npc1331.alias)
    this:PlayerEnterDungeonByData({entrySceneId = 3, pointId = 2117, dungeonId = 2222, questId = 701210, questPointCfgId = 1}, datas.PlayerEnterDungeonBlack, nil, nil)
    this:ActorDestroy("Q701210Trigger", 7012)
end

function Quest7012:OnSubFailed701210(arg1)
    print("OnSubFailed701210")
    this:RecycleAllRes()
    this:ActorDestroy("Q701210Trigger", 7012)
end

function Quest7012:OnSubStart701250(arg1)
    print("OnSubStart701250")
    this:NotifyTo(npcs.Npc3493.alias, 1, true)
    this:NotifyTo(npcs.Npc7890.alias, 1, true)
    actorMgr:CreateActorWithPos("Q701250Trigger", "Actor/Gadget/Q701250Trigger", 70900002, 0, points._Q701250TriggerPoint_.pos, points._Q701250TriggerPoint_.rot, true, false, 3, nil, 0, 7012)
end

function Quest7012:OnSubFinish701250(arg1)
    print("OnSubFinish701250")
end

function Quest7012:OnSubStart701251(arg1)
    print("OnSubStart701251")
    actorMgr:CreateActorWithPos("Q701250Trigger", "Actor/Gadget/Q701250Trigger", 70900002, 0, points._Q701250TriggerPoint_.pos, points._Q701250TriggerPoint_.rot, true, false, 3, nil, 0, 7012)
end

function Quest7012:OnSubFinish701251(arg1)
    print("OnSubFinish701251")
end

function Quest7012:OnSubStart701211(arg1)
    print("OnSubStart701211")
    this:NotifyTo(npcs.Npc3493.alias, 1, true)
    this:NotifyTo(npcs.Npc7890.alias, 1, true)
    actorMgr:CreateActorWithPos("Q701211Trigger", "Actor/Gadget/Q701211Trigger", 70900002, 0, points._Q701211TriggerPoint_.pos, points._Q701211TriggerPoint_.rot, true, false, 51327, nil, 0, 7012)
end

function Quest7012:OnSubFinish701211(arg1)
    print("OnSubFinish701211")
end

function Quest7012:OnSubStart701212(arg1)
    print("OnSubStart701212")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1331.id, 0, 701212, 25, true)
    this:NotifyTo(npcs.Npc3493.alias, 1, true)
    this:NotifyTo(npcs.Npc7890.alias, 1, true)
    this:DeployRangeStoryByQuest(110701203, 51327, {x = 526.46, y = -954.391, z = 545.774}, 223, 225)
end

function Quest7012:OnSubFinish701212(arg1)
    print("OnSubFinish701212")
    this:LightNotifyTo(npcs.Npc3493.alias, 0, true)
end

function Quest7012:OnSubFailed701212(arg1)
    print("OnSubFailed701212")
    this:RecycleAllRes()
end

function Quest7012:OnSubStart701213(arg1)
    print("OnSubStart701213")
    this:DeployRangeStoryByQuest(110701203, 51327, {x = 526.46, y = -954.391, z = 545.774}, 223, 225)
end

function Quest7012:OnSubFinish701213(arg1)
    print("OnSubFinish701213")
end

function Quest7012:OnSubFailed701213(arg1)
    print("OnSubFailed701213")
    this:RecycleAllRes()
end

function Quest7012:OnSubStart701224(arg1)
    print("OnSubStart701224")
    this:DeployRangeStoryByQuest(110701203, 51327, {x = 526.46, y = -954.391, z = 545.774}, 223, 225)
end

function Quest7012:OnSubFinish701224(arg1)
    print("OnSubFinish701224")
end

function Quest7012:OnSubFailed701224(arg1)
    print("OnSubFailed701224")
    this:RecycleAllRes()
end

function Quest7012:OnSubStart701214(arg1)
    print("OnSubStart701214")
    this:NpcCreateWithNpcTrigger(npcs.Npc16888.id, 0, 15, 701214)
    this:DeployRangeStoryByQuest(110701203, 51327, {x = 526.46, y = -954.391, z = 545.774}, 223, 225)
end

function Quest7012:OnSubFinish701214(arg1)
    print("OnSubFinish701214")
    this:NpcDestroyImmediately(51327, npcs.Npc16888.alias)
end

function Quest7012:OnSubStart701225(arg1)
    print("OnSubStart701225")
    actorMgr:CreateActorWithPos("Q701225Trigger", "Actor/Gadget/Q701225Trigger", 70900002, 0, points._Q701225TriggerPoint_.pos, points._Q701225TriggerPoint_.rot, true, false, 51327, nil, 0, 7012)
    this:DeployRangeStoryByQuest(110701203, 51327, {x = 526.46, y = -954.391, z = 545.774}, 223, 225)
end

function Quest7012:OnSubFinish701225(arg1)
    print("OnSubFinish701225")
end

function Quest7012:OnSubFailed701225(arg1)
    print("OnSubFailed701225")
    this:RecycleAllRes()
end

function Quest7012:OnSubStart701215(arg1)
    print("OnSubStart701215")
    this:NpcCreateWithNpcTrigger(npcs.Npc22302.id, 0, 20, 701215)
    this:DeployRangeStoryByQuest(110701203, 51327, {x = 526.46, y = -954.391, z = 545.774}, 223, 225)
end

function Quest7012:OnSubFinish701215(arg1)
    print("OnSubFinish701215")
    this:NpcDestroyImmediately(51327, npcs.Npc22302.alias)
    this:CancelRangeStoryByQuest(110701203)
end

function Quest7012:OnSubStart701229(arg1)
    print("OnSubStart701229")
    actorMgr:CreateActorWithPos("Q701229Trigger", "Actor/Gadget/Q701229Trigger", 70900002, 0, points._Q701229TriggerPoint_.pos, points._Q701229TriggerPoint_.rot, true, false, 51327, nil, 0, 7012)
end

function Quest7012:OnSubFinish701229(arg1)
    print("OnSubFinish701229")
end

function Quest7012:OnSubStart701230(arg1)
    print("OnSubStart701230")
end

function Quest7012:OnSubFinish701230(arg1)
    print("OnSubFinish701230")
end

function Quest7012:OnSubStart701243(arg1)
    print("OnSubStart701243")
    actorMgr:CreateActorWithPos("Q701243Trigger", "Actor/Gadget/Q701243Trigger", 70900002, 0, points._Q701243TriggerPoint_.pos, points._Q701243TriggerPoint_.rot, true, false, 51327, nil, 0, 7012)
end

function Quest7012:OnSubFinish701243(arg1)
    print("OnSubFinish701243")
end

function Quest7012:OnSubStart701222(arg1)
    print("OnSubStart701222")
    this:NpcCreateWithNpcTrigger(npcs.Npc22302.id, 0, 10, 701222)
end

function Quest7012:OnSubFinish701222(arg1)
    print("OnSubFinish701222")
    this:NpcDestroyImmediately(51327, npcs.Npc22302.alias)
end

function Quest7012:OnSubStart701231(arg1)
    print("OnSubStart701231")
end

function Quest7012:OnSubFinish701231(arg1)
    print("OnSubFinish701231")
end

function Quest7012:OnSubStart701232(arg1)
    print("OnSubStart701232")
    actorMgr:CreateActorWithPos("Q701232Trigger", "Actor/Gadget/Q701232Trigger", 70900002, 0, points._Q701232TriggerPoint_.pos, points._Q701232TriggerPoint_.rot, true, false, 51327, nil, 0, 7012)
end

function Quest7012:OnSubFinish701232(arg1)
    print("OnSubFinish701232")
end

function Quest7012:OnSubStart701233(arg1)
    print("OnSubStart701233")
    actorMgr:CreateActorWithPos("Q701233Trigger", "Actor/Gadget/Q701233Trigger", 70900002, 0, points._Q701233TriggerPoint_.pos, points._Q701233TriggerPoint_.rot, true, false, 51327, nil, 0, 7012)
end

function Quest7012:OnSubFinish701233(arg1)
    print("OnSubFinish701233")
end

function Quest7012:OnSubStart701234(arg1)
    print("OnSubStart701234")
    actorMgr:CreateActorWithPos("Q701234Trigger", "Actor/Gadget/Q701234Trigger", 70900002, 0, points._Q701234TriggerPoint_.pos, points._Q701234TriggerPoint_.rot, true, false, 51327, nil, 0, 7012)
end

function Quest7012:OnSubFinish701234(arg1)
    print("OnSubFinish701234")
end

function Quest7012:OnSubStart701226(arg1)
    print("OnSubStart701226")
    actorMgr:CreateActorWithPos("Q701226Trigger", "Actor/Gadget/Q701226Trigger", 70900002, 0, points._Q701226TriggerPoint_.pos, points._Q701226TriggerPoint_.rot, true, false, 51327, nil, 0, 7012)
end

function Quest7012:OnSubFinish701226(arg1)
    print("OnSubFinish701226")
end

function Quest7012:OnSubStart701247(arg1)
    print("OnSubStart701247")
    actorMgr:CreateActorWithPos("Q701247Trigger", "Actor/Gadget/Q701247Trigger", 70900002, 0, points._Q701247TriggerPoint_.pos, points._Q701247TriggerPoint_.rot, true, false, 51327, nil, 0, 7012)
end

function Quest7012:OnSubFinish701247(arg1)
    print("OnSubFinish701247")
end

function Quest7012:OnSubFailed701247(arg1)
    print("OnSubFailed701247")
    this:RecycleAllRes()
end

function Quest7012:OnSubStart701223(arg1)
    print("OnSubStart701223")
    this:NpcCreateWithNpcTrigger(npcs.Npc22302.id, 0, 7, 701223)
end

function Quest7012:OnSubFinish701223(arg1)
    print("OnSubFinish701223")
    this:NpcDestroyImmediately(51327, npcs.Npc22302.alias)
end

function Quest7012:OnSubFailed701223(arg1)
    print("OnSubFailed701223")
    this:RecycleAllRes()
end

function Quest7012:OnSubStart701255(arg1)
    print("OnSubStart701255")
    actorMgr:CreateActorWithPos("Q701255Trigger", "Actor/Gadget/Q701255Trigger", 70900002, 0, points._Q701255TriggerPoint_.pos, points._Q701255TriggerPoint_.rot, true, false, 51327, nil, 0, 7012)
end

function Quest7012:OnSubFinish701255(arg1)
    print("OnSubFinish701255")
end

function Quest7012:OnSubFailed701255(arg1)
    print("OnSubFailed701255")
    this:RecycleAllRes()
end

function Quest7012:OnSubStart701235(arg1)
    print("OnSubStart701235")
    actorMgr:CreateActorWithPos("Q701235Trigger", "Actor/Gadget/Q701235Trigger", 70900002, 0, points._Q701235TriggerPoint_.pos, points._Q701235TriggerPoint_.rot, true, false, 51327, nil, 0, 7012)
end

function Quest7012:OnSubFinish701235(arg1)
    print("OnSubFinish701235")
end

function Quest7012:OnSubFailed701235(arg1)
    print("OnSubFailed701235")
    this:RecycleAllRes()
end

function Quest7012:OnSubStart701236(arg1)
    print("OnSubStart701236")
    actorMgr:CreateActorWithPos("Q701236Trigger", "Actor/Gadget/Q701236Trigger", 70900002, 0, points._Q701236TriggerPoint_.pos, points._Q701236TriggerPoint_.rot, true, false, 51327, nil, 0, 7012)
end

function Quest7012:OnSubFinish701236(arg1)
    print("OnSubFinish701236")
end

function Quest7012:OnSubStart701245(arg1)
    print("OnSubStart701245")
end

function Quest7012:OnSubFinish701245(arg1)
    print("OnSubFinish701245")
end

function Quest7012:OnSubStart701237(arg1)
    print("OnSubStart701237")
end

function Quest7012:OnSubFinish701237(arg1)
    print("OnSubFinish701237")
end

function Quest7012:OnSubStart701248(arg1)
    print("OnSubStart701248")
    actorMgr:CreateActorWithPos("Q701248Trigger", "Actor/Gadget/Q701248Trigger", 70900002, 0, points._Q701248TriggerPoint_.pos, points._Q701248TriggerPoint_.rot, true, false, 51327, nil, 0, 7012)
end

function Quest7012:OnSubFinish701248(arg1)
    print("OnSubFinish701248")
end

function Quest7012:OnSubStart701249(arg1)
    print("OnSubStart701249")
    actorMgr:CreateActorWithPos("Q701249Trigger", "Actor/Gadget/Q701249Trigger", 70900002, 0, points._Q701249TriggerPoint_.pos, points._Q701249TriggerPoint_.rot, true, false, 51327, nil, 0, 7012)
end

function Quest7012:OnSubFinish701249(arg1)
    print("OnSubFinish701249")
end

function Quest7012:OnSubStart701242(arg1)
    print("OnSubStart701242")
    actorMgr:CreateActorWithPos("Q701242Trigger", "Actor/Gadget/Q701242Trigger", 70900002, 0, points._Q701242TriggerPoint_.pos, points._Q701242TriggerPoint_.rot, true, false, 51327, nil, 0, 7012)
end

function Quest7012:OnSubFinish701242(arg1)
    print("OnSubFinish701242")
end

function Quest7012:OnSubStart701238(arg1)
    print("OnSubStart701238")
    actorMgr:CreateActorWithPos("Q701238Trigger", "Actor/Gadget/Q701238Trigger", 70900002, 0, points._Q701238TriggerPoint_.pos, points._Q701238TriggerPoint_.rot, true, false, 51327, nil, 0, 7012)
end

function Quest7012:OnSubFinish701238(arg1)
    print("OnSubFinish701238")
end

function Quest7012:OnSubStart701244(arg1)
    print("OnSubStart701244")
end

function Quest7012:OnSubFinish701244(arg1)
    print("OnSubFinish701244")
end

function Quest7012:OnSubStart701239(arg1)
    print("OnSubStart701239")
end

function Quest7012:OnSubFinish701239(arg1)
    print("OnSubFinish701239")
end

function Quest7012:OnSubStart701246(arg1)
    print("OnSubStart701246")
    actorMgr:CreateActorWithPos("Q701246Trigger", "Actor/Gadget/Q701246Trigger", 70900002, 0, points._Q701246TriggerPoint_.pos, points._Q701246TriggerPoint_.rot, true, false, 51327, nil, 0, 7012)
end

function Quest7012:OnSubFinish701246(arg1)
    print("OnSubFinish701246")
end

function Quest7012:OnSubStart701227(arg1)
    print("OnSubStart701227")
    actorMgr:CreateActorWithPos("Q701227Trigger", "Actor/Gadget/Q701227Trigger", 70900002, 0, points._Q701227TriggerPoint_.pos, points._Q701227TriggerPoint_.rot, true, false, 51327, nil, 0, 7012)
end

function Quest7012:OnSubFinish701227(arg1)
    print("OnSubFinish701227")
end

function Quest7012:OnSubStart701228(arg1)
    print("OnSubStart701228")
end

function Quest7012:OnSubFinish701228(arg1)
    print("OnSubFinish701228")
end

function Quest7012:OnSubStart701216(arg1)
    print("OnSubStart701216")
    actorMgr:CreateActorWithPos("Q701216Trigger", "Actor/Gadget/Q701216Trigger", 70900002, 0, points._Q701216TriggerPoint_.pos, points._Q701216TriggerPoint_.rot, true, false, 51327, nil, 0, 7012)
end

function Quest7012:OnSubFinish701216(arg1)
    print("OnSubFinish701216")
end

function Quest7012:OnSubStart701217(arg1)
    print("OnSubStart701217")
    this:NpcCreateWithNpcTrigger(npcs.Npc16888.id, 0, 16, 701217)
end

function Quest7012:OnSubFinish701217(arg1)
    print("OnSubFinish701217")
    this:NpcDestroyImmediately(51327, npcs.Npc16888.alias)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitBlackData, nil, nil, nil)
end

function Quest7012:OnSubFailed701217(arg1)
    print("OnSubFailed701217")
    this:RecycleAllRes()
end

function Quest7012:OnSubStart701218(arg1)
    print("OnSubStart701218")
    actorMgr:CreateActorWithPos("Q701218Trigger", "Actor/Gadget/Q701218Trigger", 70900002, 0, points._Q701218TriggerPoint_.pos, points._Q701218TriggerPoint_.rot, true, false, 3, nil, 0, 7012)
end

function Quest7012:OnSubFinish701218(arg1)
    print("OnSubFinish701218")
end

function Quest7012:OnSubStart701219(arg1)
    print("OnSubStart701219")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1331.id, 0, 701219, 25, true)
    actorMgr:CreateActorWithPos("Q701219Trigger", "Actor/Gadget/Q701219Trigger", 70900002, 0, points._Q701219TriggerPoint_.pos, points._Q701219TriggerPoint_.rot, true, false, 3, nil, 0, 7012)
end

function Quest7012:OnSubFinish701219(arg1)
    print("OnSubFinish701219")
    this:NpcDestroyImmediately(3, npcs.Npc1331.alias)
    this:ActorDestroy("Q701219Trigger", 7012)
end

function Quest7012:OnSubStart701256(arg1)
    print("OnSubStart701256")
end

function Quest7012:OnSubFinish701256(arg1)
    print("OnSubFinish701256")
end

return Quest7012

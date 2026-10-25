require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40203 = class("Quest40203", QuestActorProxy)
Quest40203.defaultAlias = "Quest40203"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest40203:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest40203:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4020301"] = self.OnSubStart4020301,
        ["4020316"] = self.OnSubStart4020316,
        ["4020315"] = self.OnSubStart4020315,
        ["4020302"] = self.OnSubStart4020302,
        ["4020314"] = self.OnSubStart4020314,
        ["4020313"] = self.OnSubStart4020313,
        ["4020303"] = self.OnSubStart4020303,
        ["4020304"] = self.OnSubStart4020304,
        ["4020311"] = self.OnSubStart4020311,
        ["4020312"] = self.OnSubStart4020312,
        ["4020305"] = self.OnSubStart4020305,
        ["4020307"] = self.OnSubStart4020307,
        ["4020308"] = self.OnSubStart4020308,
        ["4020306"] = self.OnSubStart4020306,
        ["4020317"] = self.OnSubStart4020317,
        ["4020309"] = self.OnSubStart4020309,
        ["4020310"] = self.OnSubStart4020310
    }
end

function Quest40203:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4020301"] = self.OnSubFinish4020301,
        ["4020316"] = self.OnSubFinish4020316,
        ["4020315"] = self.OnSubFinish4020315,
        ["4020302"] = self.OnSubFinish4020302,
        ["4020314"] = self.OnSubFinish4020314,
        ["4020313"] = self.OnSubFinish4020313,
        ["4020303"] = self.OnSubFinish4020303,
        ["4020304"] = self.OnSubFinish4020304,
        ["4020311"] = self.OnSubFinish4020311,
        ["4020312"] = self.OnSubFinish4020312,
        ["4020305"] = self.OnSubFinish4020305,
        ["4020307"] = self.OnSubFinish4020307,
        ["4020308"] = self.OnSubFinish4020308,
        ["4020306"] = self.OnSubFinish4020306,
        ["4020317"] = self.OnSubFinish4020317,
        ["4020309"] = self.OnSubFinish4020309,
        ["4020310"] = self.OnSubFinish4020310
    }
end

function Quest40203:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest40203:Start()
    print("Start")
end

function Quest40203:OnDestroy()
    print("OnDestroy")
end

function Quest40203:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40203:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40203:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc15871.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15767.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15768.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15770.alias, 3)
    this:RemoveLocalGadget(73072057, "1")
    this:SafeDestroyQuestNpc(npcs.Npc15710.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1312.alias, 1151)
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7006.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7001.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7007.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15611.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7009.alias, 3)
    this:ActorDestroy("Q4020301Trigger")
    this:ActorDestroy("Q4020314Trigger")
    this:ActorDestroy("Q4020305Trigger")
    this:ActorDestroy("Q4020307Trigger")
    this:ActorDestroy("Q4020308Trigger")
    this:ActorDestroy("Q4020306Trigger")
    this:DestroyNpcTrigger("Q4020302N15871Trigger")
    this:DestroyNpcTrigger("Q4020304N15871Trigger")
    this:DestroyNpcTrigger("Q4020305_N1313_01")
    this:DestroyNpcTrigger("Q4020310N1313Trigger")
    this:DestroyNpcTrigger("Q4020307_N7006_01")
    this:DestroyNpcTrigger("Q4020307N7006Trigger")
    this:DestroyNpcTrigger("Q4020308_N7009_01")
    this:DestroyNpcTrigger("Q4020306_N7001_01")
    this:DestroyNpcTrigger("Q4020309N7007Trigger")
    this:DestroyNpcTrigger("Q4020311N1313Trigger")
    this:DestroyNpcTrigger("Q4020312N1312Trigger")
    this:CancelStoryByQuest(134020300)
    this:CancelStoryByQuest(134020301)
end

function Quest40203:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q4020301Trigger")
    this:ActorDestroy("Q4020314Trigger")
    this:ActorDestroy("Q4020305Trigger")
    this:ActorDestroy("Q4020307Trigger")
    this:ActorDestroy("Q4020308Trigger")
    this:ActorDestroy("Q4020306Trigger")
end

function Quest40203:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest40203:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest40203:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest40203:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest40203:OnSubStart4020301(arg1)
    print("OnSubStart4020301")
    actorUtils.FinishQuestID(false, 4020301)
end

function Quest40203:OnSubFinish4020301(arg1)
    print("OnSubFinish4020301")
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:ClearNarratorTask()
        this:QuestNarratorTask(datas.NarratorWithId_4020301_QuestStart, nil)
    end)
end

function Quest40203:OnSubStart4020316(arg1)
    print("OnSubStart4020316")
    this:CreateQuestNpc(arg1, npcs.Npc15767.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15767.alias, 40203):DoFreeStyle(1050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15767.alias, 40203):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15768.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15768.alias, 40203):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15768.alias, 40203):DisableInteeHeadCtrl(true)
    this:CreateQuestNpc(arg1, npcs.Npc15770.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15770.alias, 40203):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15770.alias, 40203):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q4020301Trigger", "Actor/Gadget/Q4020301Trigger", 70900002, 0, points._Q4020301TriggerPoint_.pos, points._Q4020301TriggerPoint_.rot, true, false, 3)
end

function Quest40203:OnSubFinish4020316(arg1)
    print("OnSubFinish4020316")
end

function Quest40203:OnSubStart4020315(arg1)
    print("OnSubStart4020315")
    this:CreateQuestNpc(arg1, npcs.Npc15710.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc15767.alias, 40203):DoFreeStyle(1050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15767.alias, 40203):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15768.alias, 40203):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15768.alias, 40203):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15770.alias, 40203):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15770.alias, 40203):DisableInteeHeadCtrl(true)
end

function Quest40203:OnSubFinish4020315(arg1)
    print("OnSubFinish4020315")
end

function Quest40203:OnSubStart4020302(arg1)
    print("OnSubStart4020302")
    this:GetQuestNpcActor(npcs.Npc15767.alias, 40203):DoFreeStyle(1050, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15767.alias, 40203):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15768.alias, 40203):DoFreeStyle(1230, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15768.alias, 40203):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc15770.alias, 40203):DoFreeStyle(1120, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc15770.alias, 40203):DisableInteeHeadCtrl(true)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc15871.id, 0, 4020302, 30, true)
    this:CreateLocalGadget(73072057, "1", {x = 1697.91, y = 240.55, z = 9964.54}, {x = 359.95, y = 359.224, z = 358.704}, 3, nil, nil, true, 0, true)
end

function Quest40203:OnSubFinish4020302(arg1)
    print("OnSubFinish4020302")
    this:SafeDestroyQuestNpc(npcs.Npc15710.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15767.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15768.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15770.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc15871.alias, 3)
end

function Quest40203:OnSubStart4020314(arg1)
    print("OnSubStart4020314")
    actorMgr:CreateActorWithPos("Q4020314Trigger", "Actor/Gadget/Q4020314Trigger", 70900002, 0, points._Q4020314TriggerPoint_.pos, points._Q4020314TriggerPoint_.rot, true, false, 3)
    this:CreateLocalGadget(73072057, "1", {x = 1697.91, y = 240.55, z = 9964.54}, {x = 359.95, y = 359.224, z = 358.704}, 3, nil, nil, true, 0, true)
end

function Quest40203:OnSubFinish4020314(arg1)
    print("OnSubFinish4020314")
end

function Quest40203:OnSubStart4020313(arg1)
    print("OnSubStart4020313")
end

function Quest40203:OnSubFinish4020313(arg1)
    print("OnSubFinish4020313")
end

function Quest40203:OnSubStart4020303(arg1)
    print("OnSubStart4020303")
    this:CreateLocalGadget(73072057, "1", {x = 1697.91, y = 240.55, z = 9964.54}, {x = 359.95, y = 359.224, z = 358.704}, 3, nil, nil, true, 0, true)
end

function Quest40203:OnSubFinish4020303(arg1)
    print("OnSubFinish4020303")
end

function Quest40203:OnSubStart4020304(arg1)
    print("OnSubStart4020304")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc15871.id, 0, 4020304, 50, true)
    this:CreateLocalGadget(73072057, "1", {x = 1697.91, y = 240.55, z = 9964.54}, {x = 359.95, y = 359.224, z = 358.704}, 3, nil, nil, true, 0, true)
end

function Quest40203:OnSubFinish4020304(arg1)
    print("OnSubFinish4020304")
    this:SafeDestroyQuestNpc(npcs.Npc15871.alias, 3)
    this:RemoveLocalGadget(73072057, "1")
end

function Quest40203:OnSubStart4020311(arg1)
    print("OnSubStart4020311")
    this:NpcCreateWithNpcTrigger(npcs.Npc1313.id, 0, 30, 4020311)
    this:GetQuestNpcActor(npcs.Npc1313.alias, 40203):DoFreeStyle(1060, true, nil, true, true, false, false)
end

function Quest40203:OnSubFinish4020311(arg1)
    print("OnSubFinish4020311")
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 3)
end

function Quest40203:OnSubStart4020312(arg1)
    print("OnSubStart4020312")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc1312.id, 0, 4020312, 30, true)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc15611.id, 0, false, 0)
    end)
end

function Quest40203:OnSubFinish4020312(arg1)
    print("OnSubFinish4020312")
    this:SafeDestroyQuestNpc(npcs.Npc15611.alias, 3)
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorUtils.ShowContext("NodKraiTourMainPage", 0)
    end)
end

function Quest40203:OnSubStart4020305(arg1)
    print("OnSubStart4020305")
    this:CreateQuestNpc(arg1, npcs.Npc1312.id, 0, false, 0)
    this:DeployStoryByQuest(134020300)
    this:CreateNpcWithCameraLookTrigger("Q4020305_N1313_01", 4020305, npcs.Npc1313.id, 0, 20, 4020305, true)
    this:DeployStoryByQuest(134020301)
end

function Quest40203:OnSubFinish4020305(arg1)
    print("OnSubFinish4020305")
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1312.alias, 1151)
    this:CancelStoryByQuest(134020301)
end

function Quest40203:OnSubStart4020307(arg1)
    print("OnSubStart4020307")
    this:NpcCreateWithNpcTrigger(npcs.Npc7006.id, 0, 10, 4020307)
    this:GetQuestNpcActor(npcs.Npc7006.alias, 40203):DoFreeStyle(1320, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc7006.alias, 40203):DisableInteeHeadCtrl(true)
end

function Quest40203:OnSubFinish4020307(arg1)
    print("OnSubFinish4020307")
    local subQuestState = this:GetSubQuestState(4020306)
    if this:GetSubQuestState(4020308) == 3 and subQuestState == 3 then
        this:ActionSafeCall(function(arg1)
            this:ClearNarratorTask()
            this:QuestNarratorTask(datas.NarratorWithId_4020305, nil)
        end)
    end
end

function Quest40203:OnSubStart4020308(arg1)
    print("OnSubStart4020308")
    this:CreateQuestNpc(arg1, npcs.Npc7009.id, 0, false, 0)
    this:CreateNpcWithCameraLookTrigger("Q4020308_N7009_01", 4020308, npcs.Npc7009.id, 0, 10, 4020308, true)
end

function Quest40203:OnSubFinish4020308(arg1)
    print("OnSubFinish4020308")
    local subQuestState = this:GetSubQuestState(4020306)
    if this:GetSubQuestState(4020307) == 3 and subQuestState == 3 then
        this:ActionSafeCall(function(arg1)
            this:ClearNarratorTask()
            this:QuestNarratorTask(datas.NarratorWithId_4020305, nil)
        end)
    end
end

function Quest40203:OnSubStart4020306(arg1)
    print("OnSubStart4020306")
    this:CreateQuestNpc(arg1, npcs.Npc7001.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7001.alias, 40203):DoFreeStyle(1320, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc7001.alias, 40203):DisableInteeHeadCtrl(true)
    this:CreateNpcWithCameraLookTrigger("Q4020306_N7001_01", 4020306, npcs.Npc7001.id, 0, 10, 4020306, true)
end

function Quest40203:OnSubFinish4020306(arg1)
    print("OnSubFinish4020306")
    local subQuestState = this:GetSubQuestState(4020307)
    if this:GetSubQuestState(4020308) == 3 and subQuestState == 3 then
        this:ActionSafeCall(function(arg1)
            this:ClearNarratorTask()
            this:QuestNarratorTask(datas.NarratorWithId_4020305, nil)
        end)
    end
end

function Quest40203:OnSubStart4020317(arg1)
    print("OnSubStart4020317")
end

function Quest40203:OnSubFinish4020317(arg1)
    print("OnSubFinish4020317")
end

function Quest40203:OnSubStart4020309(arg1)
    print("OnSubStart4020309")
    this:NpcCreateWithNpcTrigger(npcs.Npc7007.id, 0, 10, 4020309)
end

function Quest40203:OnSubFinish4020309(arg1)
    print("OnSubFinish4020309")
    this:SafeDestroyQuestNpc(npcs.Npc7001.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7006.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7009.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7007.alias, 3)
end

function Quest40203:OnSubStart4020310(arg1)
    print("OnSubStart4020310")
    this:NpcCreateWithNpcTriggerAndBlackscreen(4020310, 0, 7, 0, npcs.Npc1313.id)
end

function Quest40203:OnSubFinish4020310(arg1)
    print("OnSubFinish4020310")
    this:SafeDestroyQuestNpc(npcs.Npc1313.alias, 3)
end

return Quest40203

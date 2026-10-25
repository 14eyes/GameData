require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76100 = class("Quest76100", QuestActorProxy)
Quest76100.defaultAlias = "Quest76100"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76100:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76100:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7610001"] = self.OnSubStart7610001,
        ["7610002"] = self.OnSubStart7610002,
        ["7610030"] = self.OnSubStart7610030,
        ["7610051"] = self.OnSubStart7610051,
        ["7610041"] = self.OnSubStart7610041,
        ["7610042"] = self.OnSubStart7610042,
        ["7610003"] = self.OnSubStart7610003,
        ["7610056"] = self.OnSubStart7610056,
        ["7610004"] = self.OnSubStart7610004,
        ["7610034"] = self.OnSubStart7610034,
        ["7610043"] = self.OnSubStart7610043,
        ["7610035"] = self.OnSubStart7610035,
        ["7610005"] = self.OnSubStart7610005,
        ["7610006"] = self.OnSubStart7610006,
        ["7610007"] = self.OnSubStart7610007,
        ["7610008"] = self.OnSubStart7610008,
        ["7610009"] = self.OnSubStart7610009,
        ["7610031"] = self.OnSubStart7610031,
        ["7610032"] = self.OnSubStart7610032,
        ["7610033"] = self.OnSubStart7610033,
        ["7610054"] = self.OnSubStart7610054,
        ["7610055"] = self.OnSubStart7610055,
        ["7610036"] = self.OnSubStart7610036,
        ["7610010"] = self.OnSubStart7610010,
        ["7610052"] = self.OnSubStart7610052,
        ["7610044"] = self.OnSubStart7610044,
        ["7610045"] = self.OnSubStart7610045,
        ["7610050"] = self.OnSubStart7610050,
        ["7610046"] = self.OnSubStart7610046,
        ["7610047"] = self.OnSubStart7610047,
        ["7610048"] = self.OnSubStart7610048,
        ["7610011"] = self.OnSubStart7610011,
        ["7610053"] = self.OnSubStart7610053,
        ["7610012"] = self.OnSubStart7610012,
        ["7610013"] = self.OnSubStart7610013,
        ["7610014"] = self.OnSubStart7610014,
        ["7610015"] = self.OnSubStart7610015,
        ["7610049"] = self.OnSubStart7610049,
        ["7610016"] = self.OnSubStart7610016,
        ["7610017"] = self.OnSubStart7610017,
        ["7610018"] = self.OnSubStart7610018,
        ["7610019"] = self.OnSubStart7610019,
        ["7610020"] = self.OnSubStart7610020,
        ["7610037"] = self.OnSubStart7610037,
        ["7610038"] = self.OnSubStart7610038,
        ["7610039"] = self.OnSubStart7610039,
        ["7610040"] = self.OnSubStart7610040,
        ["7610021"] = self.OnSubStart7610021,
        ["7610022"] = self.OnSubStart7610022,
        ["7610023"] = self.OnSubStart7610023,
        ["7610024"] = self.OnSubStart7610024,
        ["7610025"] = self.OnSubStart7610025,
        ["7610026"] = self.OnSubStart7610026,
        ["7610027"] = self.OnSubStart7610027,
        ["7610028"] = self.OnSubStart7610028,
        ["7610029"] = self.OnSubStart7610029
    }
end

function Quest76100:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7610001"] = self.OnSubFinish7610001,
        ["7610002"] = self.OnSubFinish7610002,
        ["7610030"] = self.OnSubFinish7610030,
        ["7610051"] = self.OnSubFinish7610051,
        ["7610041"] = self.OnSubFinish7610041,
        ["7610042"] = self.OnSubFinish7610042,
        ["7610003"] = self.OnSubFinish7610003,
        ["7610056"] = self.OnSubFinish7610056,
        ["7610004"] = self.OnSubFinish7610004,
        ["7610034"] = self.OnSubFinish7610034,
        ["7610043"] = self.OnSubFinish7610043,
        ["7610035"] = self.OnSubFinish7610035,
        ["7610005"] = self.OnSubFinish7610005,
        ["7610006"] = self.OnSubFinish7610006,
        ["7610007"] = self.OnSubFinish7610007,
        ["7610008"] = self.OnSubFinish7610008,
        ["7610009"] = self.OnSubFinish7610009,
        ["7610031"] = self.OnSubFinish7610031,
        ["7610032"] = self.OnSubFinish7610032,
        ["7610033"] = self.OnSubFinish7610033,
        ["7610054"] = self.OnSubFinish7610054,
        ["7610055"] = self.OnSubFinish7610055,
        ["7610036"] = self.OnSubFinish7610036,
        ["7610010"] = self.OnSubFinish7610010,
        ["7610052"] = self.OnSubFinish7610052,
        ["7610044"] = self.OnSubFinish7610044,
        ["7610045"] = self.OnSubFinish7610045,
        ["7610050"] = self.OnSubFinish7610050,
        ["7610046"] = self.OnSubFinish7610046,
        ["7610047"] = self.OnSubFinish7610047,
        ["7610048"] = self.OnSubFinish7610048,
        ["7610011"] = self.OnSubFinish7610011,
        ["7610053"] = self.OnSubFinish7610053,
        ["7610012"] = self.OnSubFinish7610012,
        ["7610013"] = self.OnSubFinish7610013,
        ["7610014"] = self.OnSubFinish7610014,
        ["7610015"] = self.OnSubFinish7610015,
        ["7610049"] = self.OnSubFinish7610049,
        ["7610016"] = self.OnSubFinish7610016,
        ["7610017"] = self.OnSubFinish7610017,
        ["7610018"] = self.OnSubFinish7610018,
        ["7610019"] = self.OnSubFinish7610019,
        ["7610020"] = self.OnSubFinish7610020,
        ["7610037"] = self.OnSubFinish7610037,
        ["7610038"] = self.OnSubFinish7610038,
        ["7610039"] = self.OnSubFinish7610039,
        ["7610040"] = self.OnSubFinish7610040,
        ["7610021"] = self.OnSubFinish7610021,
        ["7610022"] = self.OnSubFinish7610022,
        ["7610023"] = self.OnSubFinish7610023,
        ["7610024"] = self.OnSubFinish7610024,
        ["7610025"] = self.OnSubFinish7610025,
        ["7610026"] = self.OnSubFinish7610026,
        ["7610027"] = self.OnSubFinish7610027,
        ["7610028"] = self.OnSubFinish7610028,
        ["7610029"] = self.OnSubFinish7610029
    }
end

function Quest76100:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7610003"] = self.OnSubFailed7610003,
        ["7610056"] = self.OnSubFailed7610056,
        ["7610004"] = self.OnSubFailed7610004,
        ["7610034"] = self.OnSubFailed7610034,
        ["7610052"] = self.OnSubFailed7610052,
        ["7610046"] = self.OnSubFailed7610046,
        ["7610012"] = self.OnSubFailed7610012,
        ["7610016"] = self.OnSubFailed7610016
    }
end

function Quest76100:Start()
    print("Start")
end

function Quest76100:OnDestroy()
    print("OnDestroy")
end

function Quest76100:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76100:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76100:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76100:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7610001Trigger", 0)
    this:ActorDestroy("Q7610003Trigger", 0)
    this:ActorDestroy("Q7610006Trigger", 0)
    this:ActorDestroy("Q7610008Trigger", 0)
    this:ActorDestroy("Q7610011Trigger", 0)
    this:ActorDestroy("Q7610013Trigger", 0)
    this:ActorDestroy("Q7610015Trigger", 0)
    this:ActorDestroy("Q7610017Trigger", 0)
    this:ActorDestroy("Q7610019Trigger", 0)
    this:ActorDestroy("Q7610026Trigger", 0)
    this:ActorDestroy("Q7610028Trigger", 0)
    this:ActorDestroy("Q7610034Trigger", 0)
    this:ActorDestroy("Q7610032Trigger", 0)
    this:ActorDestroy("Q7610044Trigger", 0)
    this:ActorDestroy("Q7610050Trigger_1", 0)
    this:ActorDestroy("Q7610052Trigger_pose", 76100)
    this:ActorDestroy("Q7610053Trigger", 0)
end

function Quest76100:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 7610041 then
        this:AfterMainPageActiveSafeCall(function(arg1)
            actorUtils.ShowQuestSpecHint("50_011", function(arg1)
                actorUtils.FinishQuestID(false, 7610041)
            end, nil)
        end)
    end
end

function Quest76100:ActorDestroy(arg1, arg2)
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

function Quest76100:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76100:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76100:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76100:OnSubStart7610001(arg1)
    print("OnSubStart7610001")
    this:CreateQuestNpc(arg1, npcs.Npc7181.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7182.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7183.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7184.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7610001Trigger", "Actor/Gadget/Q7610001Trigger", 70900002, 0, points._Q7610001TriggerPoint_.pos, points._Q7610001TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest76100:OnSubFinish7610001(arg1)
    print("OnSubFinish7610001")
end

function Quest76100:OnSubStart7610002(arg1)
    print("OnSubStart7610002")
    this:RequestInteraction(npcs.Npc7181.alias, "", true)
end

function Quest76100:OnSubFinish7610002(arg1)
    print("OnSubFinish7610002")
end

function Quest76100:OnSubStart7610030(arg1)
    print("OnSubStart7610030")
    this:CreateQuestNpc(arg1, npcs.Npc7608.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7610.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc7181.alias, "", true)
end

function Quest76100:OnSubFinish7610030(arg1)
    print("OnSubFinish7610030")
    this:SafeDestroyQuestNpc(npcs.Npc7608.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7610.alias, 3)
end

function Quest76100:OnSubStart7610051(arg1)
    print("OnSubStart7610051")
end

function Quest76100:OnSubFinish7610051(arg1)
    print("OnSubFinish7610051")
end

function Quest76100:OnSubStart7610041(arg1)
    print("OnSubStart7610041")
    this:CreateQuestNpc(arg1, npcs.Npc7184.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7184.alias, 76100):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc7181.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7181.alias, 76100):DoFreeStyle(1191, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc7182.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7182.alias, 76100):DoFreeStyle(4100, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc7183.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7183.alias, 76100):DoFreeStyle(1122, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22340.id, 0, false, 0)
end

function Quest76100:OnSubFinish7610041(arg1)
    print("OnSubFinish7610041")
    this:SafeDestroyQuestNpc(npcs.Npc22340.alias, 3)
end

function Quest76100:OnSubStart7610042(arg1)
    print("OnSubStart7610042")
    this:CreateQuestNpc(arg1, npcs.Npc7184.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc7181.id, 0, 20, 7610042)
    this:CreateQuestNpc(arg1, npcs.Npc7182.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7183.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7608.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7610.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc7181.alias, "", true)
end

function Quest76100:OnSubFinish7610042(arg1)
    print("OnSubFinish7610042")
    this:SafeDestroyQuestNpc(npcs.Npc7184.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7181.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7182.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7183.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7608.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7610.alias, 3)
end

function Quest76100:OnSubStart7610003(arg1)
    print("OnSubStart7610003")
    actorMgr:CreateActorWithPos("Q7610003Trigger", "Actor/Gadget/Q7610003Trigger", 70900002, 0, points._Q7610003TriggerPoint_.pos, points._Q7610003TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest76100:OnSubFinish7610003(arg1)
    print("OnSubFinish7610003")
end

function Quest76100:OnSubFailed7610003(arg1)
    print("OnSubFailed7610003")
    this:RecycleAllRes()
end

function Quest76100:OnSubStart7610056(arg1)
    print("OnSubStart7610056")
end

function Quest76100:OnSubFinish7610056(arg1)
    print("OnSubFinish7610056")
end

function Quest76100:OnSubFailed7610056(arg1)
    print("OnSubFailed7610056")
    this:RecycleAllRes()
end

function Quest76100:OnSubStart7610004(arg1)
    print("OnSubStart7610004")
end

function Quest76100:OnSubFinish7610004(arg1)
    print("OnSubFinish7610004")
end

function Quest76100:OnSubFailed7610004(arg1)
    print("OnSubFailed7610004")
    this:RecycleAllRes()
end

function Quest76100:OnSubStart7610034(arg1)
    print("OnSubStart7610034")
    actorMgr:CreateActorWithPos("Q7610034Trigger", "Actor/Gadget/Q7610034Trigger", 70900002, 0, points._Q7610034TriggerPoint_.pos, points._Q7610034TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest76100:OnSubFinish7610034(arg1)
    print("OnSubFinish7610034")
end

function Quest76100:OnSubFailed7610034(arg1)
    print("OnSubFailed7610034")
    this:RecycleAllRes()
end

function Quest76100:OnSubStart7610043(arg1)
    print("OnSubStart7610043")
    this:CreateQuestNpc(arg1, npcs.Npc22343.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7181.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7182.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7183.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22342.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7184.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc22343.alias, "", false)
    this:CreateSetWeatherTrigger("W7610043", 3, {x = 6315.971, y = 245.859, z = 9934.396}, 30, "BigWorld/ESP_Nd63_YZLZZ_Boss")
end

function Quest76100:OnSubFinish7610043(arg1)
    print("OnSubFinish7610043")
    this:SafeDestroyQuestNpc(npcs.Npc22343.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7181.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7182.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7183.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22342.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7184.alias, 3)
end

function Quest76100:OnSubStart7610035(arg1)
    print("OnSubStart7610035")
end

function Quest76100:OnSubFinish7610035(arg1)
    print("OnSubFinish7610035")
end

function Quest76100:OnSubStart7610005(arg1)
    print("OnSubStart7610005")
    this:NpcCreateWithNpcTrigger(npcs.Npc7181.id, 0, 30, 7610005)
    this:CreateQuestNpc(arg1, npcs.Npc22213.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7183.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7182.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7184.id, 0, false, 0)
end

function Quest76100:OnSubFinish7610005(arg1)
    print("OnSubFinish7610005")
    this:SafeDestroyQuestNpc(npcs.Npc7181.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22213.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7183.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7182.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7184.alias, 3)
end

function Quest76100:OnSubStart7610006(arg1)
    print("OnSubStart7610006")
    actorMgr:CreateActorWithPos("Q7610006Trigger", "Actor/Gadget/Q7610006Trigger", 70900002, 0, points._Q7610006TriggerPoint_.pos, points._Q7610006TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    this:ClearWeatherTrigger("W7610043")
    this:DeployStoryByQuest(147610001)
end

function Quest76100:OnSubFinish7610006(arg1)
    print("OnSubFinish7610006")
end

function Quest76100:OnSubStart7610007(arg1)
    print("OnSubStart7610007")
end

function Quest76100:OnSubFinish7610007(arg1)
    print("OnSubFinish7610007")
end

function Quest76100:OnSubStart7610008(arg1)
    print("OnSubStart7610008")
    actorMgr:CreateActorWithPos("Q7610008Trigger", "Actor/Gadget/Q7610008Trigger", 70900002, 0, points._Q7610008TriggerPoint_.pos, points._Q7610008TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    this:DeployStoryByQuest(147610001)
end

function Quest76100:OnSubFinish7610008(arg1)
    print("OnSubFinish7610008")
    this:CancelStoryByQuest(147610001)
end

function Quest76100:OnSubStart7610009(arg1)
    print("OnSubStart7610009")
    this:NpcCreateWithNpcTrigger(npcs.Npc7181.id, 0, 30, 7610009)
    this:CreateQuestNpc(arg1, npcs.Npc7182.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7183.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7184.id, 0, false, 0)
end

function Quest76100:OnSubFinish7610009(arg1)
    print("OnSubFinish7610009")
    this:SafeDestroyQuestNpc(npcs.Npc7181.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7182.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7183.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7184.alias, 3)
end

function Quest76100:OnSubStart7610031(arg1)
    print("OnSubStart7610031")
end

function Quest76100:OnSubFinish7610031(arg1)
    print("OnSubFinish7610031")
end

function Quest76100:OnSubStart7610032(arg1)
    print("OnSubStart7610032")
    actorMgr:CreateActorWithPos("Q7610032Trigger", "Actor/Gadget/Q7610032Trigger", 70900002, 0, points._Q7610032TriggerPoint_.pos, points._Q7610032TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest76100:OnSubFinish7610032(arg1)
    print("OnSubFinish7610032")
end

function Quest76100:OnSubStart7610033(arg1)
    print("OnSubStart7610033")
end

function Quest76100:OnSubFinish7610033(arg1)
    print("OnSubFinish7610033")
end

function Quest76100:OnSubStart7610054(arg1)
    print("OnSubStart7610054")
end

function Quest76100:OnSubFinish7610054(arg1)
    print("OnSubFinish7610054")
end

function Quest76100:OnSubStart7610055(arg1)
    print("OnSubStart7610055")
end

function Quest76100:OnSubFinish7610055(arg1)
    print("OnSubFinish7610055")
end

function Quest76100:OnSubStart7610036(arg1)
    print("OnSubStart7610036")
end

function Quest76100:OnSubFinish7610036(arg1)
    print("OnSubFinish7610036")
end

function Quest76100:OnSubStart7610010(arg1)
    print("OnSubStart7610010")
end

function Quest76100:OnSubFinish7610010(arg1)
    print("OnSubFinish7610010")
    this:SetNavigationByMainId(76100, true)
end

function Quest76100:OnSubStart7610052(arg1)
    print("OnSubStart7610052")
    this:CreateQuestNpc(arg1, npcs.Npc7608.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7608.alias, 76100):DoFreeStyle(1280, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc7182.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7182.alias, 76100):DoFreeStyle(4122, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc22382.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22382.alias, 76100):DoFreeStyle(1060, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc22385.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22385.alias, 76100):DoFreeStyle(1130, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc7182.alias, 76100):PlayEmoSync("", "", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkB01", 0, false, true, true)
    this:GetQuestNpcActor(npcs.Npc7182.alias, 76100):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q7610052Trigger_pose", "Actor/Gadget/Q7610052Trigger_pose", 70900002, 0, points._Q7610052Trigger_posePoint_.pos, points._Q7610052Trigger_posePoint_.rot, true, false, 3, nil, 0, 76100)
end

function Quest76100:OnSubFinish7610052(arg1)
    print("OnSubFinish7610052")
    this:SafeDestroyQuestNpc(npcs.Npc7608.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7182.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22382.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22385.alias, 3)
    this:ActorDestroy("Q7610052Trigger_pose", 0)
end

function Quest76100:OnSubFailed7610052(arg1)
    print("OnSubFailed7610052")
    this:ActorDestroy("Q7610052Trigger_pose", 0)
end

function Quest76100:OnSubStart7610044(arg1)
    print("OnSubStart7610044")
    actorMgr:CreateActorWithPos("Q7610044Trigger", "Actor/Gadget/Q7610044Trigger", 70900002, 0, points._Q7610044TriggerPoint_.pos, points._Q7610044TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest76100:OnSubFinish7610044(arg1)
    print("OnSubFinish7610044")
end

function Quest76100:OnSubStart7610045(arg1)
    print("OnSubStart7610045")
    this:RequestInteraction(npcs.Npc7181.alias, "", true)
end

function Quest76100:OnSubFinish7610045(arg1)
    print("OnSubFinish7610045")
end

function Quest76100:OnSubStart7610050(arg1)
    print("OnSubStart7610050")
    actorMgr:CreateActorWithPos("Q7610050Trigger_1", "Actor/Gadget/Q7610050Trigger_1", 70900002, 0, points._Q7610050Trigger_1Point_.pos, points._Q7610050Trigger_1Point_.rot, true, false, 3, nil, 0, 0)
end

function Quest76100:OnSubFinish7610050(arg1)
    print("OnSubFinish7610050")
end

function Quest76100:OnSubStart7610046(arg1)
    print("OnSubStart7610046")
end

function Quest76100:OnSubFinish7610046(arg1)
    print("OnSubFinish7610046")
end

function Quest76100:OnSubFailed7610046(arg1)
    print("OnSubFailed7610046")
    this:RecycleAllRes()
end

function Quest76100:OnSubStart7610047(arg1)
    print("OnSubStart7610047")
    this:RequestInteraction(npcs.Npc7181.alias, "", true)
end

function Quest76100:OnSubFinish7610047(arg1)
    print("OnSubFinish7610047")
end

function Quest76100:OnSubStart7610048(arg1)
    print("OnSubStart7610048")
end

function Quest76100:OnSubFinish7610048(arg1)
    print("OnSubFinish7610048")
end

function Quest76100:OnSubStart7610011(arg1)
    print("OnSubStart7610011")
    this:CreateQuestNpc(arg1, npcs.Npc22250.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7610011Trigger", "Actor/Gadget/Q7610011Trigger", 70900002, 0, points._Q7610011TriggerPoint_.pos, points._Q7610011TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest76100:OnSubFinish7610011(arg1)
    print("OnSubFinish7610011")
    this:SafeDestroyQuestNpc(npcs.Npc22250.alias, 3)
end

function Quest76100:OnSubStart7610053(arg1)
    print("OnSubStart7610053")
    this:CreateQuestNpc(arg1, npcs.Npc22382.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22382.alias, 76100):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22385.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22385.alias, 76100):DoFreeStyle(1180, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7610053Trigger", "Actor/Gadget/Q7610053Trigger", 70900002, 0, points._Q7610053TriggerPoint_.pos, points._Q7610053TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest76100:OnSubFinish7610053(arg1)
    print("OnSubFinish7610053")
    this:TransmitPlayerById(arg1, 5, nil, nil, nil)
end

function Quest76100:OnSubStart7610012(arg1)
    print("OnSubStart7610012")
    this:GetQuestNpcActor(npcs.Npc22382.alias, 76100):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc22385.alias, 76100):DoFreeStyle(1180, true, nil, true, true, false, false)
    this:DeployStoryByQuest(147610000)
    this:AfterMainPageActiveSafeCall(function(arg1)
        this:DisableMainPageWithConfigByQuest(true, "DisableAll")
    end)
end

function Quest76100:OnSubFinish7610012(arg1)
    print("OnSubFinish7610012")
    this:CancelStoryByQuest(147610000)
    this:DisableMainPageWithConfigByQuest(false, "DisableAll")
end

function Quest76100:OnSubFailed7610012(arg1)
    print("OnSubFailed7610012")
    this:RecycleAllRes()
    this:CancelStoryByQuest(147610000)
    this:DisableMainPageWithConfigByQuest(false, "DisableAll")
end

function Quest76100:OnSubStart7610013(arg1)
    print("OnSubStart7610013")
    this:GetQuestNpcActor(npcs.Npc22382.alias, 76100):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc22385.alias, 76100):DoFreeStyle(1180, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7610013Trigger", "Actor/Gadget/Q7610013Trigger", 70900002, 0, points._Q7610013TriggerPoint_.pos, points._Q7610013TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest76100:OnSubFinish7610013(arg1)
    print("OnSubFinish7610013")
end

function Quest76100:OnSubStart7610014(arg1)
    print("OnSubStart7610014")
    this:CreateQuestNpc(arg1, npcs.Npc7181.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7183.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7184.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22382.alias, 76100):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc22385.alias, 76100):DoFreeStyle(1180, true, nil, true, true, false, false)
    this:RequestInteraction(npcs.Npc7181.alias, "", true)
end

function Quest76100:OnSubFinish7610014(arg1)
    print("OnSubFinish7610014")
    this:SafeDestroyQuestNpc(npcs.Npc7181.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7183.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7184.alias, 3)
end

function Quest76100:OnSubStart7610015(arg1)
    print("OnSubStart7610015")
    this:GetQuestNpcActor(npcs.Npc22382.alias, 76100):DoFreeStyle(1170, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc22385.alias, 76100):DoFreeStyle(1180, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7610015Trigger", "Actor/Gadget/Q7610015Trigger", 70900002, 0, points._Q7610015TriggerPoint_.pos, points._Q7610015TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest76100:OnSubFinish7610015(arg1)
    print("OnSubFinish7610015")
    this:SafeDestroyQuestNpc(npcs.Npc22382.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22385.alias, 3)
end

function Quest76100:OnSubStart7610049(arg1)
    print("OnSubStart7610049")
    this:NpcCreateWithNpcTrigger(npcs.Npc22341.id, 0, 39, 7610049)
    this:RequestInteraction(npcs.Npc22341.alias, "", true)
end

function Quest76100:OnSubFinish7610049(arg1)
    print("OnSubFinish7610049")
end

function Quest76100:OnSubStart7610016(arg1)
    print("OnSubStart7610016")
    this:CreateQuestNpc(arg1, npcs.Npc22341.id, 0, false, 0)
    this:LevelReadySafeCall(function(arg1)
        this:ActionSafeCall(function(arg1)
            this:GetQuestNpcActor(npcs.Npc22341.alias, 76100):ForceAvatarWalkByDist(100, 100)
            this:DeployStoryByQuest(147610100)
        end)
    end)
end

function Quest76100:OnSubFinish7610016(arg1)
    print("OnSubFinish7610016")
    this:SafeDestroyQuestNpc(npcs.Npc22341.alias, 3)
    this:DisableMainPageWithConfigByQuest(false, "DisableIneffaQuest02")
    this:GetQuestNpcActor(npcs.Npc22341.alias, 76100):ResetForceAvatarWalk()
    this:CancelStoryByQuest(147610100)
end

function Quest76100:OnSubFailed7610016(arg1)
    print("OnSubFailed7610016")
    this:RecycleAllRes()
    this:DisableMainPageWithConfigByQuest(false, "DisableIneffaQuest02")
    this:GetQuestNpcActor(npcs.Npc22341.alias, 76100):ResetForceAvatarWalk()
    this:ExitSceneLookCamera()
    this:CancelStoryByQuest(147610100)
end

function Quest76100:OnSubStart7610017(arg1)
    print("OnSubStart7610017")
    actorMgr:CreateActorWithPos("Q7610017Trigger", "Actor/Gadget/Q7610017Trigger", 70900002, 0, points._Q7610017TriggerPoint_.pos, points._Q7610017TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest76100:OnSubFinish7610017(arg1)
    print("OnSubFinish7610017")
end

function Quest76100:OnSubStart7610018(arg1)
    print("OnSubStart7610018")
    this:NpcCreateWithNpcTrigger(npcs.Npc22213.id, 0, 30, 7610018)
    this:CreateQuestNpc(arg1, npcs.Npc7181.id, 0, false, 0)
end

function Quest76100:OnSubFinish7610018(arg1)
    print("OnSubFinish7610018")
    this:SafeDestroyQuestNpc(npcs.Npc22213.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7181.alias, 3)
end

function Quest76100:OnSubStart7610019(arg1)
    print("OnSubStart7610019")
    actorMgr:CreateActorWithPos("Q7610019Trigger", "Actor/Gadget/Q7610019Trigger", 70900002, 0, points._Q7610019TriggerPoint_.pos, points._Q7610019TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest76100:OnSubFinish7610019(arg1)
    print("OnSubFinish7610019")
end

function Quest76100:OnSubStart7610020(arg1)
    print("OnSubStart7610020")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7610020, 0, 30, 0.5, npcs.Npc22213.id)
    this:CreateQuestNpc(arg1, npcs.Npc7183.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7184.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc7181.id, 0, 20, 7610020)
end

function Quest76100:OnSubFinish7610020(arg1)
    print("OnSubFinish7610020")
    this:SafeDestroyQuestNpc(npcs.Npc22213.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7183.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7184.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc7181.alias)
end

function Quest76100:OnSubStart7610037(arg1)
    print("OnSubStart7610037")
end

function Quest76100:OnSubFinish7610037(arg1)
    print("OnSubFinish7610037")
end

function Quest76100:OnSubStart7610038(arg1)
    print("OnSubStart7610038")
end

function Quest76100:OnSubFinish7610038(arg1)
    print("OnSubFinish7610038")
end

function Quest76100:OnSubStart7610039(arg1)
    print("OnSubStart7610039")
end

function Quest76100:OnSubFinish7610039(arg1)
    print("OnSubFinish7610039")
end

function Quest76100:OnSubStart7610040(arg1)
    print("OnSubStart7610040")
end

function Quest76100:OnSubFinish7610040(arg1)
    print("OnSubFinish7610040")
end

function Quest76100:OnSubStart7610021(arg1)
    print("OnSubStart7610021")
end

function Quest76100:OnSubFinish7610021(arg1)
    print("OnSubFinish7610021")
end

function Quest76100:OnSubStart7610022(arg1)
    print("OnSubStart7610022")
    this:CreateQuestNpc(arg1, npcs.Npc7184.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc7184.alias, 76100):DoFreeStyle(4120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc7181.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7183.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22213.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc7181.alias, "", true)
end

function Quest76100:OnSubFinish7610022(arg1)
    print("OnSubFinish7610022")
    this:SafeDestroyQuestNpc(npcs.Npc7181.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22213.alias, 3)
end

function Quest76100:OnSubStart7610023(arg1)
    print("OnSubStart7610023")
    this:GetQuestNpcActor(npcs.Npc7184.alias, 76100):DoFreeStyle(4120, true, nil, true, true, false, false)
end

function Quest76100:OnSubFinish7610023(arg1)
    print("OnSubFinish7610023")
end

function Quest76100:OnSubStart7610024(arg1)
    print("OnSubStart7610024")
    this:NpcCreateWithNpcTrigger(npcs.Npc7181.id, 0, 30, 7610024)
    this:GetQuestNpcActor(npcs.Npc7184.alias, 76100):DoFreeStyle(4120, true, nil, true, true, false, false)
    this:RequestInteraction(npcs.Npc7181.alias, "", true)
end

function Quest76100:OnSubFinish7610024(arg1)
    print("OnSubFinish7610024")
    this:SafeDestroyQuestNpc(npcs.Npc7181.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7184.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7183.alias, 3)
end

function Quest76100:OnSubStart7610025(arg1)
    print("OnSubStart7610025")
end

function Quest76100:OnSubFinish7610025(arg1)
    print("OnSubFinish7610025")
end

function Quest76100:OnSubStart7610026(arg1)
    print("OnSubStart7610026")
    actorMgr:CreateActorWithPos("Q7610026Trigger", "Actor/Gadget/Q7610026Trigger", 70900002, 0, points._Q7610026TriggerPoint_.pos, points._Q7610026TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest76100:OnSubFinish7610026(arg1)
    print("OnSubFinish7610026")
end

function Quest76100:OnSubStart7610027(arg1)
    print("OnSubStart7610027")
    this:NpcCreateWithNpcTrigger(npcs.Npc7181.id, 0, 30, 7610027)
    this:CreateQuestNpc(arg1, npcs.Npc7184.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc7183.id, 0, false, 0)
end

function Quest76100:OnSubFinish7610027(arg1)
    print("OnSubFinish7610027")
    this:SafeDestroyQuestNpc(npcs.Npc7181.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7184.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc7183.alias, 3)
    this:TransmitPlayerByData(arg1, 3, datas.ClientConfigVar, nil, nil, nil)
end

function Quest76100:OnSubStart7610028(arg1)
    print("OnSubStart7610028")
    actorMgr:CreateActorWithPos("Q7610028Trigger", "Actor/Gadget/Q7610028Trigger", 70900002, 0, points._Q7610028TriggerPoint_.pos, points._Q7610028TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest76100:OnSubFinish7610028(arg1)
    print("OnSubFinish7610028")
end

function Quest76100:OnSubStart7610029(arg1)
    print("OnSubStart7610029")
    this:NpcCreateWithNpcTrigger(npcs.Npc7181.id, 0, 30, 7610029)
end

function Quest76100:OnSubFinish7610029(arg1)
    print("OnSubFinish7610029")
    this:SafeDestroyQuestNpc(npcs.Npc7181.alias, 3)
    this:SetNavigationByMainId(76101, true)
end

return Quest76100

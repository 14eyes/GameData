require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest74053 = class("Quest74053", QuestActorProxy)
Quest74053.defaultAlias = "Quest74053"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest74053:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest74053:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7405301"] = self.OnSubStart7405301,
        ["7405380"] = self.OnSubStart7405380,
        ["7405302"] = self.OnSubStart7405302,
        ["7405303"] = self.OnSubStart7405303,
        ["7405304"] = self.OnSubStart7405304,
        ["7405305"] = self.OnSubStart7405305,
        ["7405306"] = self.OnSubStart7405306,
        ["7405307"] = self.OnSubStart7405307,
        ["7405308"] = self.OnSubStart7405308,
        ["7405309"] = self.OnSubStart7405309,
        ["7405310"] = self.OnSubStart7405310,
        ["7405311"] = self.OnSubStart7405311,
        ["7405332"] = self.OnSubStart7405332,
        ["7405327"] = self.OnSubStart7405327,
        ["7405313"] = self.OnSubStart7405313,
        ["7405326"] = self.OnSubStart7405326,
        ["7405381"] = self.OnSubStart7405381,
        ["7405314"] = self.OnSubStart7405314,
        ["7405316"] = self.OnSubStart7405316,
        ["7405320"] = self.OnSubStart7405320,
        ["7405321"] = self.OnSubStart7405321,
        ["7405322"] = self.OnSubStart7405322,
        ["7405323"] = self.OnSubStart7405323,
        ["7405324"] = self.OnSubStart7405324,
        ["7405328"] = self.OnSubStart7405328,
        ["7405335"] = self.OnSubStart7405335,
        ["7405336"] = self.OnSubStart7405336,
        ["7405337"] = self.OnSubStart7405337,
        ["7405340"] = self.OnSubStart7405340,
        ["7405341"] = self.OnSubStart7405341,
        ["7405384"] = self.OnSubStart7405384,
        ["7405342"] = self.OnSubStart7405342,
        ["7405346"] = self.OnSubStart7405346,
        ["7405347"] = self.OnSubStart7405347,
        ["7405385"] = self.OnSubStart7405385,
        ["7405319"] = self.OnSubStart7405319,
        ["7405348"] = self.OnSubStart7405348,
        ["7405383"] = self.OnSubStart7405383,
        ["7405338"] = self.OnSubStart7405338,
        ["7405349"] = self.OnSubStart7405349,
        ["7405350"] = self.OnSubStart7405350,
        ["7405317"] = self.OnSubStart7405317,
        ["7405334"] = self.OnSubStart7405334,
        ["7405312"] = self.OnSubStart7405312,
        ["7405376"] = self.OnSubStart7405376,
        ["7405333"] = self.OnSubStart7405333,
        ["7405353"] = self.OnSubStart7405353,
        ["7405354"] = self.OnSubStart7405354,
        ["7405355"] = self.OnSubStart7405355,
        ["7405356"] = self.OnSubStart7405356,
        ["7405357"] = self.OnSubStart7405357,
        ["7405358"] = self.OnSubStart7405358,
        ["7405359"] = self.OnSubStart7405359,
        ["7405360"] = self.OnSubStart7405360,
        ["7405361"] = self.OnSubStart7405361,
        ["7405365"] = self.OnSubStart7405365,
        ["7405366"] = self.OnSubStart7405366,
        ["7405367"] = self.OnSubStart7405367,
        ["7405369"] = self.OnSubStart7405369,
        ["7405370"] = self.OnSubStart7405370,
        ["7405378"] = self.OnSubStart7405378,
        ["7405379"] = self.OnSubStart7405379,
        ["7405339"] = self.OnSubStart7405339,
        ["7405343"] = self.OnSubStart7405343,
        ["7405344"] = self.OnSubStart7405344,
        ["7405345"] = self.OnSubStart7405345,
        ["7405351"] = self.OnSubStart7405351,
        ["7405352"] = self.OnSubStart7405352,
        ["7405315"] = self.OnSubStart7405315,
        ["7405318"] = self.OnSubStart7405318,
        ["7405382"] = self.OnSubStart7405382,
        ["7405329"] = self.OnSubStart7405329,
        ["7405330"] = self.OnSubStart7405330,
        ["7405331"] = self.OnSubStart7405331,
        ["7405377"] = self.OnSubStart7405377,
        ["7405375"] = self.OnSubStart7405375,
        ["7405364"] = self.OnSubStart7405364,
        ["7405374"] = self.OnSubStart7405374,
        ["7405373"] = self.OnSubStart7405373,
        ["7405372"] = self.OnSubStart7405372,
        ["7405371"] = self.OnSubStart7405371,
        ["7405368"] = self.OnSubStart7405368,
        ["7405362"] = self.OnSubStart7405362,
        ["7405325"] = self.OnSubStart7405325,
        ["7405363"] = self.OnSubStart7405363
    }
end

function Quest74053:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7405301"] = self.OnSubFinish7405301,
        ["7405380"] = self.OnSubFinish7405380,
        ["7405302"] = self.OnSubFinish7405302,
        ["7405303"] = self.OnSubFinish7405303,
        ["7405304"] = self.OnSubFinish7405304,
        ["7405305"] = self.OnSubFinish7405305,
        ["7405306"] = self.OnSubFinish7405306,
        ["7405307"] = self.OnSubFinish7405307,
        ["7405308"] = self.OnSubFinish7405308,
        ["7405309"] = self.OnSubFinish7405309,
        ["7405310"] = self.OnSubFinish7405310,
        ["7405311"] = self.OnSubFinish7405311,
        ["7405332"] = self.OnSubFinish7405332,
        ["7405327"] = self.OnSubFinish7405327,
        ["7405313"] = self.OnSubFinish7405313,
        ["7405326"] = self.OnSubFinish7405326,
        ["7405381"] = self.OnSubFinish7405381,
        ["7405314"] = self.OnSubFinish7405314,
        ["7405316"] = self.OnSubFinish7405316,
        ["7405320"] = self.OnSubFinish7405320,
        ["7405321"] = self.OnSubFinish7405321,
        ["7405322"] = self.OnSubFinish7405322,
        ["7405323"] = self.OnSubFinish7405323,
        ["7405324"] = self.OnSubFinish7405324,
        ["7405328"] = self.OnSubFinish7405328,
        ["7405335"] = self.OnSubFinish7405335,
        ["7405336"] = self.OnSubFinish7405336,
        ["7405337"] = self.OnSubFinish7405337,
        ["7405340"] = self.OnSubFinish7405340,
        ["7405341"] = self.OnSubFinish7405341,
        ["7405384"] = self.OnSubFinish7405384,
        ["7405342"] = self.OnSubFinish7405342,
        ["7405346"] = self.OnSubFinish7405346,
        ["7405347"] = self.OnSubFinish7405347,
        ["7405385"] = self.OnSubFinish7405385,
        ["7405319"] = self.OnSubFinish7405319,
        ["7405348"] = self.OnSubFinish7405348,
        ["7405383"] = self.OnSubFinish7405383,
        ["7405338"] = self.OnSubFinish7405338,
        ["7405349"] = self.OnSubFinish7405349,
        ["7405350"] = self.OnSubFinish7405350,
        ["7405317"] = self.OnSubFinish7405317,
        ["7405334"] = self.OnSubFinish7405334,
        ["7405312"] = self.OnSubFinish7405312,
        ["7405376"] = self.OnSubFinish7405376,
        ["7405333"] = self.OnSubFinish7405333,
        ["7405353"] = self.OnSubFinish7405353,
        ["7405354"] = self.OnSubFinish7405354,
        ["7405355"] = self.OnSubFinish7405355,
        ["7405356"] = self.OnSubFinish7405356,
        ["7405357"] = self.OnSubFinish7405357,
        ["7405358"] = self.OnSubFinish7405358,
        ["7405359"] = self.OnSubFinish7405359,
        ["7405360"] = self.OnSubFinish7405360,
        ["7405361"] = self.OnSubFinish7405361,
        ["7405365"] = self.OnSubFinish7405365,
        ["7405366"] = self.OnSubFinish7405366,
        ["7405367"] = self.OnSubFinish7405367,
        ["7405369"] = self.OnSubFinish7405369,
        ["7405370"] = self.OnSubFinish7405370,
        ["7405378"] = self.OnSubFinish7405378,
        ["7405379"] = self.OnSubFinish7405379,
        ["7405339"] = self.OnSubFinish7405339,
        ["7405343"] = self.OnSubFinish7405343,
        ["7405344"] = self.OnSubFinish7405344,
        ["7405345"] = self.OnSubFinish7405345,
        ["7405351"] = self.OnSubFinish7405351,
        ["7405352"] = self.OnSubFinish7405352,
        ["7405315"] = self.OnSubFinish7405315,
        ["7405318"] = self.OnSubFinish7405318,
        ["7405382"] = self.OnSubFinish7405382,
        ["7405329"] = self.OnSubFinish7405329,
        ["7405330"] = self.OnSubFinish7405330,
        ["7405331"] = self.OnSubFinish7405331,
        ["7405377"] = self.OnSubFinish7405377,
        ["7405375"] = self.OnSubFinish7405375,
        ["7405364"] = self.OnSubFinish7405364,
        ["7405374"] = self.OnSubFinish7405374,
        ["7405373"] = self.OnSubFinish7405373,
        ["7405372"] = self.OnSubFinish7405372,
        ["7405371"] = self.OnSubFinish7405371,
        ["7405368"] = self.OnSubFinish7405368,
        ["7405362"] = self.OnSubFinish7405362,
        ["7405325"] = self.OnSubFinish7405325,
        ["7405363"] = self.OnSubFinish7405363
    }
end

function Quest74053:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest74053:Start()
    print("Start")
end

function Quest74053:OnDestroy()
    print("OnDestroy")
end

function Quest74053:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest74053:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest74053:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest74053:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest74053:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
        this:RequestInteraction(arg4)
    end)
end

function Quest74053:CheckSubQuestState(arg1, arg2, arg3)
    local subQuestState = self:GetSubQuestState(arg1)
    local v
    if arg3 then
        v = subQuestState ~= arg2
    else
        v = subQuestState == arg2
    end

    return v
end

function Quest74053:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7405319)
    end
end

function Quest74053:OnSubStart7405301(arg1)
    print("OnSubStart7405301")
    this:CreateQuestNpc(arg1, npcs.Npc21206Data.id, 0)
end

function Quest74053:OnSubFinish7405301(arg1)
    print("OnSubFinish7405301")
end

function Quest74053:OnSubStart7405380(arg1)
    print("OnSubStart7405380")
    this:CreateQuestNpc(arg1, npcs.Npc5253Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5253Data.alias):DoFreeStyle(4180, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7405380Trigger", "Actor/Gadget/Q7405380Trigger", 70900002, 0, points.TPos_Q7405380Trigger.pos, points.TPos_Q7405380Trigger.rot, true, false, 3)
end

function Quest74053:OnSubFinish7405380(arg1)
    print("OnSubFinish7405380")
    if this:CheckSubQuestState(7405301, 3, false) then
        this:NarratorOnlyTaskByData(datas.Narrator_7405301)
    else
        this:NarratorOnlyTaskByData(datas.Narrator_7405308)
    end
end

function Quest74053:OnSubStart7405302(arg1)
    print("OnSubStart7405302")
    this:CreateQuestNpc(arg1, npcs.Npc5253Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5253Data.alias):DoFreeStyle(4180, true, nil, true, true, false, false)
end

function Quest74053:OnSubFinish7405302(arg1)
    print("OnSubFinish7405302")
end

function Quest74053:OnSubStart7405303(arg1)
    print("OnSubStart7405303")
    this:GetQuestNpcActor(npcs.Npc5253Data.alias):DoFreeStyle(4180, true, nil, true, true, true, false)
end

function Quest74053:OnSubFinish7405303(arg1)
    print("OnSubFinish7405303")
    this:ClearNarratorTask()
end

function Quest74053:OnSubStart7405304(arg1)
    print("OnSubStart7405304")
    this:CreateQuestNpc(arg1, npcs.Npc5253Data.id, 0)
    this:RequestInteraction(npcs.Npc5253Data.alias, "", true)
end

function Quest74053:OnSubFinish7405304(arg1)
    print("OnSubFinish7405304")
end

function Quest74053:OnSubStart7405305(arg1)
    print("OnSubStart7405305")
    this:CreateQuestNpc(arg1, npcs.Npc5253Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21084Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5259Data.id, 0)
    actorMgr:CreateActorWithPos("Q7405305Trigger", "Actor/Gadget/Q7405305Trigger", 70900002, 0, points.TPos_Q7405305Trigger.pos, points.TPos_Q7405305Trigger.rot, true, false, 3)
end

function Quest74053:OnSubFinish7405305(arg1)
    print("OnSubFinish7405305")
end

function Quest74053:OnSubStart7405306(arg1)
    print("OnSubStart7405306")
    this:RequestInteraction(npcs.Npc21084Data.alias, nil, true)
end

function Quest74053:OnSubFinish7405306(arg1)
    print("OnSubFinish7405306")
    this:SafeDestroyQuestNpc(npcs.Npc5253Data.alias, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21084Data.alias)
    this:SafeDestroyQuestNpc(npcs.Npc5259Data.alias, 3)
end

function Quest74053:OnSubStart7405307(arg1)
    print("OnSubStart7405307")
    this:CreateQuestNpc(arg1, npcs.Npc5255Data.id, 0)
    actorMgr:CreateActorWithPos("Q7405307Trigger", "Actor/Gadget/Q7405307Trigger", 70900002, 0, points.TPos_Q7405307Trigger.pos, points.TPos_Q7405307Trigger.rot, true, false, 3)
end

function Quest74053:OnSubFinish7405307(arg1)
    print("OnSubFinish7405307")
end

function Quest74053:OnSubStart7405308(arg1)
    print("OnSubStart7405308")
    this:CreateQuestNpc(arg1, npcs.Npc21084Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5259Data.id, 0)
    this:RequestInteraction(npcs.Npc21084Data.alias, "", true)
end

function Quest74053:OnSubFinish7405308(arg1)
    print("OnSubFinish7405308")
    this:SafeDestroyQuestNpc(npcs.Npc21084Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5259Data.alias, 3)
end

function Quest74053:OnSubStart7405309(arg1)
    print("OnSubStart7405309")
    this:CreateQuestNpc(arg1, npcs.Npc5256Data.id, 0)
    actorMgr:CreateActorWithPos("Q7405309Trigger", "Actor/Gadget/Q7405309Trigger", 70900002, 0, points.TPos_Q7405309Trigger.pos, points.TPos_Q7405309Trigger.rot, true, false, 3)
end

function Quest74053:OnSubFinish7405309(arg1)
    print("OnSubFinish7405309")
    this:SafeDestroyQuestNpc(npcs.Npc5255Data.alias, 3)
end

function Quest74053:OnSubStart7405310(arg1)
    print("OnSubStart7405310")
    this:CreateQuestNpc(arg1, npcs.Npc21084Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5259Data.id, 0)
    this:RequestInteraction(npcs.Npc21084Data.alias, "", true)
end

function Quest74053:OnSubFinish7405310(arg1)
    print("OnSubFinish7405310")
end

function Quest74053:OnSubStart7405311(arg1)
    print("OnSubStart7405311")
    this:CreateQuestNpc(arg1, npcs.Npc21084Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5259Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5256Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc21084Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5259Data.alias):DisableInteeHeadCtrl(true)
end

function Quest74053:OnSubFinish7405311(arg1)
    print("OnSubFinish7405311")
    this:GetQuestNpcActor(npcs.Npc21084Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc5259Data.alias):DisableInteeHeadCtrl(false)
end

function Quest74053:OnSubStart7405332(arg1)
    print("OnSubStart7405332")
    this:RequestInteraction(npcs.Npc21084Data.alias, "", true)
end

function Quest74053:OnSubFinish7405332(arg1)
    print("OnSubFinish7405332")
end

function Quest74053:OnSubStart7405327(arg1)
    print("OnSubStart7405327")
    this:CreateQuestNpc(arg1, npcs.Npc21084Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5259Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5256Data.id, 0)
end

function Quest74053:OnSubFinish7405327(arg1)
    print("OnSubFinish7405327")
    this:ShowBlackScreenWithDialogText(0, 0.3, 0.1, nil, nil, nil, 0, false, true)
end

function Quest74053:OnSubStart7405313(arg1)
    print("OnSubStart7405313")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Npc21084Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc5259Data.id, 0)
        this:CreateQuestNpc(arg1, npcs.Npc5256Data.id, 0)
        this:RequestInteraction(npcs.Npc21084Data.alias, "", true)
    end)
end

function Quest74053:OnSubFinish7405313(arg1)
    print("OnSubFinish7405313")
    this:SafeDestroyQuestNpc(npcs.Npc21084Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5259Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5256Data.alias, 3)
end

function Quest74053:OnSubStart7405326(arg1)
    print("OnSubStart7405326")
end

function Quest74053:OnSubFinish7405326(arg1)
    print("OnSubFinish7405326")
end

function Quest74053:OnSubStart7405381(arg1)
    print("OnSubStart7405381")
    this:CreateQuestNpc(arg1, npcs.Npc21084Data.id, 0)
    this:RequestInteraction(npcs.Npc21084Data.alias)
end

function Quest74053:OnSubFinish7405381(arg1)
    print("OnSubFinish7405381")
    this:SafeDestroyQuestNpc(npcs.Npc21084Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5259Data.alias, 3)
end

function Quest74053:OnSubStart7405314(arg1)
    print("OnSubStart7405314")
    this:CreateQuestNpc(arg1, npcs.Npc5256Data.id, 0)
    actorMgr:CreateActorWithPos("Q7405314Trigger", "Actor/Gadget/Q7405314Trigger", 70900002, 0, points.TPos_Q7405314Trigger.pos, points.TPos_Q7405314Trigger.rot, true, false, 3)
end

function Quest74053:OnSubFinish7405314(arg1)
    print("OnSubFinish7405314")
end

function Quest74053:OnSubStart7405316(arg1)
    print("OnSubStart7405316")
end

function Quest74053:OnSubFinish7405316(arg1)
    print("OnSubFinish7405316")
end

function Quest74053:OnSubStart7405320(arg1)
    print("OnSubStart7405320")
    actorMgr:CreateActorWithPos("Q7405320Trigger", "Actor/Gadget/Q7405320Trigger", 70900002, 0, points.TPos_Q7405320Trigger.pos, points.TPos_Q7405320Trigger.rot, true, false, 3)
end

function Quest74053:OnSubFinish7405320(arg1)
    print("OnSubFinish7405320")
end

function Quest74053:OnSubStart7405321(arg1)
    print("OnSubStart7405321")
    this:CreateQuestNpc(arg1, npcs.Npc21084Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5259Data.id, 0)
    this:RequestInteraction(npcs.Npc21084Data.alias, "", true)
end

function Quest74053:OnSubFinish7405321(arg1)
    print("OnSubFinish7405321")
    this:SafeDestroyQuestNpc(npcs.Npc21084Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5259Data.alias, 3)
end

function Quest74053:OnSubStart7405322(arg1)
    print("OnSubStart7405322")
end

function Quest74053:OnSubFinish7405322(arg1)
    print("OnSubFinish7405322")
    this:NarratorOnlyTaskByData(datas.Narrator_7405304)
end

function Quest74053:OnSubStart7405323(arg1)
    print("OnSubStart7405323")
    this:CreateQuestNpc(arg1, npcs.Npc5257Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5258Data.id, 0)
    actorMgr:CreateActorWithPos("Q7405323Trigger", "Actor/Gadget/Q7405323Trigger", 70900002, 0, points.TPos_Q7405323Trigger.pos, points.TPos_Q7405323Trigger.rot, true, false, 3)
end

function Quest74053:OnSubFinish7405323(arg1)
    print("OnSubFinish7405323")
end

function Quest74053:OnSubStart7405324(arg1)
    print("OnSubStart7405324")
    this:CreateQuestNpc(arg1, npcs.Npc21084Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5259Data.id, 0)
    this:ActionSafeCall(function(arg1)
        this:RequestInteraction(npcs.Npc5258Data.alias, "", true)
    end)
end

function Quest74053:OnSubFinish7405324(arg1)
    print("OnSubFinish7405324")
    this:SetNavigationByMainId(74087, true)
    this:SafeDestroyQuestNpc(npcs.Npc21084Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5259Data.alias, 3)
end

function Quest74053:OnSubStart7405328(arg1)
    print("OnSubStart7405328")
    this:CreateQuestNpc(arg1, npcs.Npc21308Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5257Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5258Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5257Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5258Data.alias):DisableInteeHeadCtrl(true)
end

function Quest74053:OnSubFinish7405328(arg1)
    print("OnSubFinish7405328")
    this:NarratorOnlyTaskByData(datas.Narrator_7405305)
end

function Quest74053:OnSubStart7405335(arg1)
    print("OnSubStart7405335")
    this:SetNavigationByMainId(74053, true)
end

function Quest74053:OnSubFinish7405335(arg1)
    print("OnSubFinish7405335")
    this:SafeDestroyQuestNpc(npcs.Npc21084Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5259Data.alias, 3)
end

function Quest74053:OnSubStart7405336(arg1)
    print("OnSubStart7405336")
    actorMgr:CreateActorWithPos("Q7405336Trigger", "Actor/Gadget/Q7405336Trigger", 70900002, 0, points.TPos_Q7405336Trigger.pos, points.TPos_Q7405336Trigger.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc5257Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc5258Data.alias):DisableInteeHeadCtrl(true)
end

function Quest74053:OnSubFinish7405336(arg1)
    print("OnSubFinish7405336")
end

function Quest74053:OnSubStart7405337(arg1)
    print("OnSubStart7405337")
    this:CreateQuestNpc(arg1, npcs.Npc21084Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5259Data.id, 0)
    this:RequestInteraction(npcs.Npc21084Data.alias, "", true)
end

function Quest74053:OnSubFinish7405337(arg1)
    print("OnSubFinish7405337")
    this:SafeDestroyQuestNpc(npcs.Npc21084Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5259Data.alias, 3)
end

function Quest74053:OnSubStart7405340(arg1)
    print("OnSubStart7405340")
    actorMgr:CreateActorWithPos("Q7405340Trigger", "Actor/Gadget/Q7405340Trigger", 70900002, 0, points.TPos_Q7405340Trigger.pos, points.TPos_Q7405340Trigger.rot, true, false, 3)
end

function Quest74053:OnSubFinish7405340(arg1)
    print("OnSubFinish7405340")
end

function Quest74053:OnSubStart7405341(arg1)
    print("OnSubStart7405341")
    actorMgr:CreateActorWithPos("Q7405340Trigger", "Actor/Gadget/Q7405340Trigger", 70900002, 0, points.TPos_Q7405340Trigger.pos, points.TPos_Q7405340Trigger.rot, true, false, 3)
end

function Quest74053:OnSubFinish7405341(arg1)
    print("OnSubFinish7405341")
end

function Quest74053:OnSubStart7405384(arg1)
    print("OnSubStart7405384")
    this:CreateQuestNpc(arg1, npcs.Npc21084Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5259Data.id, 0)
    this:RequestInteraction(npcs.Npc21084Data.alias, "", true)
end

function Quest74053:OnSubFinish7405384(arg1)
    print("OnSubFinish7405384")
    this:SafeDestroyQuestNpc(npcs.Npc21084Data.alias, 3)
end

function Quest74053:OnSubStart7405342(arg1)
    print("OnSubStart7405342")
    this:CreateQuestNpc(arg1, npcs.Npc5259Data.id, 0)
end

function Quest74053:OnSubFinish7405342(arg1)
    print("OnSubFinish7405342")
end

function Quest74053:OnSubStart7405346(arg1)
    print("OnSubStart7405346")
    this:CreateQuestNpc(arg1, npcs.Npc21084Data.id, 0)
    this:RequestInteraction(npcs.Npc21084Data.alias, "", true)
end

function Quest74053:OnSubFinish7405346(arg1)
    print("OnSubFinish7405346")
end

function Quest74053:OnSubStart7405347(arg1)
    print("OnSubStart7405347")
    this:CreateQuestNpc(arg1, npcs.Npc21084Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21269Data.id, 0)
end

function Quest74053:OnSubFinish7405347(arg1)
    print("OnSubFinish7405347")
    this:SafeDestroyQuestNpc(npcs.Npc21269Data.alias, 3)
end

function Quest74053:OnSubStart7405385(arg1)
    print("OnSubStart7405385")
end

function Quest74053:OnSubFinish7405385(arg1)
    print("OnSubFinish7405385")
    this:SafeDestroyQuestNpc(npcs.Npc5259Data.alias, 3)
end

function Quest74053:OnSubStart7405319(arg1)
    print("OnSubStart7405319")
end

function Quest74053:OnSubFinish7405319(arg1)
    print("OnSubFinish7405319")
end

function Quest74053:OnSubStart7405348(arg1)
    print("OnSubStart7405348")
    this:CreateQuestNpc(arg1, npcs.Npc21084Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5259Data.id, 0)
    this:GetQuestNpcActor(npcs.Npc5257Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc5258Data.alias):DisableInteeHeadCtrl(false)
end

function Quest74053:OnSubFinish7405348(arg1)
    print("OnSubFinish7405348")
end

function Quest74053:OnSubStart7405383(arg1)
    print("OnSubStart7405383")
end

function Quest74053:OnSubFinish7405383(arg1)
    print("OnSubFinish7405383")
end

function Quest74053:OnSubStart7405338(arg1)
    print("OnSubStart7405338")
end

function Quest74053:OnSubFinish7405338(arg1)
    print("OnSubFinish7405338")
end

function Quest74053:OnSubStart7405349(arg1)
    print("OnSubStart7405349")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7405349, function(arg1)
            actorUtils.FinishQuestID(false, 7405349)
        end, nil, nil, false)
    end)
end

function Quest74053:OnSubFinish7405349(arg1)
    print("OnSubFinish7405349")
    this:SafeDestroyQuestNpc(npcs.Npc21084Data.alias, 3)
end

function Quest74053:OnSubStart7405350(arg1)
    print("OnSubStart7405350")
    this:CreateQuestNpc(arg1, npcs.Npc5253Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5255Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5256Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5257Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5258Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5207Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5208Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5209Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5211Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5216Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5217Data.id, 0)
    if this:CheckSubQuestState(7404113, 3, false) then
        this:CreateQuestNpc(arg1, npcs.Npc5224Data.id, 0)
    end

    if this:CheckSubQuestState(7416101, 3, false) then
        this:CreateQuestNpc(arg1, npcs.Npc5223Data.id, 0)
    end

    this:RequestInteraction(npcs.Npc5257Data.alias, "", true)
end

function Quest74053:OnSubFinish7405350(arg1)
    print("OnSubFinish7405350")
    this:SafeDestroyQuestNpc(npcs.Npc5257Data.alias, 3)
end

function Quest74053:OnSubStart7405317(arg1)
    print("OnSubStart7405317")
end

function Quest74053:OnSubFinish7405317(arg1)
    print("OnSubFinish7405317")
end

function Quest74053:OnSubStart7405334(arg1)
    print("OnSubStart7405334")
end

function Quest74053:OnSubFinish7405334(arg1)
    print("OnSubFinish7405334")
end

function Quest74053:OnSubStart7405312(arg1)
    print("OnSubStart7405312")
end

function Quest74053:OnSubFinish7405312(arg1)
    print("OnSubFinish7405312")
end

function Quest74053:OnSubStart7405376(arg1)
    print("OnSubStart7405376")
end

function Quest74053:OnSubFinish7405376(arg1)
    print("OnSubFinish7405376")
end

function Quest74053:OnSubStart7405333(arg1)
    print("OnSubStart7405333")
    this:CreateQuestNpc(arg1, npcs.Npc5259Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5258Data.id, 0)
    actorMgr:CreateActorWithPos("Q7405333Trigger", "Actor/Gadget/Q7405333Trigger", 70900002, 0, points.TPos_Q7405333Trigger.pos, points.TPos_Q7405333Trigger.rot, true, false, 3)
    if this:CheckSubQuestState(7404113, 3, false) then
        this:CreateQuestNpc(arg1, npcs.Npc5224Data.id, 0)
    end

    if this:CheckSubQuestState(7416101, 3, false) then
        this:CreateQuestNpc(arg1, npcs.Npc5223Data.id, 0)
    end
end

function Quest74053:OnSubFinish7405333(arg1)
    print("OnSubFinish7405333")
    this:NarratorOnlyTaskByData(datas.Narrator_7405306)
end

function Quest74053:OnSubStart7405353(arg1)
    print("OnSubStart7405353")
    if this:CheckSubQuestState(7404113, 3, false) then
        this:CreateQuestNpc(arg1, npcs.Npc5224Data.id, 0)
    end

    if this:CheckSubQuestState(7416101, 3, false) then
        this:CreateQuestNpc(arg1, npcs.Npc5223Data.id, 0)
    end
end

function Quest74053:OnSubFinish7405353(arg1)
    print("OnSubFinish7405353")
end

function Quest74053:OnSubStart7405354(arg1)
    print("OnSubStart7405354")
    actorMgr:CreateActorWithPos("Q7405354Trigger", "Actor/Gadget/Q7405354Trigger", 70900002, 0, points.TPos_Q7405354Trigger.pos, points.TPos_Q7405354Trigger.rot, true, false, 3)
    if this:CheckSubQuestState(7404113, 3, false) then
        this:CreateQuestNpc(arg1, npcs.Npc5224Data.id, 0)
    end

    if this:CheckSubQuestState(7416101, 3, false) then
        this:CreateQuestNpc(arg1, npcs.Npc5223Data.id, 0)
    end
end

function Quest74053:OnSubFinish7405354(arg1)
    print("OnSubFinish7405354")
end

function Quest74053:OnSubStart7405355(arg1)
    print("OnSubStart7405355")
    this:CreateQuestNpc(arg1, npcs.Npc5257Data.id, 0)
    if this:CheckSubQuestState(7404113, 3, false) then
        this:CreateQuestNpc(arg1, npcs.Npc5224Data.id, 0)
    end

    if this:CheckSubQuestState(7416101, 3, false) then
        this:CreateQuestNpc(arg1, npcs.Npc5223Data.id, 0)
    end

    this:RequestInteraction(npcs.Npc5257Data.alias, "", true)
end

function Quest74053:OnSubFinish7405355(arg1)
    print("OnSubFinish7405355")
end

function Quest74053:OnSubStart7405356(arg1)
    print("OnSubStart7405356")
    this:CreateQuestNpc(arg1, npcs.Npc5257Data.id, 0)
end

function Quest74053:OnSubFinish7405356(arg1)
    print("OnSubFinish7405356")
end

function Quest74053:OnSubStart7405357(arg1)
    print("OnSubStart7405357")
end

function Quest74053:OnSubFinish7405357(arg1)
    print("OnSubFinish7405357")
end

function Quest74053:OnSubStart7405358(arg1)
    print("OnSubStart7405358")
end

function Quest74053:OnSubFinish7405358(arg1)
    print("OnSubFinish7405358")
end

function Quest74053:OnSubStart7405359(arg1)
    print("OnSubStart7405359")
end

function Quest74053:OnSubFinish7405359(arg1)
    print("OnSubFinish7405359")
end

function Quest74053:OnSubStart7405360(arg1)
    print("OnSubStart7405360")
    if this:CheckSubQuestState(7404113, 3, false) then
        this:CreateQuestNpc(arg1, npcs.Npc5224Data.id, 0)
    end

    if this:CheckSubQuestState(7416101, 3, false) then
        this:CreateQuestNpc(arg1, npcs.Npc5223Data.id, 0)
    end
end

function Quest74053:OnSubFinish7405360(arg1)
    print("OnSubFinish7405360")
end

function Quest74053:OnSubStart7405361(arg1)
    print("OnSubStart7405361")
end

function Quest74053:OnSubFinish7405361(arg1)
    print("OnSubFinish7405361")
end

function Quest74053:OnSubStart7405365(arg1)
    print("OnSubStart7405365")
    this:CreateQuestNpc(arg1, npcs.Npc5257Data.id, 0)
    if this:CheckSubQuestState(7404113, 3, false) then
        this:CreateQuestNpc(arg1, npcs.Npc5224Data.id, 0)
    end

    if this:CheckSubQuestState(7416101, 3, false) then
        this:CreateQuestNpc(arg1, npcs.Npc5223Data.id, 0)
    end
end

function Quest74053:OnSubFinish7405365(arg1)
    print("OnSubFinish7405365")
    this:NarratorOnlyTaskByData(datas.Narrator_7405307)
    this:SafeDestroyQuestNpc(npcs.Npc5257Data.alias, 3)
end

function Quest74053:OnSubStart7405366(arg1)
    print("OnSubStart7405366")
    this:SafeDestroyQuestNpc(npcs.Npc21206Data.alias, 3)
    if this:CheckSubQuestState(7404113, 3, false) then
        this:CreateQuestNpc(arg1, npcs.Npc5224Data.id, 0)
    end

    if this:CheckSubQuestState(7416101, 3, false) then
        this:CreateQuestNpc(arg1, npcs.Npc5223Data.id, 0)
    end
end

function Quest74053:OnSubFinish7405366(arg1)
    print("OnSubFinish7405366")
    this:ClearNarratorTask()
end

function Quest74053:OnSubStart7405367(arg1)
    print("OnSubStart7405367")
    this:CreateQuestNpc(arg1, npcs.Npc5257Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21206Data.id, 0)
    this:RequestInteraction(npcs.Npc5257Data.alias, "", true)
    if this:CheckSubQuestState(7404113, 3, false) then
        this:CreateQuestNpc(arg1, npcs.Npc5224Data.id, 0)
    end

    if this:CheckSubQuestState(7416101, 3, false) then
        this:CreateQuestNpc(arg1, npcs.Npc5223Data.id, 0)
    end
end

function Quest74053:OnSubFinish7405367(arg1)
    print("OnSubFinish7405367")
end

function Quest74053:OnSubStart7405369(arg1)
    print("OnSubStart7405369")
    this:ActionSafeCall(function(arg1)
        this:PlayCutsceneIndex(7405369, function(arg1)
            actorUtils.FinishQuestID(false, 7405369)
        end, nil, nil, false)
    end)
end

function Quest74053:OnSubFinish7405369(arg1)
    print("OnSubFinish7405369")
    this:SafeDestroyQuestNpc(npcs.Npc5253Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5255Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5256Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5207Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5208Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5209Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5211Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5216Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5217Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5224Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5223Data.alias, 3)
end

function Quest74053:OnSubStart7405370(arg1)
    print("OnSubStart7405370")
    this:CreateQuestNpc(arg1, npcs.Npc5257Data.id, 0)
    this:RequestInteraction(npcs.Npc5257Data.alias, "", true)
end

function Quest74053:OnSubFinish7405370(arg1)
    print("OnSubFinish7405370")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc5257Data.alias)
end

function Quest74053:OnSubStart7405378(arg1)
    print("OnSubStart7405378")
    actorMgr:CreateActorWithPos("Q7405378Trigger", "Actor/Gadget/Q7405378Trigger", 70900002, 0, points.TPos_Q7405378Trigger.pos, points.TPos_Q7405378Trigger.rot, true, false, 3)
end

function Quest74053:OnSubFinish7405378(arg1)
    print("OnSubFinish7405378")
end

function Quest74053:OnSubStart7405379(arg1)
    print("OnSubStart7405379")
    this:CreateQuestNpc(arg1, npcs.Npc5259Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5257Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc5258Data.id, 0)
    this:SafeDestroyQuestNpc(npcs.Npc21206Data.alias, 3)
    this:RequestInteraction(npcs.Npc5257Data.alias, "", true)
end

function Quest74053:OnSubFinish7405379(arg1)
    print("OnSubFinish7405379")
    this:SafeDestroyQuestNpc(npcs.Npc5259Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5257Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc5258Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21308Data.alias, 3)
end

function Quest74053:OnSubStart7405339(arg1)
    print("OnSubStart7405339")
end

function Quest74053:OnSubFinish7405339(arg1)
    print("OnSubFinish7405339")
end

function Quest74053:OnSubStart7405343(arg1)
    print("OnSubStart7405343")
end

function Quest74053:OnSubFinish7405343(arg1)
    print("OnSubFinish7405343")
end

function Quest74053:OnSubStart7405344(arg1)
    print("OnSubStart7405344")
end

function Quest74053:OnSubFinish7405344(arg1)
    print("OnSubFinish7405344")
end

function Quest74053:OnSubStart7405345(arg1)
    print("OnSubStart7405345")
end

function Quest74053:OnSubFinish7405345(arg1)
    print("OnSubFinish7405345")
end

function Quest74053:OnSubStart7405351(arg1)
    print("OnSubStart7405351")
    actorMgr:CreateActorWithPos("Q7405351Trigger", "Actor/Gadget/Q7405351Trigger", 70900002, 0, points.TPos_Q7405351Trigger.pos, points.TPos_Q7405351Trigger.rot, true, false, 3)
end

function Quest74053:OnSubFinish7405351(arg1)
    print("OnSubFinish7405351")
end

function Quest74053:OnSubStart7405352(arg1)
    print("OnSubStart7405352")
end

function Quest74053:OnSubFinish7405352(arg1)
    print("OnSubFinish7405352")
end

function Quest74053:OnSubStart7405315(arg1)
    print("OnSubStart7405315")
end

function Quest74053:OnSubFinish7405315(arg1)
    print("OnSubFinish7405315")
end

function Quest74053:OnSubStart7405318(arg1)
    print("OnSubStart7405318")
end

function Quest74053:OnSubFinish7405318(arg1)
    print("OnSubFinish7405318")
end

function Quest74053:OnSubStart7405382(arg1)
    print("OnSubStart7405382")
end

function Quest74053:OnSubFinish7405382(arg1)
    print("OnSubFinish7405382")
end

function Quest74053:OnSubStart7405329(arg1)
    print("OnSubStart7405329")
end

function Quest74053:OnSubFinish7405329(arg1)
    print("OnSubFinish7405329")
end

function Quest74053:OnSubStart7405330(arg1)
    print("OnSubStart7405330")
    actorMgr:CreateActorWithPos("Q7405330Trigger", "Actor/Gadget/Q7405330Trigger", 70900002, 0, points.TPos_Q7405330Trigger.pos, points.TPos_Q7405330Trigger.rot, true, false, 3)
end

function Quest74053:OnSubFinish7405330(arg1)
    print("OnSubFinish7405330")
end

function Quest74053:OnSubStart7405331(arg1)
    print("OnSubStart7405331")
end

function Quest74053:OnSubFinish7405331(arg1)
    print("OnSubFinish7405331")
end

function Quest74053:OnSubStart7405377(arg1)
    print("OnSubStart7405377")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc5257Data.id, 0, npcs.Npc5257Data.alias)
end

function Quest74053:OnSubFinish7405377(arg1)
    print("OnSubFinish7405377")
    this:SafeDestroyQuestNpc(npcs.Npc5257Data.alias, 3)
end

function Quest74053:OnSubStart7405375(arg1)
    print("OnSubStart7405375")
end

function Quest74053:OnSubFinish7405375(arg1)
    print("OnSubFinish7405375")
end

function Quest74053:OnSubStart7405364(arg1)
    print("OnSubStart7405364")
    actorMgr:CreateActorWithPos("Q7405364Trigger", "Actor/Gadget/Q7405364Trigger", 70900002, 0, points.TPos_Q7405364Trigger.pos, points.TPos_Q7405364Trigger.rot, true, false, 3)
end

function Quest74053:OnSubFinish7405364(arg1)
    print("OnSubFinish7405364")
end

function Quest74053:OnSubStart7405374(arg1)
    print("OnSubStart7405374")
end

function Quest74053:OnSubFinish7405374(arg1)
    print("OnSubFinish7405374")
end

function Quest74053:OnSubStart7405373(arg1)
    print("OnSubStart7405373")
end

function Quest74053:OnSubFinish7405373(arg1)
    print("OnSubFinish7405373")
end

function Quest74053:OnSubStart7405372(arg1)
    print("OnSubStart7405372")
end

function Quest74053:OnSubFinish7405372(arg1)
    print("OnSubFinish7405372")
end

function Quest74053:OnSubStart7405371(arg1)
    print("OnSubStart7405371")
end

function Quest74053:OnSubFinish7405371(arg1)
    print("OnSubFinish7405371")
end

function Quest74053:OnSubStart7405368(arg1)
    print("OnSubStart7405368")
end

function Quest74053:OnSubFinish7405368(arg1)
    print("OnSubFinish7405368")
end

function Quest74053:OnSubStart7405362(arg1)
    print("OnSubStart7405362")
    actorMgr:CreateActorWithPos("Q7405362Trigger", "Actor/Gadget/Q7405362Trigger", 70900002, 0, points.TPos_Q7405362Trigger.pos, points.TPos_Q7405362Trigger.rot, true, false, 3)
end

function Quest74053:OnSubFinish7405362(arg1)
    print("OnSubFinish7405362")
end

function Quest74053:OnSubStart7405325(arg1)
    print("OnSubStart7405325")
    actorMgr:CreateActorWithPos("Q7405325Trigger", "Actor/Gadget/Q7405325Trigger", 70900002, 0, points.TPos_Q7405325Trigger.pos, points.TPos_Q7405325Trigger.rot, true, false, 3)
end

function Quest74053:OnSubFinish7405325(arg1)
    print("OnSubFinish7405325")
end

function Quest74053:OnSubStart7405363(arg1)
    print("OnSubStart7405363")
    this:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc5257Data.id, 0, npcs.Npc5257Data.alias)
end

function Quest74053:OnSubFinish7405363(arg1)
    print("OnSubFinish7405363")
end

return Quest74053

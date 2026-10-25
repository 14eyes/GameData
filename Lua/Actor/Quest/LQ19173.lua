require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19173 = class("Quest19173", QuestActorProxy)
Quest19173.defaultAlias = "Quest19173"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points

function Quest19173:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest19173:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1917301"] = self.OnSubStart1917301,
        ["1917302"] = self.OnSubStart1917302,
        ["1917303"] = self.OnSubStart1917303,
        ["1917304"] = self.OnSubStart1917304,
        ["1917305"] = self.OnSubStart1917305,
        ["1917306"] = self.OnSubStart1917306,
        ["1917307"] = self.OnSubStart1917307,
        ["1917308"] = self.OnSubStart1917308,
        ["1917309"] = self.OnSubStart1917309,
        ["1917310"] = self.OnSubStart1917310,
        ["1917311"] = self.OnSubStart1917311,
        ["1917312"] = self.OnSubStart1917312,
        ["1917313"] = self.OnSubStart1917313,
        ["1917314"] = self.OnSubStart1917314,
        ["1917326"] = self.OnSubStart1917326,
        ["1917315"] = self.OnSubStart1917315,
        ["1917316"] = self.OnSubStart1917316,
        ["1917327"] = self.OnSubStart1917327,
        ["1917330"] = self.OnSubStart1917330,
        ["1917317"] = self.OnSubStart1917317,
        ["1917318"] = self.OnSubStart1917318,
        ["1917329"] = self.OnSubStart1917329,
        ["1917328"] = self.OnSubStart1917328,
        ["1917319"] = self.OnSubStart1917319,
        ["1917331"] = self.OnSubStart1917331,
        ["1917320"] = self.OnSubStart1917320,
        ["1917321"] = self.OnSubStart1917321,
        ["1917322"] = self.OnSubStart1917322,
        ["1917323"] = self.OnSubStart1917323,
        ["1917324"] = self.OnSubStart1917324,
        ["1917325"] = self.OnSubStart1917325
    }
end

function Quest19173:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1917301"] = self.OnSubFinish1917301,
        ["1917302"] = self.OnSubFinish1917302,
        ["1917303"] = self.OnSubFinish1917303,
        ["1917304"] = self.OnSubFinish1917304,
        ["1917305"] = self.OnSubFinish1917305,
        ["1917306"] = self.OnSubFinish1917306,
        ["1917307"] = self.OnSubFinish1917307,
        ["1917308"] = self.OnSubFinish1917308,
        ["1917309"] = self.OnSubFinish1917309,
        ["1917310"] = self.OnSubFinish1917310,
        ["1917311"] = self.OnSubFinish1917311,
        ["1917312"] = self.OnSubFinish1917312,
        ["1917313"] = self.OnSubFinish1917313,
        ["1917314"] = self.OnSubFinish1917314,
        ["1917326"] = self.OnSubFinish1917326,
        ["1917315"] = self.OnSubFinish1917315,
        ["1917316"] = self.OnSubFinish1917316,
        ["1917327"] = self.OnSubFinish1917327,
        ["1917330"] = self.OnSubFinish1917330,
        ["1917317"] = self.OnSubFinish1917317,
        ["1917318"] = self.OnSubFinish1917318,
        ["1917329"] = self.OnSubFinish1917329,
        ["1917328"] = self.OnSubFinish1917328,
        ["1917319"] = self.OnSubFinish1917319,
        ["1917331"] = self.OnSubFinish1917331,
        ["1917320"] = self.OnSubFinish1917320,
        ["1917321"] = self.OnSubFinish1917321,
        ["1917322"] = self.OnSubFinish1917322,
        ["1917323"] = self.OnSubFinish1917323,
        ["1917324"] = self.OnSubFinish1917324,
        ["1917325"] = self.OnSubFinish1917325
    }
end

function Quest19173:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19173:Start()
    print("Start")
end

function Quest19173:OnDestroy()
    print("OnDestroy")
end

function Quest19173:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19173:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19173:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Coop_FaruzanData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4234Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12932Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12933Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12934Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12936Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12937Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12938Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12935Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12939Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12940Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4295Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12953Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12954Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12956Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12603Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13196Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4342Data.alias, 3)
    this:LightNotifyTo(npcs.Npc4234Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4295Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4342Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q1917302Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1917306Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1917307Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1917312Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1917313Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1917314Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1917315Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1917316Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1917317Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1917319Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1917303N1050Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1917304N4234Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1917305N1050Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1917326N513Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1917327N513Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1917320N1050Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1917322N4234Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1917324N4234Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1917325N513Trigger", 3, false)
end

function Quest19173:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19173:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest19173:NpcCreateWithTrigger(arg1, arg2, arg3)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 8)
end

function Quest19173:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest19173:NpcCreateWithTriggerBlack(arg1, arg2, arg3)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, 8, 1)
end

function Quest19173:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 191733001 then
        actorUtils.FinishQuestID(false, 1917330)
    elseif arg1 == 191732901 then
        actorUtils.FinishQuestID(false, 1917329)
    end
end

function Quest19173:OnSubStart1917301(arg1)
    print("OnSubStart1917301")
    this:DailyNpcSafeHideSelf(npcs.Npc4234Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4295Data.alias, 1, true)
    actorUtils.FinishQuestID(false, 1917301)
end

function Quest19173:OnSubFinish1917301(arg1)
    print("OnSubFinish1917301")
end

function Quest19173:OnSubStart1917302(arg1)
    print("OnSubStart1917302")
    this:DailyNpcSafeHideSelf(npcs.Npc4234Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4295Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1917302Trigger", "Actor/Gadget/Q1917302Trigger", 70900002, 0, points.TPos_Q1917302Trigger.pos, points.TPos_Q1917302Trigger.rot, true, false, 3)
end

function Quest19173:OnSubFinish1917302(arg1)
    print("OnSubFinish1917302")
end

function Quest19173:OnSubStart1917303(arg1)
    print("OnSubStart1917303")
    this:DailyNpcSafeHideSelf(npcs.Npc4234Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4295Data.alias, 1, true)
    this:CreateQuestNpcWithTriggerBlack("Q1917303N1050Trigger", 1917303, npcs.Npc1050Data.id, 3, 40, 1)
    this:RequestCoopInteractionFromSubStartPoint(107601, 1917302)
end

function Quest19173:OnSubFinish1917303(arg1)
    print("OnSubFinish1917303")
    this:SafeDestroyQuestNpc(npcs.Coop_FaruzanData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
end

function Quest19173:OnSubStart1917304(arg1)
    print("OnSubStart1917304")
    this:NpcCreateWithTrigger(npcs.Npc4234Data.id, 1917304, 4)
    this:GetQuestNpcActor(npcs.Npc4234Data.alias):DoFreeStyle(1030, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4295Data.alias, 1, true)
    this:RequestCoopInteractionFromSubStartPoint(107601, 1917303)
end

function Quest19173:OnSubFinish1917304(arg1)
    print("OnSubFinish1917304")
end

function Quest19173:OnSubStart1917305(arg1)
    print("OnSubStart1917305")
    this:CreateQuestNpc(arg1, npcs.Coop_FaruzanData.id, 1)
    this:GetQuestNpcActor(npcs.Coop_FaruzanData.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc1051Data.id, 2)
    this:NpcCreateWithTrigger(npcs.Npc1050Data.id, 1917305, 3)
    this:CreateQuestNpc(arg1, npcs.Npc4234Data.id, 4)
    this:GetQuestNpcActor(npcs.Npc4234Data.alias):DoFreeStyle(1030, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4295Data.alias, 1, true)
    this:RequestCoopInteractionFromSubStartPoint(107601, 1917304)
    this:GetQuestNpcActor(npcs.Coop_FaruzanData.alias):DisableInteeHeadCtrl(true)
end

function Quest19173:OnSubFinish1917305(arg1)
    print("OnSubFinish1917305")
    this:GetQuestNpcActor(npcs.Coop_FaruzanData.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Coop_FaruzanData.alias, 3)
end

function Quest19173:OnSubStart1917306(arg1)
    print("OnSubStart1917306")
    this:CreateQuestNpc(arg1, npcs.Npc1051Data.id, 2)
    this:CreateQuestNpc(arg1, npcs.Npc1050Data.id, 3)
    this:CreateQuestNpc(arg1, npcs.Npc4234Data.id, 4)
    this:CreateQuestNpc(arg1, npcs.Npc12932Data.id, 5)
    this:GetQuestNpcActor(npcs.Npc12932Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc12933Data.id, 6)
    this:CreateQuestNpc(arg1, npcs.Npc12934Data.id, 7)
    this:CreateQuestNpc(arg1, npcs.Npc12936Data.id, 8)
    this:GetQuestNpcActor(npcs.Npc12936Data.alias):DoFreeStyle(1160, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc12937Data.id, 9)
    this:GetQuestNpcActor(npcs.Npc12937Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc12938Data.id, 10)
    this:GetQuestNpcActor(npcs.Npc12938Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4295Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc4234Data.alias):DoFreeStyle(1030, true, nil, true, true, true, true)
    actorMgr:CreateActorWithPos("Q1917306Trigger", "Actor/Gadget/Q1917306Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1917306_guide").pos, sceneData:GetDummyPoint(3, "Q1917306_guide").rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1051Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):EnableHeadCtrl(true)
end

function Quest19173:OnSubFinish1917306(arg1)
    print("OnSubFinish1917306")
    this:GetQuestNpcActor(npcs.Npc1051Data.alias):DisableInteeHeadCtrl(false)
    this:GetQuestNpcActor(npcs.Npc1050Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
end

function Quest19173:OnSubStart1917307(arg1)
    print("OnSubStart1917307")
    this:CreateQuestNpc(arg1, npcs.Npc4234Data.id, 4)
    this:GetQuestNpcActor(npcs.Npc4234Data.alias):DoFreeStyle(1030, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc12932Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc12936Data.alias):DoFreeStyle(1160, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc12937Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc12938Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4295Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1917307Trigger", "Actor/Gadget/Q1917307Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1917306_guide").pos, sceneData:GetDummyPoint(3, "Q1917306_guide").rot, true, false, 3)
    this:RequestCoopInteractionFromSubStartPoint(107601, 1917305)
end

function Quest19173:OnSubFinish1917307(arg1)
    print("OnSubFinish1917307")
    this:SafeDestroyQuestNpc(npcs.Coop_FaruzanData.alias, 3)
end

function Quest19173:OnSubStart1917308(arg1)
    print("OnSubStart1917308")
    this:DailyNpcSafeHideSelf(npcs.Npc4295Data.alias, 1, true)
end

function Quest19173:OnSubFinish1917308(arg1)
    print("OnSubFinish1917308")
    this:SafeDestroyQuestNpc(npcs.Coop_FaruzanData.alias, 3)
end

function Quest19173:OnSubStart1917309(arg1)
    print("OnSubStart1917309")
    this:DailyNpcSafeHideSelf(npcs.Npc4295Data.alias, 1, true)
end

function Quest19173:OnSubFinish1917309(arg1)
    print("OnSubFinish1917309")
    this:SafeDestroyQuestNpc(npcs.Coop_FaruzanData.alias, 3)
end

function Quest19173:OnSubStart1917310(arg1)
    print("OnSubStart1917310")
    this:DailyNpcSafeHideSelf(npcs.Npc4295Data.alias, 1, true)
end

function Quest19173:OnSubFinish1917310(arg1)
    print("OnSubFinish1917310")
    this:SafeDestroyQuestNpc(npcs.Coop_FaruzanData.alias, 3)
end

function Quest19173:OnSubStart1917311(arg1)
    print("OnSubStart1917311")
    this:DailyNpcSafeHideSelf(npcs.Npc4295Data.alias, 1, true)
end

function Quest19173:OnSubFinish1917311(arg1)
    print("OnSubFinish1917311")
end

function Quest19173:OnSubStart1917312(arg1)
    print("OnSubStart1917312")
    this:CreateQuestNpc(arg1, npcs.Npc4234Data.id, 4)
    this:GetQuestNpcActor(npcs.Npc4234Data.alias):DoFreeStyle(1030, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc12932Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc12936Data.id, 5)
    this:GetQuestNpcActor(npcs.Npc12936Data.alias):DoFreeStyle(1160, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc12937Data.id, 6)
    this:GetQuestNpcActor(npcs.Npc12937Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc12938Data.id, 7)
    this:GetQuestNpcActor(npcs.Npc12938Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4295Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1917312Trigger", "Actor/Gadget/Q1917312Trigger", 70900002, 0, points.TPos_Q1917312Trigger.pos, points.TPos_Q1917312Trigger.rot, true, false, 3)
end

function Quest19173:OnSubFinish1917312(arg1)
    print("OnSubFinish1917312")
end

function Quest19173:OnSubStart1917313(arg1)
    print("OnSubStart1917313")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Coop_FaruzanData.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc4234Data.id, 4)
    this:GetQuestNpcActor(npcs.Npc4234Data.alias):DoFreeStyle(1030, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc12932Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4295Data.alias, 1, true)
    this:ActionSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q1917313Trigger", "Actor/Gadget/Q1917313Trigger", 70900002, 0, points.TPos_Q1917313Trigger.pos, points.TPos_Q1917313Trigger.rot, true, false, 3)
        this:RequestCoopInteractionFromSubStartPoint(107601, 1917309)
    end)

    actorMgr:CreateActorWithPos("Q1917312Trigger", "Actor/Gadget/Q1917312Trigger", 70900002, 0, points.TPos_Q1917312Trigger.pos, points.TPos_Q1917312Trigger.rot, true, false, 3)
end

function Quest19173:OnSubFinish1917313(arg1)
    print("OnSubFinish1917313")
    this:SafeDestroyQuestNpc(npcs.Coop_FaruzanData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12936Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12937Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12938Data.alias, 3)
end

function Quest19173:OnSubStart1917314(arg1)
    print("OnSubStart1917314")
    this:CreateQuestNpc(arg1, npcs.Npc4234Data.id, 4)
    this:GetQuestNpcActor(npcs.Npc4234Data.alias):DoFreeStyle(1030, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc12932Data.id, 5)
    this:GetQuestNpcActor(npcs.Npc12932Data.alias):DoFreeStyle(1120, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc12933Data.id, 6)
    this:CreateQuestNpc(arg1, npcs.Npc12934Data.id, 7)
    this:CreateQuestNpc(arg1, npcs.Npc12935Data.id, 8)
    this:DailyNpcSafeHideSelf(npcs.Npc4295Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1917312Trigger", "Actor/Gadget/Q1917312Trigger", 70900002, 0, points.TPos_Q1917312Trigger.pos, points.TPos_Q1917312Trigger.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q1917314Trigger", "Actor/Gadget/Q1917314Trigger", 70900002, 0, points.TPos_Q1917314Trigger.pos, points.TPos_Q1917314Trigger.rot, true, false, 3)
end

function Quest19173:OnSubFinish1917314(arg1)
    print("OnSubFinish1917314")
    this:SafeDestroyQuestNpc(npcs.Npc12932Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12933Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12934Data.alias, 3)
    this:ActorDestroy("Q1917312Trigger")
end

function Quest19173:OnSubStart1917326(arg1)
    print("OnSubStart1917326")
    this:NpcCreateWithTriggerBlack(npcs.Coop_FaruzanData.id, 1917326, 1)
    this:CreateQuestNpc(arg1, npcs.Npc4234Data.id, 4)
    this:GetQuestNpcActor(npcs.Npc4234Data.alias):DoFreeStyle(1030, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4295Data.alias, 1, true)
    this:RequestCoopInteractionFromSubStartPoint(107601, 1917310)
end

function Quest19173:OnSubFinish1917326(arg1)
    print("OnSubFinish1917326")
    this:SafeDestroyQuestNpc(npcs.Coop_FaruzanData.alias, 3)
end

function Quest19173:OnSubStart1917315(arg1)
    print("OnSubStart1917315")
    this:CreateQuestNpc(arg1, npcs.Npc4234Data.id, 4)
    this:GetQuestNpcActor(npcs.Npc4234Data.alias):DoFreeStyle(1030, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4295Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q1917315Trigger", "Actor/Gadget/Q1917315Trigger", 70900002, 0, points.TPos_Q1917315Trigger.pos, points.TPos_Q1917315Trigger.rot, true, false, 3)
    this:RequestCoopInteractionFromSubStartPoint(107601, 1917311)
end

function Quest19173:OnSubFinish1917315(arg1)
    print("OnSubFinish1917315")
    this:SafeDestroyQuestNpc(npcs.Coop_FaruzanData.alias, 3)
end

function Quest19173:OnSubStart1917316(arg1)
    print("OnSubStart1917316")
    this:CreateQuestNpc(arg1, npcs.Npc4234Data.id, 4)
    this:GetQuestNpcActor(npcs.Npc4234Data.alias):DoFreeStyle(1030, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc12932Data.id, 5)
    this:CreateQuestNpc(arg1, npcs.Npc12933Data.id, 6)
    this:CreateQuestNpc(arg1, npcs.Npc12934Data.id, 7)
    this:CreateQuestNpc(arg1, npcs.Npc12935Data.id, 8)
    this:DailyNpcSafeHideSelf(npcs.Npc4295Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc13196Data.id, 10)
    actorMgr:CreateActorWithPos("Q1917316Trigger", "Actor/Gadget/Q1917316Trigger", 70900002, 0, points.TPos_Q1917316Trigger.pos, points.TPos_Q1917316Trigger.rot, true, false, 3)
end

function Quest19173:OnSubFinish1917316(arg1)
    print("OnSubFinish1917316")
    this:SafeDestroyQuestNpc(npcs.Npc13196Data.alias, 3)
end

function Quest19173:OnSubStart1917327(arg1)
    print("OnSubStart1917327")
    this:NpcCreateWithTriggerBlack(npcs.Coop_FaruzanData.id, 1917327, 1)
    this:CreateQuestNpc(arg1, npcs.Npc4234Data.id, 4)
    this:GetQuestNpcActor(npcs.Npc4234Data.alias):DoFreeStyle(1030, true, nil, true, true, false, false)
    this:GetQuestNpcActor(npcs.Npc12939Data.alias):DoFreeStyle(102, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4295Data.alias, 1, true)
    this:RequestCoopInteractionFromSubStartPoint(107601, 1917312)
end

function Quest19173:OnSubFinish1917327(arg1)
    print("OnSubFinish1917327")
    this:SafeDestroyQuestNpc(npcs.Npc12932Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12933Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12934Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12935Data.alias, 3)
end

function Quest19173:OnSubStart1917330(arg1)
    print("OnSubStart1917330")
end

function Quest19173:OnSubFinish1917330(arg1)
    print("OnSubFinish1917330")
end

function Quest19173:OnSubStart1917317(arg1)
    print("OnSubStart1917317")
    this:CreateQuestNpc(arg1, npcs.Npc4234Data.id, 4)
    this:GetQuestNpcActor(npcs.Npc4234Data.alias):DoFreeStyle(1030, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc12939Data.id, 9)
    this:GetQuestNpcActor(npcs.Npc12939Data.alias):DoFreeStyle(102, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4295Data.alias, 1, true)
    this:RequestCoopInteractionFromSubStartPoint(107601, 1917313)
    actorMgr:CreateActorWithPos("Q1917317Trigger", "Actor/Gadget/Q1917317Trigger", 70900002, 0, points.TPos_Q1917317Trigger.pos, points.TPos_Q1917317Trigger.rot, true, false, 3)
end

function Quest19173:OnSubFinish1917317(arg1)
    print("OnSubFinish1917317")
    this:SafeDestroyQuestNpc(npcs.Npc12932Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12933Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12934Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12935Data.alias, 3)
end

function Quest19173:OnSubStart1917318(arg1)
    print("OnSubStart1917318")
    this:CreateQuestNpc(arg1, npcs.Npc4234Data.id, 3)
    this:GetQuestNpcActor(npcs.Npc4234Data.alias):DoFreeStyle(1030, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc12939Data.id, 4)
    this:GetQuestNpcActor(npcs.Npc12939Data.alias):DoFreeStyle(102, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4295Data.alias, 1, true)
    this:CreateQuestNpc(arg1, npcs.Npc12953Data.id, 5)
    this:CreateQuestNpc(arg1, npcs.Npc12954Data.id, 6)
    this:CreateQuestNpc(arg1, npcs.Npc12956Data.id, 7)
    this:RequestCoopInteractionFromSubStartPoint(107601, 1917314)
end

function Quest19173:OnSubFinish1917318(arg1)
    print("OnSubFinish1917318")
    this:SafeDestroyQuestNpc(npcs.Npc12940Data.alias, 3)
end

function Quest19173:OnSubStart1917329(arg1)
    print("OnSubStart1917329")
end

function Quest19173:OnSubFinish1917329(arg1)
    print("OnSubFinish1917329")
end

function Quest19173:OnSubStart1917328(arg1)
    print("OnSubStart1917328")
end

function Quest19173:OnSubFinish1917328(arg1)
    print("OnSubFinish1917328")
end

function Quest19173:OnSubStart1917319(arg1)
    print("OnSubStart1917319")
    this:CreateQuestNpc(arg1, npcs.Coop_FaruzanData.id, 1)
    this:GetQuestNpcActor(npcs.Coop_FaruzanData.alias):DoFreeStyle(1160, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc4234Data.id, 4)
    this:CreateQuestNpc(arg1, npcs.Npc12939Data.id, 5)
    this:DailyNpcSafeHideSelf(npcs.Npc4295Data.alias, 1, true)
    this:GetQuestNpcActor(npcs.Npc12939Data.alias):DoFreeStyle(102, true, nil, true, true, true, true)
    this:GetQuestNpcActor(npcs.Npc4234Data.alias):DoFreeStyle(1030, true, nil, true, true, true, true)
    actorMgr:CreateActorWithPos("Q1917319Trigger", "Actor/Gadget/Q1917319Trigger", 70900002, 0, points.TPos_Q1917319Trigger.pos, points.TPos_Q1917319Trigger.rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Coop_FaruzanData.alias):DisableInteeHeadCtrl(true)
end

function Quest19173:OnSubFinish1917319(arg1)
    print("OnSubFinish1917319")
    this:GetQuestNpcActor(npcs.Coop_FaruzanData.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Coop_FaruzanData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12939Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12953Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12954Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc12956Data.alias, 3)
end

function Quest19173:OnSubStart1917331(arg1)
    print("OnSubStart1917331")
end

function Quest19173:OnSubFinish1917331(arg1)
    print("OnSubFinish1917331")
end

function Quest19173:OnSubStart1917320(arg1)
    print("OnSubStart1917320")
    this:CreateQuestNpc(arg1, npcs.Npc1051Data.id, 2)
    this:NpcCreateWithTrigger(npcs.Npc1050Data.id, 1917320, 3)
    this:CreateQuestNpc(arg1, npcs.Npc4234Data.id, 4)
    this:DailyNpcSafeHideSelf(npcs.Npc4295Data.alias, 1, true)
    this:RequestCoopInteractionFromSubStartPoint(107601, 1917315)
    this:GetQuestNpcActor(npcs.Npc4234Data.alias):DoFreeStyle(1030, true, nil, true, true, true, true)
end

function Quest19173:OnSubFinish1917320(arg1)
    print("OnSubFinish1917320")
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
end

function Quest19173:OnSubStart1917321(arg1)
    print("OnSubStart1917321")
    this:CreateQuestNpc(arg1, npcs.Npc4234Data.id, 4)
    this:GetQuestNpcActor(npcs.Npc4234Data.alias):DoFreeStyle(1030, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4295Data.alias, 1, true)
end

function Quest19173:OnSubFinish1917321(arg1)
    print("OnSubFinish1917321")
end

function Quest19173:OnSubStart1917322(arg1)
    print("OnSubStart1917322")
    this:NpcCreateWithTrigger(npcs.Npc4234Data.id, 1917322, 4)
    this:GetQuestNpcActor(npcs.Npc4234Data.alias):DoFreeStyle(1030, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4295Data.alias, 1, true)
    this:RequestCoopInteractionFromSubStartPoint(107601, 1917316)
end

function Quest19173:OnSubFinish1917322(arg1)
    print("OnSubFinish1917322")
    this:LightNotifyTo(npcs.Npc4295Data.alias, 0, true)
    this:SafeDestroyQuestNpc(npcs.Coop_FaruzanData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4234Data.alias, 3)
end

function Quest19173:OnSubStart1917323(arg1)
    print("OnSubStart1917323")
    this:CreateQuestNpc(arg1, npcs.Npc4234Data.id, 4)
    this:GetQuestNpcActor(npcs.Npc4234Data.alias):DoFreeStyle(1030, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4295Data.alias, 1, true)
end

function Quest19173:OnSubFinish1917323(arg1)
    print("OnSubFinish1917323")
end

function Quest19173:OnSubStart1917324(arg1)
    print("OnSubStart1917324")
    this:NpcCreateWithTrigger(npcs.Npc4234Data.id, 1917324, 4)
    this:GetQuestNpcActor(npcs.Npc4234Data.alias):DoFreeStyle(1030, true, nil, true, true, false, false)
    this:DailyNpcSafeHideSelf(npcs.Npc4295Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4342Data.alias, 1, true)
    this:RequestCoopInteractionFromSubStartPoint(107601, 1917317)
end

function Quest19173:OnSubFinish1917324(arg1)
    print("OnSubFinish1917324")
end

function Quest19173:OnSubStart1917325(arg1)
    print("OnSubStart1917325")
    this:NpcCreateWithTrigger(npcs.Coop_FaruzanData.id, 1917325, 1)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1051Data.id, 2)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc1050Data.id, 3)
    this:DailyNpcSafeHideSelf(npcs.Npc4295Data.alias, 1, true)
    this:DailyNpcSafeHideSelf(npcs.Npc4342Data.alias, 1, true)
    this:RequestCoopInteractionFromSubStartPoint(107601, 1917318)
    this:GetQuestNpcActor(npcs.Npc4234Data.alias):DoFreeStateTrigger()
    this:GetQuestNpcActor(npcs.Npc1051Data.alias):DisableInteeHeadCtrl(true)
end

function Quest19173:OnSubFinish1917325(arg1)
    print("OnSubFinish1917325")
    this:LightNotifyTo(npcs.Npc4342Data.alias, 0, true)
    this:LightNotifyTo(npcs.Npc4295Data.alias, 0, true)
    this:GetQuestNpcActor(npcs.Npc1051Data.alias):DisableInteeHeadCtrl(false)
    this:SafeDestroyQuestNpc(npcs.Coop_FaruzanData.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1051Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc1050Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc4234Data.alias, 3)
end

return Quest19173

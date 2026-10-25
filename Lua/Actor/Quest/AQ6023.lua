require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest6023 = class("Quest6023", QuestActorProxy)
Quest6023.defaultAlias = "Quest6023"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest6023:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest6023:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["602342"] = self.OnSubStart602342,
        ["602301"] = self.OnSubStart602301,
        ["602337"] = self.OnSubStart602337,
        ["602302"] = self.OnSubStart602302,
        ["602303"] = self.OnSubStart602303,
        ["602350"] = self.OnSubStart602350,
        ["602304"] = self.OnSubStart602304,
        ["602305"] = self.OnSubStart602305,
        ["602306"] = self.OnSubStart602306,
        ["602351"] = self.OnSubStart602351,
        ["602307"] = self.OnSubStart602307,
        ["602308"] = self.OnSubStart602308,
        ["602330"] = self.OnSubStart602330,
        ["602352"] = self.OnSubStart602352,
        ["602331"] = self.OnSubStart602331,
        ["602332"] = self.OnSubStart602332,
        ["602353"] = self.OnSubStart602353,
        ["602333"] = self.OnSubStart602333,
        ["602321"] = self.OnSubStart602321,
        ["602334"] = self.OnSubStart602334,
        ["602309"] = self.OnSubStart602309,
        ["602310"] = self.OnSubStart602310,
        ["602311"] = self.OnSubStart602311,
        ["602338"] = self.OnSubStart602338,
        ["602335"] = self.OnSubStart602335,
        ["602312"] = self.OnSubStart602312,
        ["602313"] = self.OnSubStart602313,
        ["602339"] = self.OnSubStart602339,
        ["602314"] = self.OnSubStart602314,
        ["602346"] = self.OnSubStart602346,
        ["602315"] = self.OnSubStart602315,
        ["602340"] = self.OnSubStart602340,
        ["602336"] = self.OnSubStart602336,
        ["602349"] = self.OnSubStart602349,
        ["602316"] = self.OnSubStart602316,
        ["602347"] = self.OnSubStart602347,
        ["602341"] = self.OnSubStart602341,
        ["602317"] = self.OnSubStart602317,
        ["602318"] = self.OnSubStart602318,
        ["602320"] = self.OnSubStart602320,
        ["602345"] = self.OnSubStart602345,
        ["602348"] = self.OnSubStart602348,
        ["602322"] = self.OnSubStart602322,
        ["602323"] = self.OnSubStart602323,
        ["602324"] = self.OnSubStart602324,
        ["602325"] = self.OnSubStart602325,
        ["602326"] = self.OnSubStart602326,
        ["602319"] = self.OnSubStart602319,
        ["602327"] = self.OnSubStart602327,
        ["602328"] = self.OnSubStart602328,
        ["602343"] = self.OnSubStart602343,
        ["602344"] = self.OnSubStart602344,
        ["602329"] = self.OnSubStart602329
    }
end

function Quest6023:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["602342"] = self.OnSubFinish602342,
        ["602301"] = self.OnSubFinish602301,
        ["602337"] = self.OnSubFinish602337,
        ["602302"] = self.OnSubFinish602302,
        ["602303"] = self.OnSubFinish602303,
        ["602350"] = self.OnSubFinish602350,
        ["602304"] = self.OnSubFinish602304,
        ["602305"] = self.OnSubFinish602305,
        ["602306"] = self.OnSubFinish602306,
        ["602351"] = self.OnSubFinish602351,
        ["602307"] = self.OnSubFinish602307,
        ["602308"] = self.OnSubFinish602308,
        ["602330"] = self.OnSubFinish602330,
        ["602352"] = self.OnSubFinish602352,
        ["602331"] = self.OnSubFinish602331,
        ["602332"] = self.OnSubFinish602332,
        ["602353"] = self.OnSubFinish602353,
        ["602333"] = self.OnSubFinish602333,
        ["602321"] = self.OnSubFinish602321,
        ["602334"] = self.OnSubFinish602334,
        ["602309"] = self.OnSubFinish602309,
        ["602310"] = self.OnSubFinish602310,
        ["602311"] = self.OnSubFinish602311,
        ["602338"] = self.OnSubFinish602338,
        ["602335"] = self.OnSubFinish602335,
        ["602312"] = self.OnSubFinish602312,
        ["602313"] = self.OnSubFinish602313,
        ["602339"] = self.OnSubFinish602339,
        ["602314"] = self.OnSubFinish602314,
        ["602346"] = self.OnSubFinish602346,
        ["602315"] = self.OnSubFinish602315,
        ["602340"] = self.OnSubFinish602340,
        ["602336"] = self.OnSubFinish602336,
        ["602349"] = self.OnSubFinish602349,
        ["602316"] = self.OnSubFinish602316,
        ["602347"] = self.OnSubFinish602347,
        ["602341"] = self.OnSubFinish602341,
        ["602317"] = self.OnSubFinish602317,
        ["602318"] = self.OnSubFinish602318,
        ["602320"] = self.OnSubFinish602320,
        ["602345"] = self.OnSubFinish602345,
        ["602348"] = self.OnSubFinish602348,
        ["602322"] = self.OnSubFinish602322,
        ["602323"] = self.OnSubFinish602323,
        ["602324"] = self.OnSubFinish602324,
        ["602325"] = self.OnSubFinish602325,
        ["602326"] = self.OnSubFinish602326,
        ["602319"] = self.OnSubFinish602319,
        ["602327"] = self.OnSubFinish602327,
        ["602328"] = self.OnSubFinish602328,
        ["602343"] = self.OnSubFinish602343,
        ["602344"] = self.OnSubFinish602344,
        ["602329"] = self.OnSubFinish602329
    }
end

function Quest6023:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["602301"] = self.OnSubFailed602301,
        ["602302"] = self.OnSubFailed602302,
        ["602303"] = self.OnSubFailed602303,
        ["602350"] = self.OnSubFailed602350,
        ["602304"] = self.OnSubFailed602304,
        ["602305"] = self.OnSubFailed602305,
        ["602306"] = self.OnSubFailed602306,
        ["602351"] = self.OnSubFailed602351,
        ["602307"] = self.OnSubFailed602307,
        ["602308"] = self.OnSubFailed602308,
        ["602330"] = self.OnSubFailed602330,
        ["602352"] = self.OnSubFailed602352,
        ["602331"] = self.OnSubFailed602331,
        ["602332"] = self.OnSubFailed602332,
        ["602353"] = self.OnSubFailed602353,
        ["602333"] = self.OnSubFailed602333,
        ["602334"] = self.OnSubFailed602334,
        ["602309"] = self.OnSubFailed602309,
        ["602310"] = self.OnSubFailed602310,
        ["602311"] = self.OnSubFailed602311,
        ["602312"] = self.OnSubFailed602312,
        ["602313"] = self.OnSubFailed602313,
        ["602314"] = self.OnSubFailed602314,
        ["602315"] = self.OnSubFailed602315,
        ["602336"] = self.OnSubFailed602336,
        ["602316"] = self.OnSubFailed602316,
        ["602317"] = self.OnSubFailed602317,
        ["602320"] = self.OnSubFailed602320,
        ["602348"] = self.OnSubFailed602348,
        ["602322"] = self.OnSubFailed602322,
        ["602323"] = self.OnSubFailed602323,
        ["602324"] = self.OnSubFailed602324,
        ["602325"] = self.OnSubFailed602325,
        ["602326"] = self.OnSubFailed602326,
        ["602328"] = self.OnSubFailed602328,
        ["602344"] = self.OnSubFailed602344
    }
end

function Quest6023:Start()
    print("Start")
end

function Quest6023:OnDestroy()
    print("OnDestroy")
end

function Quest6023:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest6023:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest6023:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest6023:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q602318Trigger", nil)
    this:ActorDestroy("Q602329Trigger", nil)
    this:ActorDestroy("Q602321Trigger", nil)
    this:ActorDestroy("Q602335Trigger", nil)
    this:ActorDestroy("Q602327Trigger", nil)
    this:ActorDestroy("Q602337Trigger", nil)
    this:ActorDestroy("Q602338Trigger", nil)
    this:ActorDestroy("Q602340Trigger", nil)
    this:ActorDestroy("Q602341Trigger", nil)
    this:ActorDestroy("Q602319Trigger", nil)
    this:ActorDestroy("Q602343Trigger", nil)
    this:ActorDestroy("Q602342Trigger", nil)
    this:ActorDestroy("Q602342Trigger_Transmit", nil)
    this:ActorDestroy("Q602321Trigger_Transmit", nil)
    this:ActorDestroy("Q602335Trigger_Transmit", nil)
    this:ActorDestroy("Q602339Trigger", nil)
    this:ActorDestroy("Q602341Trigger_Transmit", nil)
    this:ActorDestroy("Q602318Trigger_Transmit", nil)
    this:ActorDestroy("Q602327Trigger_Transmit", nil)
    this:ActorDestroy("Q602329Trigger_Transmit", nil)
    this:ActorDestroy("Q602319Trigger_Transmit", nil)
    this:ActorDestroy("Q602346Trigger", nil)
    this:ActorDestroy("Q602347Trigger", nil)
    this:ActorDestroy("Q602336Trigger", nil)
    this:ActorDestroy("Q602313TriggerBlackHole", nil)
    this:ActorDestroy("Q602345Trigger", nil)
    this:ActorDestroy("Q602343Trigger_Transmit", nil)
    this:ActorDestroy("Q602345Trigger_Transmit", nil)
    this:ActorDestroy("Q602341Trigger_Transmint2", nil)
    this:ActorDestroy("Q602349Trigger", nil)
    this:ActorDestroy("Q602345Trigger_Transmit2", nil)
    this:ActorDestroy("Q602342Trigger_Transmit2", nil)
    this:ActorDestroy("Q602345Trigger_Transmit3", nil)
    this:ActorDestroy("Q602337Trigger_Transmit", nil)
    this:ActorDestroy("Q602318Trigger_Transmit2", nil)
    this:RemoveLocalGadget(74030038, "S6003_1")
    this:RemoveLocalGadget(74030033, "S6003_1")
end

function Quest6023:ActorDestroy(arg1, arg2)
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

function Quest6023:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest6023:NpcDestroyImmediately(arg1, arg2)
    this:DestroyQuestNpcActor(arg2, arg1)
end

function Quest6023:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest6023:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest6023:NpcCreateWithNoBlackData(arg1, arg2, arg3, arg4, arg5, arg6, arg7)
    this:CreateNoBlackTalkTriggerWithNpc("Q" .. arg1 .. "N" .. arg3 .. "Trigger", arg1, arg2, arg3, arg4, arg5, arg6, arg7)
end

function Quest6023:SetExitDungeonUIFunc()
    actorUtils.SetOperationCardProgress(11)
end

function Quest6023:CancleExitDungeonUIFunc()
    actorUtils.HideOperationCard()
end

function Quest6023:GolumbiaMainPageControl(arg1)
    this:DisableMainPageWithConfigByQuest(arg1, "DisableNodKraiAQ6022GolumbiaHide")
end

function Quest6023:PuloniaMainPageControl(arg1)
    this:DisableMainPageWithConfigByQuest(arg1, "DisableNodKraiAQ6023PuloniaHide")
end

function Quest6023:OthersMainPageControl(arg1)
    this:DisableMainPageWithConfigByQuest(arg1, "DisableNodKraiAQ6022Others")
    actorUtils.BanUIByQuest(4, arg1, 6023)
    actorUtils.BanUIByQuest(16, arg1, 6023)
    actorUtils.BanUIByQuest(27, arg1, 6023)
end

function Quest6023:OnSubStart602342(arg1)
    print("OnSubStart602342")
    actorMgr:CreateActorWithPos("Q602342Trigger", "Actor/Gadget/Q602342Trigger", 70900002, 0, points._Q602342TriggerPoint_.pos, points._Q602342TriggerPoint_.rot, true, false, 20321, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q602342Trigger_Transmit", "Actor/Gadget/Q602342Trigger_Transmit", 70900002, 0, points._Q602342Trigger_TransmitPoint_.pos, points._Q602342Trigger_TransmitPoint_.rot, true, false, 20321, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q602342Trigger_Transmit2", "Actor/Gadget/Q602342Trigger_Transmit2", 70900002, 0, points._Q602342Trigger_Transmit2Point_.pos, points._Q602342Trigger_Transmit2Point_.rot, true, false, 20321, nil, 0, 0)
end

function Quest6023:OnSubFinish602342(arg1)
    print("OnSubFinish602342")
    this:ActorDestroy("Q602342Trigger_Transmit", nil)
    this:ActorDestroy("Q602342Trigger_Transmit2", nil)
    this:SetNavigationByMainId(6023, true)
end

function Quest6023:OnSubStart602301(arg1)
    print("OnSubStart602301")
    this:NpcCreateWithNpcTriggerAndBlackscreen(602301, 0, 30, 1, npcs.Npc1319.id)
end

function Quest6023:OnSubFinish602301(arg1)
    print("OnSubFinish602301")
    this:NpcDestroyImmediately(20321, npcs.Npc1319.alias)
end

function Quest6023:OnSubFailed602301(arg1)
    print("OnSubFailed602301")
    this:DestroyNpcTrigger("Q602301N1319Trigger")
    this:DestroyQuestNpcActor(npcs.Npc1319.alias, 20321)
    this:RecycleAllRes()
end

function Quest6023:OnSubStart602337(arg1)
    print("OnSubStart602337")
    actorMgr:CreateActorWithPos("Q602337Trigger", "Actor/Gadget/Q602337Trigger", 70900002, 0, points._Q602337TriggerPoint_.pos, points._Q602337TriggerPoint_.rot, true, false, 20321, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q602337Trigger_Transmit", "Actor/Gadget/Q602337Trigger_Transmit", 70900002, 0, points._Q602337Trigger_TransmitPoint_.pos, points._Q602337Trigger_TransmitPoint_.rot, true, false, 20321, nil, 0, 0)
end

function Quest6023:OnSubFinish602337(arg1)
    print("OnSubFinish602337")
    this:ActorDestroy("Q602337Trigger_Transmit", nil)
    this:SetNavigationByMainId(6023, true)
end

function Quest6023:OnSubStart602302(arg1)
    print("OnSubStart602302")
    this:CreateLocalGadget(74030013, "602399", points.Q602302_Gadget74030013_1_Point.pos, points.Q602302_Gadget74030013_1_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030037, "60230301", points.Q602302_Gadget74030037_60230301_Point.pos, points.Q602302_Gadget74030037_60230301_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030056, "60230304", points.Q602302_Gadget74030037_60230304_Point.pos, points.Q602302_Gadget74030037_60230304_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030005, "60230603", points.Q602302_Gadget74030005_74030005_Point.pos, points.Q602302_Gadget74030005_74030005_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230601", points.Q602302_Gadget74030030_60230601_Point.pos, points.Q602302_Gadget74030030_60230601_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230602", points.Q602302_Gadget74030030_60230602_Point.pos, points.Q602302_Gadget74030030_60230602_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230605", points.Q602302_Gadget74030030_60230605_Point.pos, points.Q602302_Gadget74030030_60230605_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030028, "602304", points.Q602302_Gadget74030028_602304_Point.pos, points.Q602302_Gadget74030028_602304_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030029, "602307", points.Q602302_Gadget74030029_602307_Point.pos, points.Q602302_Gadget74030029_602307_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030031, "602331", points.Q602302_Gadget74030031_602331_Point.pos, points.Q602302_Gadget74030031_602331_Point.rot, 20321, nil, nil, false, 0, true)
    this:DeployStoryByQuest(110602301)
    this:PuloniaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6023:OnSubFinish602302(arg1)
    print("OnSubFinish602302")
end

function Quest6023:OnSubFailed602302(arg1)
    print("OnSubFailed602302")
    this:RemoveLocalGadget(74030013, "602399")
    this:RemoveLocalGadget(74030037, "60230301")
    this:RemoveLocalGadget(74030056, "60230304")
    this:RemoveLocalGadget(74030005, "60230603")
    this:RemoveLocalGadget(74030030, "60230601")
    this:RemoveLocalGadget(74030030, "60230602")
    this:RemoveLocalGadget(74030030, "60230605")
    this:RemoveLocalGadget(74030028, "602304")
    this:RemoveLocalGadget(74030029, "602307")
    this:RemoveLocalGadget(74030031, "602331")
    this:CancelStoryByQuest(110602301)
    this:RecycleAllRes()
    this:PuloniaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6023:OnSubStart602303(arg1)
    print("OnSubStart602303")
    this:CreateQuestNpc(arg1, npcs.Npc16269.id, 0, false, 0)
    this:CreateLocalGadget(74030013, "602399", points.Q602302_Gadget74030013_1_Point.pos, points.Q602302_Gadget74030013_1_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030037, "60230301", points.Q602302_Gadget74030037_60230301_Point.pos, points.Q602302_Gadget74030037_60230301_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030056, "60230304", points.Q602302_Gadget74030037_60230304_Point.pos, points.Q602302_Gadget74030037_60230304_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030005, "60230603", points.Q602302_Gadget74030005_74030005_Point.pos, points.Q602302_Gadget74030005_74030005_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230601", points.Q602302_Gadget74030030_60230601_Point.pos, points.Q602302_Gadget74030030_60230601_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230602", points.Q602302_Gadget74030030_60230602_Point.pos, points.Q602302_Gadget74030030_60230602_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230605", points.Q602302_Gadget74030030_60230605_Point.pos, points.Q602302_Gadget74030030_60230605_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030028, "602304", points.Q602302_Gadget74030028_602304_Point.pos, points.Q602302_Gadget74030028_602304_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030029, "602307", points.Q602302_Gadget74030029_602307_Point.pos, points.Q602302_Gadget74030029_602307_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030031, "602331", points.Q602302_Gadget74030031_602331_Point.pos, points.Q602302_Gadget74030031_602331_Point.rot, 20321, nil, nil, false, 0, true)
    this:DeployStoryByQuest(110602301)
    this:PuloniaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6023:OnSubFinish602303(arg1)
    print("OnSubFinish602303")
    this:RemoveLocalGadget(74030028, "602304")
end

function Quest6023:OnSubFailed602303(arg1)
    print("OnSubFailed602303")
    this:DestroyQuestNpcActor(npcs.Npc16269.alias, 20321)
    this:RemoveLocalGadget(74030013, "602399")
    this:RemoveLocalGadget(74030037, "60230301")
    this:RemoveLocalGadget(74030056, "60230304")
    this:RemoveLocalGadget(74030005, "60230603")
    this:RemoveLocalGadget(74030030, "60230601")
    this:RemoveLocalGadget(74030030, "60230602")
    this:RemoveLocalGadget(74030030, "60230605")
    this:RemoveLocalGadget(74030028, "602304")
    this:RemoveLocalGadget(74030029, "602307")
    this:RemoveLocalGadget(74030031, "602331")
    this:CancelStoryByQuest(110602301)
    this:RecycleAllRes()
    this:PuloniaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6023:OnSubStart602350(arg1)
    print("OnSubStart602350")
    this:CreateLocalGadget(74030013, "602399", points.Q602302_Gadget74030013_1_Point.pos, points.Q602302_Gadget74030013_1_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030037, "60230301", points.Q602302_Gadget74030037_60230301_Point.pos, points.Q602302_Gadget74030037_60230301_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030056, "60230304", points.Q602302_Gadget74030037_60230304_Point.pos, points.Q602302_Gadget74030037_60230304_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030005, "60230603", points.Q602302_Gadget74030005_74030005_Point.pos, points.Q602302_Gadget74030005_74030005_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230601", points.Q602302_Gadget74030030_60230601_Point.pos, points.Q602302_Gadget74030030_60230601_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230602", points.Q602302_Gadget74030030_60230602_Point.pos, points.Q602302_Gadget74030030_60230602_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230605", points.Q602302_Gadget74030030_60230605_Point.pos, points.Q602302_Gadget74030030_60230605_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030029, "602307", points.Q602302_Gadget74030029_602307_Point.pos, points.Q602302_Gadget74030029_602307_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030031, "602331", points.Q602302_Gadget74030031_602331_Point.pos, points.Q602302_Gadget74030031_602331_Point.rot, 20321, nil, nil, false, 0, true)
    this:DeployStoryByQuest(110602301)
    this:PuloniaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6023:OnSubFinish602350(arg1)
    print("OnSubFinish602350")
end

function Quest6023:OnSubFailed602350(arg1)
    print("OnSubFailed602350")
    this:RemoveLocalGadget(74030013, "602399")
    this:RemoveLocalGadget(74030037, "60230301")
    this:RemoveLocalGadget(74030056, "60230304")
    this:RemoveLocalGadget(74030005, "60230603")
    this:RemoveLocalGadget(74030030, "60230601")
    this:RemoveLocalGadget(74030030, "60230602")
    this:RemoveLocalGadget(74030030, "60230605")
    this:RemoveLocalGadget(74030029, "602307")
    this:RemoveLocalGadget(74030031, "602331")
    this:CancelStoryByQuest(110602301)
    this:RecycleAllRes()
    this:PuloniaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6023:OnSubStart602304(arg1)
    print("OnSubStart602304")
    this:NpcCreateWithNpcTrigger(npcs.Npc16472.id, 0, 10, 602304)
    this:CreateLocalGadget(74030013, "602399", points.Q602302_Gadget74030013_1_Point.pos, points.Q602302_Gadget74030013_1_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030028, "602304", points.Q602304_Gadget74030028_602304_Point.pos, points.Q602304_Gadget74030028_602304_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030037, "60230301", points.Q602302_Gadget74030037_60230301_Point.pos, points.Q602302_Gadget74030037_60230301_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030056, "60230304", points.Q602302_Gadget74030037_60230304_Point.pos, points.Q602302_Gadget74030037_60230304_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030005, "60230603", points.Q602302_Gadget74030005_74030005_Point.pos, points.Q602302_Gadget74030005_74030005_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230601", points.Q602302_Gadget74030030_60230601_Point.pos, points.Q602302_Gadget74030030_60230601_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230602", points.Q602302_Gadget74030030_60230602_Point.pos, points.Q602302_Gadget74030030_60230602_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230605", points.Q602302_Gadget74030030_60230605_Point.pos, points.Q602302_Gadget74030030_60230605_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030029, "602307", points.Q602302_Gadget74030029_602307_Point.pos, points.Q602302_Gadget74030029_602307_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030031, "602331", points.Q602302_Gadget74030031_602331_Point.pos, points.Q602302_Gadget74030031_602331_Point.rot, 20321, nil, nil, false, 0, true)
    this:DeployStoryByQuest(110602301)
    this:PuloniaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6023:OnSubFinish602304(arg1)
    print("OnSubFinish602304")
    this:NpcDestroyImmediately(20321, npcs.Npc16472.alias)
    this:NpcDestroyImmediately(20321, npcs.Npc16269.alias)
    this:RemoveLocalGadget(74030028, "602304")
end

function Quest6023:OnSubFailed602304(arg1)
    print("OnSubFailed602304")
    this:DestroyNpcTrigger("Q602304N16472Trigger")
    this:DestroyQuestNpcActor(npcs.Npc16472.alias, 20321)
    this:RemoveLocalGadget(74030013, "602399")
    this:RemoveLocalGadget(74030028, "602304")
    this:RemoveLocalGadget(74030037, "60230301")
    this:RemoveLocalGadget(74030056, "60230304")
    this:RemoveLocalGadget(74030005, "60230603")
    this:RemoveLocalGadget(74030030, "60230601")
    this:RemoveLocalGadget(74030030, "60230602")
    this:RemoveLocalGadget(74030030, "60230605")
    this:RemoveLocalGadget(74030029, "602307")
    this:RemoveLocalGadget(74030031, "602331")
    this:CancelStoryByQuest(110602301)
    this:RecycleAllRes()
    this:PuloniaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6023:OnSubStart602305(arg1)
    print("OnSubStart602305")
    this:CreateLocalGadget(74030013, "602399", points.Q602302_Gadget74030013_1_Point.pos, points.Q602302_Gadget74030013_1_Point.rot, 20321, nil, nil, false, 201, true)
    this:CreateLocalGadget(74030037, "60230301", points.Q602302_Gadget74030037_60230301_Point.pos, points.Q602302_Gadget74030037_60230301_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030056, "60230304", points.Q602302_Gadget74030037_60230304_Point.pos, points.Q602302_Gadget74030037_60230304_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030005, "60230603", points.Q602302_Gadget74030005_74030005_Point.pos, points.Q602302_Gadget74030005_74030005_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230601", points.Q602302_Gadget74030030_60230601_Point.pos, points.Q602302_Gadget74030030_60230601_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230602", points.Q602302_Gadget74030030_60230602_Point.pos, points.Q602302_Gadget74030030_60230602_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230605", points.Q602302_Gadget74030030_60230605_Point.pos, points.Q602302_Gadget74030030_60230605_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030029, "602307", points.Q602302_Gadget74030029_602307_Point.pos, points.Q602302_Gadget74030029_602307_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030031, "602331", points.Q602302_Gadget74030031_602331_Point.pos, points.Q602302_Gadget74030031_602331_Point.rot, 20321, nil, nil, false, 0, true)
    this:DeployStoryByQuest(110602301)
    this:PuloniaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6023:OnSubFinish602305(arg1)
    print("OnSubFinish602305")
end

function Quest6023:OnSubFailed602305(arg1)
    print("OnSubFailed602305")
    this:RemoveLocalGadget(74030013, "602399")
    this:RemoveLocalGadget(74030037, "60230301")
    this:RemoveLocalGadget(74030056, "60230304")
    this:RemoveLocalGadget(74030005, "60230603")
    this:RemoveLocalGadget(74030030, "60230601")
    this:RemoveLocalGadget(74030030, "60230602")
    this:RemoveLocalGadget(74030030, "60230605")
    this:RemoveLocalGadget(74030029, "602307")
    this:RemoveLocalGadget(74030031, "602331")
    this:CancelStoryByQuest(110602301)
    this:RecycleAllRes()
    this:PuloniaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6023:OnSubStart602306(arg1)
    print("OnSubStart602306")
    this:CreateQuestNpc(arg1, npcs.Npc16269.id, 0, false, 0)
    this:CreateLocalGadget(74030013, "602399", points.Q602302_Gadget74030013_1_Point.pos, points.Q602302_Gadget74030013_1_Point.rot, 20321, nil, nil, false, 201, true)
    this:CreateLocalGadget(74030037, "60230301", points.Q602302_Gadget74030037_60230301_Point.pos, points.Q602302_Gadget74030037_60230301_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030056, "60230304", points.Q602302_Gadget74030037_60230304_Point.pos, points.Q602302_Gadget74030037_60230304_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030005, "60230603", points.Q602302_Gadget74030005_74030005_Point.pos, points.Q602302_Gadget74030005_74030005_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230601", points.Q602302_Gadget74030030_60230601_Point.pos, points.Q602302_Gadget74030030_60230601_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230602", points.Q602302_Gadget74030030_60230602_Point.pos, points.Q602302_Gadget74030030_60230602_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230605", points.Q602302_Gadget74030030_60230605_Point.pos, points.Q602302_Gadget74030030_60230605_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030029, "602307", points.Q602302_Gadget74030029_602307_Point.pos, points.Q602302_Gadget74030029_602307_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030031, "602331", points.Q602302_Gadget74030031_602331_Point.pos, points.Q602302_Gadget74030031_602331_Point.rot, 20321, nil, nil, false, 0, true)
    this:DeployStoryByQuest(110602301)
    this:PuloniaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6023:OnSubFinish602306(arg1)
    print("OnSubFinish602306")
    this:RemoveLocalGadget(74030029, "602307")
end

function Quest6023:OnSubFailed602306(arg1)
    print("OnSubFailed602306")
    this:DestroyQuestNpcActor(npcs.Npc16269.alias, 20321)
    this:RemoveLocalGadget(74030013, "602399")
    this:RemoveLocalGadget(74030037, "60230301")
    this:RemoveLocalGadget(74030056, "60230304")
    this:RemoveLocalGadget(74030005, "60230603")
    this:RemoveLocalGadget(74030030, "60230601")
    this:RemoveLocalGadget(74030030, "60230602")
    this:RemoveLocalGadget(74030030, "60230605")
    this:RemoveLocalGadget(74030029, "602307")
    this:RemoveLocalGadget(74030031, "602331")
    this:CancelStoryByQuest(110602301)
    this:RecycleAllRes()
    this:PuloniaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6023:OnSubStart602351(arg1)
    print("OnSubStart602351")
    this:CreateLocalGadget(74030013, "602399", points.Q602302_Gadget74030013_1_Point.pos, points.Q602302_Gadget74030013_1_Point.rot, 20321, nil, nil, false, 201, true)
    this:CreateLocalGadget(74030037, "60230301", points.Q602302_Gadget74030037_60230301_Point.pos, points.Q602302_Gadget74030037_60230301_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030056, "60230304", points.Q602302_Gadget74030037_60230304_Point.pos, points.Q602302_Gadget74030037_60230304_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030005, "60230603", points.Q602302_Gadget74030005_74030005_Point.pos, points.Q602302_Gadget74030005_74030005_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230601", points.Q602302_Gadget74030030_60230601_Point.pos, points.Q602302_Gadget74030030_60230601_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230602", points.Q602302_Gadget74030030_60230602_Point.pos, points.Q602302_Gadget74030030_60230602_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230605", points.Q602302_Gadget74030030_60230605_Point.pos, points.Q602302_Gadget74030030_60230605_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030031, "602331", points.Q602302_Gadget74030031_602331_Point.pos, points.Q602302_Gadget74030031_602331_Point.rot, 20321, nil, nil, false, 0, true)
    this:DeployStoryByQuest(110602301)
    this:PuloniaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6023:OnSubFinish602351(arg1)
    print("OnSubFinish602351")
end

function Quest6023:OnSubFailed602351(arg1)
    print("OnSubFailed602351")
    this:RemoveLocalGadget(74030013, "602399")
    this:RemoveLocalGadget(74030037, "60230301")
    this:RemoveLocalGadget(74030056, "60230304")
    this:RemoveLocalGadget(74030005, "60230603")
    this:RemoveLocalGadget(74030030, "60230601")
    this:RemoveLocalGadget(74030030, "60230602")
    this:RemoveLocalGadget(74030030, "60230605")
    this:RemoveLocalGadget(74030031, "602331")
    this:CancelStoryByQuest(110602301)
    this:RecycleAllRes()
    this:PuloniaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6023:OnSubStart602307(arg1)
    print("OnSubStart602307")
    this:NpcCreateWithNpcTrigger(npcs.Npc16472.id, 0, 10, 602307)
    this:CreateLocalGadget(74030013, "602399", points.Q602302_Gadget74030013_1_Point.pos, points.Q602302_Gadget74030013_1_Point.rot, 20321, nil, nil, false, 201, true)
    this:CreateLocalGadget(74030029, "602307", points.Q602307_Gadget74030029_602307_Point.pos, points.Q602307_Gadget74030029_602307_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030037, "60230301", points.Q602302_Gadget74030037_60230301_Point.pos, points.Q602302_Gadget74030037_60230301_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030056, "60230304", points.Q602302_Gadget74030037_60230304_Point.pos, points.Q602302_Gadget74030037_60230304_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030005, "60230603", points.Q602302_Gadget74030005_74030005_Point.pos, points.Q602302_Gadget74030005_74030005_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230601", points.Q602302_Gadget74030030_60230601_Point.pos, points.Q602302_Gadget74030030_60230601_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230602", points.Q602302_Gadget74030030_60230602_Point.pos, points.Q602302_Gadget74030030_60230602_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230605", points.Q602302_Gadget74030030_60230605_Point.pos, points.Q602302_Gadget74030030_60230605_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030031, "602331", points.Q602302_Gadget74030031_602331_Point.pos, points.Q602302_Gadget74030031_602331_Point.rot, 20321, nil, nil, false, 0, true)
    this:DeployStoryByQuest(110602301)
    this:PuloniaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6023:OnSubFinish602307(arg1)
    print("OnSubFinish602307")
    this:NpcDestroyImmediately(20321, npcs.Npc16472.alias)
    this:NpcDestroyImmediately(20321, npcs.Npc16269.alias)
    this:RemoveLocalGadget(74030029, "602307")
end

function Quest6023:OnSubFailed602307(arg1)
    print("OnSubFailed602307")
    this:DestroyNpcTrigger("Q602307N16472Trigger")
    this:DestroyQuestNpcActor(npcs.Npc16472.alias, 20321)
    this:RemoveLocalGadget(74030013, "602399")
    this:RemoveLocalGadget(74030029, "602307")
    this:RemoveLocalGadget(74030037, "60230301")
    this:RemoveLocalGadget(74030056, "60230304")
    this:RemoveLocalGadget(74030005, "60230603")
    this:RemoveLocalGadget(74030030, "60230601")
    this:RemoveLocalGadget(74030030, "60230602")
    this:RemoveLocalGadget(74030030, "60230605")
    this:RemoveLocalGadget(74030031, "602331")
    this:CancelStoryByQuest(110602301)
    this:RecycleAllRes()
    this:PuloniaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6023:OnSubStart602308(arg1)
    print("OnSubStart602308")
    this:CreateLocalGadget(74030013, "602399", points.Q602302_Gadget74030013_1_Point.pos, points.Q602302_Gadget74030013_1_Point.rot, 20321, nil, nil, false, 202, true)
    this:CreateLocalGadget(74030037, "60230301", points.Q602302_Gadget74030037_60230301_Point.pos, points.Q602302_Gadget74030037_60230301_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030056, "60230304", points.Q602302_Gadget74030037_60230304_Point.pos, points.Q602302_Gadget74030037_60230304_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030005, "60230603", points.Q602302_Gadget74030005_74030005_Point.pos, points.Q602302_Gadget74030005_74030005_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230601", points.Q602302_Gadget74030030_60230601_Point.pos, points.Q602302_Gadget74030030_60230601_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230602", points.Q602302_Gadget74030030_60230602_Point.pos, points.Q602302_Gadget74030030_60230602_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230605", points.Q602302_Gadget74030030_60230605_Point.pos, points.Q602302_Gadget74030030_60230605_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030031, "602331", points.Q602302_Gadget74030031_602331_Point.pos, points.Q602302_Gadget74030031_602331_Point.rot, 20321, nil, nil, false, 0, true)
    this:DeployStoryByQuest(110602301)
    this:PuloniaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6023:OnSubFinish602308(arg1)
    print("OnSubFinish602308")
end

function Quest6023:OnSubFailed602308(arg1)
    print("OnSubFailed602308")
    this:RemoveLocalGadget(74030013, "602399")
    this:RemoveLocalGadget(74030037, "60230301")
    this:RemoveLocalGadget(74030056, "60230304")
    this:RemoveLocalGadget(74030005, "60230603")
    this:RemoveLocalGadget(74030030, "60230601")
    this:RemoveLocalGadget(74030030, "60230602")
    this:RemoveLocalGadget(74030030, "60230605")
    this:RemoveLocalGadget(74030031, "602331")
    this:CancelStoryByQuest(110602301)
    this:RecycleAllRes()
    this:PuloniaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6023:OnSubStart602330(arg1)
    print("OnSubStart602330")
    this:CreateQuestNpc(arg1, npcs.Npc16269.id, 0, false, 0)
    this:CreateLocalGadget(74030013, "602399", points.Q602302_Gadget74030013_1_Point.pos, points.Q602302_Gadget74030013_1_Point.rot, 20321, nil, nil, false, 202, true)
    this:CreateLocalGadget(74030037, "60230301", points.Q602302_Gadget74030037_60230301_Point.pos, points.Q602302_Gadget74030037_60230301_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030056, "60230304", points.Q602302_Gadget74030037_60230304_Point.pos, points.Q602302_Gadget74030037_60230304_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030005, "60230603", points.Q602302_Gadget74030005_74030005_Point.pos, points.Q602302_Gadget74030005_74030005_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230601", points.Q602302_Gadget74030030_60230601_Point.pos, points.Q602302_Gadget74030030_60230601_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230602", points.Q602302_Gadget74030030_60230602_Point.pos, points.Q602302_Gadget74030030_60230602_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230605", points.Q602302_Gadget74030030_60230605_Point.pos, points.Q602302_Gadget74030030_60230605_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030031, "602331", points.Q602302_Gadget74030031_602331_Point.pos, points.Q602302_Gadget74030031_602331_Point.rot, 20321, nil, nil, false, 0, true)
    this:DeployStoryByQuest(110602301)
    this:PuloniaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6023:OnSubFinish602330(arg1)
    print("OnSubFinish602330")
    this:RemoveLocalGadget(74030031, "602331")
end

function Quest6023:OnSubFailed602330(arg1)
    print("OnSubFailed602330")
    this:DestroyQuestNpcActor(npcs.Npc16269.alias, 20321)
    this:RemoveLocalGadget(74030013, "602399")
    this:RemoveLocalGadget(74030037, "60230301")
    this:RemoveLocalGadget(74030056, "60230304")
    this:RemoveLocalGadget(74030005, "60230603")
    this:RemoveLocalGadget(74030030, "60230601")
    this:RemoveLocalGadget(74030030, "60230602")
    this:RemoveLocalGadget(74030030, "60230605")
    this:RemoveLocalGadget(74030031, "602331")
    this:CancelStoryByQuest(110602301)
    this:RecycleAllRes()
    this:PuloniaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6023:OnSubStart602352(arg1)
    print("OnSubStart602352")
    this:CreateLocalGadget(74030013, "602399", points.Q602302_Gadget74030013_1_Point.pos, points.Q602302_Gadget74030013_1_Point.rot, 20321, nil, nil, false, 202, true)
    this:CreateLocalGadget(74030037, "60230301", points.Q602302_Gadget74030037_60230301_Point.pos, points.Q602302_Gadget74030037_60230301_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030056, "60230304", points.Q602302_Gadget74030037_60230304_Point.pos, points.Q602302_Gadget74030037_60230304_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030005, "60230603", points.Q602302_Gadget74030005_74030005_Point.pos, points.Q602302_Gadget74030005_74030005_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230601", points.Q602302_Gadget74030030_60230601_Point.pos, points.Q602302_Gadget74030030_60230601_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230602", points.Q602302_Gadget74030030_60230602_Point.pos, points.Q602302_Gadget74030030_60230602_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230605", points.Q602302_Gadget74030030_60230605_Point.pos, points.Q602302_Gadget74030030_60230605_Point.rot, 20321, nil, nil, false, 0, true)
    this:DeployStoryByQuest(110602301)
    this:PuloniaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6023:OnSubFinish602352(arg1)
    print("OnSubFinish602352")
end

function Quest6023:OnSubFailed602352(arg1)
    print("OnSubFailed602352")
    this:RemoveLocalGadget(74030013, "602399")
    this:RemoveLocalGadget(74030037, "60230301")
    this:RemoveLocalGadget(74030056, "60230304")
    this:RemoveLocalGadget(74030005, "60230603")
    this:RemoveLocalGadget(74030030, "60230601")
    this:RemoveLocalGadget(74030030, "60230602")
    this:RemoveLocalGadget(74030030, "60230605")
    this:CancelStoryByQuest(110602301)
    this:RecycleAllRes()
    this:PuloniaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6023:OnSubStart602331(arg1)
    print("OnSubStart602331")
    this:NpcCreateWithNpcTrigger(npcs.Npc16472.id, 0, 10, 602331)
    this:CreateLocalGadget(74030013, "602399", points.Q602302_Gadget74030013_1_Point.pos, points.Q602302_Gadget74030013_1_Point.rot, 20321, nil, nil, false, 202, true)
    this:CreateLocalGadget(74030031, "602331", points.Q602331_Gadget74030031_602331_Point.pos, points.Q602331_Gadget74030031_602331_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030037, "60230301", points.Q602302_Gadget74030037_60230301_Point.pos, points.Q602302_Gadget74030037_60230301_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030056, "60230304", points.Q602302_Gadget74030037_60230304_Point.pos, points.Q602302_Gadget74030037_60230304_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030005, "60230603", points.Q602302_Gadget74030005_74030005_Point.pos, points.Q602302_Gadget74030005_74030005_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230601", points.Q602302_Gadget74030030_60230601_Point.pos, points.Q602302_Gadget74030030_60230601_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230602", points.Q602302_Gadget74030030_60230602_Point.pos, points.Q602302_Gadget74030030_60230602_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230605", points.Q602302_Gadget74030030_60230605_Point.pos, points.Q602302_Gadget74030030_60230605_Point.rot, 20321, nil, nil, false, 0, true)
    this:DeployStoryByQuest(110602301)
    this:PuloniaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6023:OnSubFinish602331(arg1)
    print("OnSubFinish602331")
    this:NpcDestroyImmediately(20321, npcs.Npc16472.alias)
    this:NpcDestroyImmediately(20321, npcs.Npc16269.alias)
    this:RemoveLocalGadget(74030031, "602331")
end

function Quest6023:OnSubFailed602331(arg1)
    print("OnSubFailed602331")
    this:DestroyNpcTrigger("Q602331N16472Trigger")
    this:DestroyQuestNpcActor(npcs.Npc16472.alias, 20321)
    this:RemoveLocalGadget(74030013, "602399")
    this:RemoveLocalGadget(74030031, "602331")
    this:RemoveLocalGadget(74030037, "60230301")
    this:RemoveLocalGadget(74030056, "60230304")
    this:RemoveLocalGadget(74030005, "60230603")
    this:RemoveLocalGadget(74030030, "60230601")
    this:RemoveLocalGadget(74030030, "60230602")
    this:RemoveLocalGadget(74030030, "60230605")
    this:CancelStoryByQuest(110602301)
    this:RecycleAllRes()
    this:PuloniaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6023:OnSubStart602332(arg1)
    print("OnSubStart602332")
    this:CreateQuestNpc(arg1, npcs.Npc16270.id, 0, false, 0)
    this:CreateLocalGadget(74030013, "602399", points.Q602302_Gadget74030013_1_Point.pos, points.Q602302_Gadget74030013_1_Point.rot, 20321, nil, nil, false, 303, true)
    this:CreateLocalGadget(74030037, "60230301", points.Q602302_Gadget74030037_60230301_Point.pos, points.Q602302_Gadget74030037_60230301_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030056, "60230304", points.Q602302_Gadget74030037_60230304_Point.pos, points.Q602302_Gadget74030037_60230304_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030005, "60230603", points.Q602302_Gadget74030005_74030005_Point.pos, points.Q602302_Gadget74030005_74030005_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230601", points.Q602302_Gadget74030030_60230601_Point.pos, points.Q602302_Gadget74030030_60230601_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230602", points.Q602302_Gadget74030030_60230602_Point.pos, points.Q602302_Gadget74030030_60230602_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230605", points.Q602302_Gadget74030030_60230605_Point.pos, points.Q602302_Gadget74030030_60230605_Point.rot, 20321, nil, nil, false, 0, true)
    this:DeployStoryByQuest(110602301)
    this:PuloniaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6023:OnSubFinish602332(arg1)
    print("OnSubFinish602332")
    this:NpcDestroyImmediately(20321, npcs.Npc16270.alias)
end

function Quest6023:OnSubFailed602332(arg1)
    print("OnSubFailed602332")
    this:DestroyQuestNpcActor(npcs.Npc16270.alias, 20321)
    this:RemoveLocalGadget(74030013, "602399")
    this:RemoveLocalGadget(74030037, "60230301")
    this:RemoveLocalGadget(74030056, "60230304")
    this:RemoveLocalGadget(74030005, "60230603")
    this:RemoveLocalGadget(74030030, "60230601")
    this:RemoveLocalGadget(74030030, "60230602")
    this:RemoveLocalGadget(74030030, "60230605")
    this:CancelStoryByQuest(110602301)
    this:RecycleAllRes()
    this:RemoveLocalGadget(74030038, "1")
    this:RemoveLocalGadget(74030014, "1")
    this:RemoveLocalGadget(74030033, "1")
    this:PuloniaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6023:OnSubStart602353(arg1)
    print("OnSubStart602353")
    this:CreateLocalGadget(74030013, "602399", points.Q602302_Gadget74030013_1_Point.pos, points.Q602302_Gadget74030013_1_Point.rot, 20321, nil, nil, false, 303, true)
    this:CreateLocalGadget(74030037, "60230301", points.Q602302_Gadget74030037_60230301_Point.pos, points.Q602302_Gadget74030037_60230301_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030056, "60230304", points.Q602302_Gadget74030037_60230304_Point.pos, points.Q602302_Gadget74030037_60230304_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030005, "60230603", points.Q602302_Gadget74030005_74030005_Point.pos, points.Q602302_Gadget74030005_74030005_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230601", points.Q602302_Gadget74030030_60230601_Point.pos, points.Q602302_Gadget74030030_60230601_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230602", points.Q602302_Gadget74030030_60230602_Point.pos, points.Q602302_Gadget74030030_60230602_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230605", points.Q602302_Gadget74030030_60230605_Point.pos, points.Q602302_Gadget74030030_60230605_Point.rot, 20321, nil, nil, false, 0, true)
    this:DeployStoryByQuest(110602301)
    this:PuloniaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6023:OnSubFinish602353(arg1)
    print("OnSubFinish602353")
end

function Quest6023:OnSubFailed602353(arg1)
    print("OnSubFailed602353")
    this:RemoveLocalGadget(74030013, "602399")
    this:RemoveLocalGadget(74030037, "60230301")
    this:RemoveLocalGadget(74030056, "60230304")
    this:RemoveLocalGadget(74030005, "60230603")
    this:RemoveLocalGadget(74030030, "60230601")
    this:RemoveLocalGadget(74030030, "60230602")
    this:RemoveLocalGadget(74030030, "60230605")
    this:CancelStoryByQuest(110602301)
    this:RecycleAllRes()
    this:PuloniaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6023:OnSubStart602333(arg1)
    print("OnSubStart602333")
    this:NpcCreateWithNpcTrigger(npcs.Npc16472.id, 0, 10, 602333)
    this:CreateLocalGadget(74030013, "602399", points.Q602302_Gadget74030013_1_Point.pos, points.Q602302_Gadget74030013_1_Point.rot, 20321, nil, nil, false, 303, true)
    this:CreateLocalGadget(74030033, "60233301", points.Q602333_Gadget74030033_60233301_Point.pos, points.Q602333_Gadget74030033_60233301_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030038, "60233302", points.Q602333_Gadget74030038_60233302_Point.pos, points.Q602333_Gadget74030038_60233302_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030037, "60230301", points.Q602302_Gadget74030037_60230301_Point.pos, points.Q602302_Gadget74030037_60230301_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030056, "60230304", points.Q602302_Gadget74030037_60230304_Point.pos, points.Q602302_Gadget74030037_60230304_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030005, "60230603", points.Q602302_Gadget74030005_74030005_Point.pos, points.Q602302_Gadget74030005_74030005_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230601", points.Q602302_Gadget74030030_60230601_Point.pos, points.Q602302_Gadget74030030_60230601_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230602", points.Q602302_Gadget74030030_60230602_Point.pos, points.Q602302_Gadget74030030_60230602_Point.rot, 20321, nil, nil, false, 0, true)
    this:CreateLocalGadget(74030030, "60230605", points.Q602302_Gadget74030030_60230605_Point.pos, points.Q602302_Gadget74030030_60230605_Point.rot, 20321, nil, nil, false, 0, true)
    this:DeployStoryByQuest(110602301)
    this:PuloniaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6023:OnSubFinish602333(arg1)
    print("OnSubFinish602333")
    this:NpcDestroyImmediately(20321, npcs.Npc16472.alias)
    this:RemoveLocalGadget(74030013, "602399")
    this:RemoveLocalGadget(74030033, "60233301")
    this:RemoveLocalGadget(74030038, "60233302")
    this:RemoveLocalGadget(74030037, "60230301")
    this:RemoveLocalGadget(74030056, "60230304")
    this:RemoveLocalGadget(74030005, "60230603")
    this:RemoveLocalGadget(74030030, "60230601")
    this:RemoveLocalGadget(74030030, "60230602")
    this:RemoveLocalGadget(74030030, "60230605")
    this:CancelStoryByQuest(110602301)
    this:PuloniaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6023:OnSubFailed602333(arg1)
    print("OnSubFailed602333")
    this:DestroyNpcTrigger("Q602333N16472Trigger")
    this:DestroyQuestNpcActor(npcs.Npc16472.alias, 20321)
    this:RemoveLocalGadget(74030013, "602399")
    this:RemoveLocalGadget(74030033, "60233301")
    this:RemoveLocalGadget(74030038, "60233302")
    this:RemoveLocalGadget(74030037, "60230301")
    this:RemoveLocalGadget(74030056, "60230304")
    this:RemoveLocalGadget(74030005, "60230603")
    this:RemoveLocalGadget(74030030, "60230601")
    this:RemoveLocalGadget(74030030, "60230602")
    this:RemoveLocalGadget(74030030, "60230605")
    this:CancelStoryByQuest(110602301)
    this:RecycleAllRes()
    this:PuloniaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6023:OnSubStart602321(arg1)
    print("OnSubStart602321")
    actorMgr:CreateActorWithPos("Q602321Trigger_Transmit", "Actor/Gadget/Q602321Trigger_Transmit", 70900002, 0, points._Q602321Trigger_TransmitPoint_.pos, points._Q602321Trigger_TransmitPoint_.rot, true, false, 20321, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q602321Trigger", "Actor/Gadget/Q602321Trigger", 70900002, 0, points._Q602321TriggerPoint_.pos, points._Q602321TriggerPoint_.rot, true, false, 20321, nil, 0, 0)
end

function Quest6023:OnSubFinish602321(arg1)
    print("OnSubFinish602321")
    this:ActorDestroy("Q602321Trigger_Transmit", nil)
    this:SetNavigationByMainId(6023, true)
end

function Quest6023:OnSubStart602334(arg1)
    print("OnSubStart602334")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc16313.id, 0, 602334, 20, true)
    this:DeployStoryByQuest(110602303)
    this:OthersMainPageControl(true)
end

function Quest6023:OnSubFinish602334(arg1)
    print("OnSubFinish602334")
    this:NpcDestroyImmediately(20321, npcs.Npc16313.alias)
end

function Quest6023:OnSubFailed602334(arg1)
    print("OnSubFailed602334")
    this:DestroyNpcTrigger("Q602334N16313Trigger")
    this:DestroyQuestNpcActor(npcs.Npc16313.alias, 20321)
    this:CancelStoryByQuest(110602303)
    this:RecycleAllRes()
    this:OthersMainPageControl(false)
end

function Quest6023:OnSubStart602309(arg1)
    print("OnSubStart602309")
    this:NpcCreateWithNpcTriggerAndBlackscreen(602309, 0, 23, 1, npcs.Npc10200.id)
    this:DeployStoryByQuest(110602303)
    this:OthersMainPageControl(true)
end

function Quest6023:OnSubFinish602309(arg1)
    print("OnSubFinish602309")
    this:NpcDestroyImmediately(20321, npcs.Npc10200.alias)
end

function Quest6023:OnSubFailed602309(arg1)
    print("OnSubFailed602309")
    this:DestroyNpcTrigger("Q602309N10200Trigger")
    this:DestroyQuestNpcActor(npcs.Npc10200.alias, 20321)
    this:CancelStoryByQuest(110602303)
    this:RecycleAllRes()
    this:OthersMainPageControl(false)
end

function Quest6023:OnSubStart602310(arg1)
    print("OnSubStart602310")
    this:DeployStoryByQuest(110602303)
    this:OthersMainPageControl(true)
end

function Quest6023:OnSubFinish602310(arg1)
    print("OnSubFinish602310")
end

function Quest6023:OnSubFailed602310(arg1)
    print("OnSubFailed602310")
    this:ClearNarratorTask()
    this:CancelStoryByQuest(110602303)
    this:RecycleAllRes()
    this:OthersMainPageControl(false)
end

function Quest6023:OnSubStart602311(arg1)
    print("OnSubStart602311")
    this:NpcCreateWithNpcTriggerAndBlackscreen(602311, 0, 30, 1, npcs.Npc10200.id)
    this:DeployStoryByQuest(110602303)
    this:OthersMainPageControl(true)
end

function Quest6023:OnSubFinish602311(arg1)
    print("OnSubFinish602311")
    this:NpcDestroyImmediately(20321, npcs.Npc10200.alias)
    this:CancelStoryByQuest(110602303)
    this:OthersMainPageControl(false)
end

function Quest6023:OnSubFailed602311(arg1)
    print("OnSubFailed602311")
    this:DestroyNpcTrigger("Q602311N10200Trigger")
    this:DestroyQuestNpcActor(npcs.Npc10200.alias, 20321)
    this:CancelStoryByQuest(110602303)
    this:RecycleAllRes()
    this:OthersMainPageControl(false)
end

function Quest6023:OnSubStart602338(arg1)
    print("OnSubStart602338")
    actorMgr:CreateActorWithPos("Q602338Trigger", "Actor/Gadget/Q602338Trigger", 70900002, 0, points._Q602338TriggerPoint_.pos, points._Q602338TriggerPoint_.rot, true, false, 20321, nil, 0, 0)
end

function Quest6023:OnSubFinish602338(arg1)
    print("OnSubFinish602338")
    this:SetNavigationByMainId(6023, true)
end

function Quest6023:OnSubStart602335(arg1)
    print("OnSubStart602335")
    actorMgr:CreateActorWithPos("Q602335Trigger_Transmit", "Actor/Gadget/Q602335Trigger_Transmit", 70900002, 0, points._Q602335Trigger_TransmitPoint_.pos, points._Q602335Trigger_TransmitPoint_.rot, true, false, 20321, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q602335Trigger", "Actor/Gadget/Q602335Trigger", 70900002, 0, points._Q602335TriggerPoint_.pos, points._Q602335TriggerPoint_.rot, true, false, 20321, nil, 0, 0)
end

function Quest6023:OnSubFinish602335(arg1)
    print("OnSubFinish602335")
    this:ActorDestroy("Q602335Trigger_Transmit", nil)
    this:SetNavigationByMainId(6023, true)
end

function Quest6023:OnSubStart602312(arg1)
    print("OnSubStart602312")
    this:NpcCreateWithNpcTriggerAndBlackscreen(602312, 0, 20, 1, npcs.Npc1320.id)
    this:OthersMainPageControl(true)
end

function Quest6023:OnSubFinish602312(arg1)
    print("OnSubFinish602312")
end

function Quest6023:OnSubFailed602312(arg1)
    print("OnSubFailed602312")
    this:DestroyNpcTrigger("Q602312N1320Trigger")
    this:DestroyQuestNpcActor(npcs.Npc1320.alias, 20321)
    this:RecycleAllRes()
    this:OthersMainPageControl(false)
end

function Quest6023:OnSubStart602313(arg1)
    print("OnSubStart602313")
    this:NpcCreateWithNoBlackData(602313, 0, npcs.Npc1018.id, 0, 8, 602313, datas.NoBlackDataNormal)
    this:CreateQuestNpc(arg1, npcs.Npc1320.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1320.alias, 6023):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1320.alias, 6023):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(110602302)
    actorMgr:CreateActorWithPos("Q602313TriggerBlackHole", "Actor/Gadget/Q602313TriggerBlackHole", 70900002, 0, points._Q602313TriggerBlackHolePoint_.pos, points._Q602313TriggerBlackHolePoint_.rot, true, false, 20321, nil, 0, 0)
    globalActor:ChangeDay24TimeClock(19, 0, 15, true)
    this:OthersMainPageControl(true)
end

function Quest6023:OnSubFinish602313(arg1)
    print("OnSubFinish602313")
    this:NpcDestroyImmediately(20321, npcs.Npc1018.alias)
end

function Quest6023:OnSubFailed602313(arg1)
    print("OnSubFailed602313")
    this:ActorDestroy("Q602313TriggerBlackHole", nil)
    this:DestroyQuestNpcActor(npcs.Npc1018.alias, 20321)
    this:CancelStoryByQuest(110602302)
    this:RecycleAllRes()
    this:ActorDestroy("Q602313TriggerBlackHole", nil)
    this:OthersMainPageControl(false)
end

function Quest6023:OnSubStart602339(arg1)
    print("OnSubStart602339")
    actorMgr:CreateActorWithPos("Q602339Trigger", "Actor/Gadget/Q602339Trigger", 70900002, 0, points._Q602339TriggerPoint_.pos, points._Q602339TriggerPoint_.rot, true, false, 20321, nil, 0, 0)
end

function Quest6023:OnSubFinish602339(arg1)
    print("OnSubFinish602339")
    this:SetNavigationByMainId(6023, true)
end

function Quest6023:OnSubStart602314(arg1)
    print("OnSubStart602314")
    this:NpcCreateWithNoBlackData(602314, 0, npcs.Npc1018.id, 0, 12, 602314, datas.NoBlackDataNormal)
    this:GetQuestNpcActor(npcs.Npc1320.alias, 6023):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1320.alias, 6023):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(110602302)
    actorMgr:CreateActorWithPos("Q602313TriggerBlackHole", "Actor/Gadget/Q602313TriggerBlackHole", 70900002, 0, points._Q602313TriggerBlackHolePoint_.pos, points._Q602313TriggerBlackHolePoint_.rot, true, false, 20321, nil, 0, 0)
    this:OthersMainPageControl(true)
end

function Quest6023:OnSubFinish602314(arg1)
    print("OnSubFinish602314")
    this:NpcDestroyImmediately(20321, npcs.Npc1018.alias)
end

function Quest6023:OnSubFailed602314(arg1)
    print("OnSubFailed602314")
    this:ActorDestroy("Q602313TriggerBlackHole", nil)
    this:DestroyQuestNpcActor(npcs.Npc1018.alias, 20321)
    this:CancelStoryByQuest(110602302)
    this:RecycleAllRes()
    this:ActorDestroy("Q602313TriggerBlackHole", nil)
    this:OthersMainPageControl(false)
end

function Quest6023:OnSubStart602346(arg1)
    print("OnSubStart602346")
    actorMgr:CreateActorWithPos("Q602346Trigger", "Actor/Gadget/Q602346Trigger", 70900002, 0, points._Q602346TriggerPoint_.pos, points._Q602346TriggerPoint_.rot, true, false, 20321, nil, 0, 0)
end

function Quest6023:OnSubFinish602346(arg1)
    print("OnSubFinish602346")
    this:SetNavigationByMainId(6023, true)
end

function Quest6023:OnSubStart602315(arg1)
    print("OnSubStart602315")
    this:NpcCreateWithNoBlackData(602315, 1, npcs.Npc16209.id, 0, 10, 602315, datas.NoBlackDataNormal)
    this:GetQuestNpcActor(npcs.Npc1320.alias, 6023):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1320.alias, 6023):DisableInteeHeadCtrl(true)
    this:DeployStoryByQuest(110602302)
    actorMgr:CreateActorWithPos("Q602313TriggerBlackHole", "Actor/Gadget/Q602313TriggerBlackHole", 70900002, 0, points._Q602313TriggerBlackHolePoint_.pos, points._Q602313TriggerBlackHolePoint_.rot, true, false, 20321, nil, 0, 0)
    this:OthersMainPageControl(true)
end

function Quest6023:OnSubFinish602315(arg1)
    print("OnSubFinish602315")
    this:NpcDestroyImmediately(20321, npcs.Npc16209.alias)
end

function Quest6023:OnSubFailed602315(arg1)
    print("OnSubFailed602315")
    this:ActorDestroy("Q602313TriggerBlackHole", nil)
    this:DestroyQuestNpcActor(npcs.Npc16209.alias, 20321)
    this:CancelStoryByQuest(110602302)
    this:RecycleAllRes()
    this:ActorDestroy("Q602313TriggerBlackHole", nil)
    this:OthersMainPageControl(false)
end

function Quest6023:OnSubStart602340(arg1)
    print("OnSubStart602340")
    actorMgr:CreateActorWithPos("Q602340Trigger", "Actor/Gadget/Q602340Trigger", 70900002, 0, points._Q602340TriggerPoint_.pos, points._Q602340TriggerPoint_.rot, true, false, 20321, nil, 0, 0)
end

function Quest6023:OnSubFinish602340(arg1)
    print("OnSubFinish602340")
    this:SetNavigationByMainId(6023, true)
end

function Quest6023:OnSubStart602336(arg1)
    print("OnSubStart602336")
    this:CreateQuestNpc(arg1, npcs.Npc1320.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1320.alias, 6023):DoFreeStyle(1190, true, nil, true, true, false, true)
    this:GetQuestNpcActor(npcs.Npc1320.alias, 6023):DisableInteeHeadCtrl(true)
    actorMgr:CreateActorWithPos("Q602336Trigger", "Actor/Gadget/Q602336Trigger", 70900002, 0, points._Q602336TriggerPoint_.pos, points._Q602336TriggerPoint_.rot, true, false, 20321, nil, 0, 0)
    this:DeployStoryByQuest(110602302)
    actorMgr:CreateActorWithPos("Q602313TriggerBlackHole", "Actor/Gadget/Q602313TriggerBlackHole", 70900002, 0, points._Q602313TriggerBlackHolePoint_.pos, points._Q602313TriggerBlackHolePoint_.rot, true, false, 20321, nil, 0, 0)
    this:OthersMainPageControl(true)
end

function Quest6023:OnSubFinish602336(arg1)
    print("OnSubFinish602336")
    this:CancelStoryByQuest(110602302)
    this:ActorDestroy("Q602313TriggerBlackHole", nil)
end

function Quest6023:OnSubFailed602336(arg1)
    print("OnSubFailed602336")
    this:ActorDestroy("Q602336Trigger", nil)
    this:ActorDestroy("Q602313TriggerBlackHole", nil)
    this:CancelStoryByQuest(110602302)
    this:RecycleAllRes()
    this:ActorDestroy("Q602336Trigger", nil)
    this:ActorDestroy("Q602313TriggerBlackHole", nil)
    this:OthersMainPageControl(false)
end

function Quest6023:OnSubStart602349(arg1)
    print("OnSubStart602349")
    actorMgr:CreateActorWithPos("Q602349Trigger", "Actor/Gadget/Q602349Trigger", 70900002, 0, points._Q602349TriggerPoint_.pos, points._Q602349TriggerPoint_.rot, true, false, 20321, nil, 0, 0)
end

function Quest6023:OnSubFinish602349(arg1)
    print("OnSubFinish602349")
    this:SetNavigationByMainId(6023, true)
end

function Quest6023:OnSubStart602316(arg1)
    print("OnSubStart602316")
    this:NpcCreateWithNpcTrigger(npcs.Npc1320.id, 0, 14, 602316)
    this:GetQuestNpcActor(npcs.Npc1320.alias, 6023):DisableInteeHeadCtrl(false)
    this:OthersMainPageControl(true)
end

function Quest6023:OnSubFinish602316(arg1)
    print("OnSubFinish602316")
    this:NpcDestroyImmediately(20321, npcs.Npc1320.alias)
    this:OthersMainPageControl(false)
end

function Quest6023:OnSubFailed602316(arg1)
    print("OnSubFailed602316")
    this:DestroyNpcTrigger("Q602316N1320Trigger")
    this:DestroyQuestNpcActor(npcs.Npc1320.alias, 20321)
    this:RecycleAllRes()
    this:OthersMainPageControl(false)
end

function Quest6023:OnSubStart602347(arg1)
    print("OnSubStart602347")
    actorMgr:CreateActorWithPos("Q602347Trigger", "Actor/Gadget/Q602347Trigger", 70900002, 0, points._Q602347TriggerPoint_.pos, points._Q602347TriggerPoint_.rot, true, false, 20321, nil, 0, 0)
end

function Quest6023:OnSubFinish602347(arg1)
    print("OnSubFinish602347")
    this:SetNavigationByMainId(6023, true)
end

function Quest6023:OnSubStart602341(arg1)
    print("OnSubStart602341")
    actorMgr:CreateActorWithPos("Q602341Trigger", "Actor/Gadget/Q602341Trigger", 70900002, 0, points._Q602341TriggerPoint_.pos, points._Q602341TriggerPoint_.rot, true, false, 20321, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q602341Trigger_Transmit", "Actor/Gadget/Q602341Trigger_Transmit", 70900002, 0, points._Q602341Trigger_TransmitPoint_.pos, points._Q602341Trigger_TransmitPoint_.rot, true, false, 20321, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q602341Trigger_Transmint2", "Actor/Gadget/Q602341Trigger_Transmint2", 70900002, 0, points._Q602341Trigger_Transmint2Point_.pos, points._Q602341Trigger_Transmint2Point_.rot, true, false, 20321, nil, 0, 0)
end

function Quest6023:OnSubFinish602341(arg1)
    print("OnSubFinish602341")
    this:ActorDestroy("Q602341Trigger_Transmit", nil)
    this:ActorDestroy("Q602341Trigger_Transmint2", nil)
    this:SetNavigationByMainId(6023, true)
end

function Quest6023:OnSubStart602317(arg1)
    print("OnSubStart602317")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc12695.id, 0, 602317, 20, true)
end

function Quest6023:OnSubFinish602317(arg1)
    print("OnSubFinish602317")
    this:NpcDestroyImmediately(20321, npcs.Npc12695.alias)
end

function Quest6023:OnSubFailed602317(arg1)
    print("OnSubFailed602317")
    this:DestroyNpcTrigger("Q602317N12695Trigger")
    this:DestroyQuestNpcActor(npcs.Npc12695.alias, 20321)
    this:RecycleAllRes()
end

function Quest6023:OnSubStart602318(arg1)
    print("OnSubStart602318")
    actorMgr:CreateActorWithPos("Q602318Trigger", "Actor/Gadget/Q602318Trigger", 70900002, 0, points._Q602318TriggerPoint_.pos, points._Q602318TriggerPoint_.rot, true, false, 20321, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q602318Trigger_Transmit", "Actor/Gadget/Q602318Trigger_Transmit", 70900002, 0, points._Q602318Trigger_TransmitPoint_.pos, points._Q602318Trigger_TransmitPoint_.rot, true, false, 20321, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q602318Trigger_Transmit2", "Actor/Gadget/Q602318Trigger_Transmit2", 70900002, 0, points._Q602318Trigger_Transmit2Point_.pos, points._Q602318Trigger_Transmit2Point_.rot, true, false, 20321, nil, 0, 0)
end

function Quest6023:OnSubFinish602318(arg1)
    print("OnSubFinish602318")
    this:ActorDestroy("Q602318Trigger_Transmit", nil)
    this:ActorDestroy("Q602318Trigger_Transmit2", nil)
    this:SetNavigationByMainId(6023, true)
end

function Quest6023:OnSubStart602320(arg1)
    print("OnSubStart602320")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1318.id, 0, 602320, 30, true)
end

function Quest6023:OnSubFinish602320(arg1)
    print("OnSubFinish602320")
    this:NpcDestroyImmediately(20321, npcs.Npc1318.alias)
end

function Quest6023:OnSubFailed602320(arg1)
    print("OnSubFailed602320")
    this:DestroyNpcTrigger("Q602320N1318Trigger")
    this:DestroyQuestNpcActor(npcs.Npc1318.alias, 20321)
    this:RecycleAllRes()
end

function Quest6023:OnSubStart602345(arg1)
    print("OnSubStart602345")
    actorMgr:CreateActorWithPos("Q602345Trigger", "Actor/Gadget/Q602345Trigger", 70900002, 0, points._Q602345TriggerPoint_.pos, points._Q602345TriggerPoint_.rot, true, false, 20321, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q602345Trigger_Transmit", "Actor/Gadget/Q602345Trigger_Transmit", 70900002, 0, points._Q602345Trigger_TransmitPoint_.pos, points._Q602345Trigger_TransmitPoint_.rot, true, false, 20321, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q602345Trigger_Transmit2", "Actor/Gadget/Q602345Trigger_Transmit2", 70900002, 0, points._Q602345Trigger_Transmit2Point_.pos, points._Q602345Trigger_Transmit2Point_.rot, true, false, 20321, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q602345Trigger_Transmit3", "Actor/Gadget/Q602345Trigger_Transmit3", 70900002, 0, points._Q602345Trigger_Transmit3Point_.pos, points._Q602345Trigger_Transmit3Point_.rot, true, false, 20321, nil, 0, 0)
end

function Quest6023:OnSubFinish602345(arg1)
    print("OnSubFinish602345")
    this:ActorDestroy("Q602345Trigger_Transmit", nil)
    this:ActorDestroy("Q602345Trigger_Transmit2", nil)
    this:ActorDestroy("Q602345Trigger_Transmit3", nil)
    this:SetNavigationByMainId(6023, true)
end

function Quest6023:OnSubStart602348(arg1)
    print("OnSubStart602348")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1318.id, 0, 602348, 30, true)
end

function Quest6023:OnSubFinish602348(arg1)
    print("OnSubFinish602348")
    this:NpcDestroyImmediately(20321, npcs.Npc1318.alias)
end

function Quest6023:OnSubFailed602348(arg1)
    print("OnSubFailed602348")
    this:DestroyNpcTrigger("Q602348N1318Trigger")
    this:DestroyQuestNpcActor(npcs.Npc1318.alias, 20321)
    this:RecycleAllRes()
end

function Quest6023:OnSubStart602322(arg1)
    print("OnSubStart602322")
    this:DeployStoryByQuest(110602206)
    this:GolumbiaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6023:OnSubFinish602322(arg1)
    print("OnSubFinish602322")
end

function Quest6023:OnSubFailed602322(arg1)
    print("OnSubFailed602322")
    this:RecycleAllRes()
    this:GolumbiaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6023:OnSubStart602323(arg1)
    print("OnSubStart602323")
    this:DeployStoryByQuest(110602206)
    this:GolumbiaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6023:OnSubFinish602323(arg1)
    print("OnSubFinish602323")
    this:QuestNarratorTask(datas.NarratorWithId_602310, nil)
end

function Quest6023:OnSubFailed602323(arg1)
    print("OnSubFailed602323")
    this:RecycleAllRes()
    this:GolumbiaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6023:OnSubStart602324(arg1)
    print("OnSubStart602324")
    this:DeployStoryByQuest(110602206)
    this:GolumbiaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6023:OnSubFinish602324(arg1)
    print("OnSubFinish602324")
end

function Quest6023:OnSubFailed602324(arg1)
    print("OnSubFailed602324")
    this:RecycleAllRes()
    this:GolumbiaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6023:OnSubStart602325(arg1)
    print("OnSubStart602325")
    this:DeployStoryByQuest(110602206)
    this:GolumbiaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6023:OnSubFinish602325(arg1)
    print("OnSubFinish602325")
end

function Quest6023:OnSubFailed602325(arg1)
    print("OnSubFailed602325")
    this:CancelStoryByQuest(110602206)
    this:RecycleAllRes()
    this:GolumbiaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6023:OnSubStart602326(arg1)
    print("OnSubStart602326")
    this:NpcCreateWithNpcTriggerAndBlackscreen(602326, 0, 27, 0.5, npcs.Npc1314.id)
    actorMgr:CreateActorWithPos("Q602319Trigger_Transmit", "Actor/Gadget/Q602319Trigger_Transmit", 70900002, 0, points._Q602319Trigger_TransmitPoint_.pos, points._Q602319Trigger_TransmitPoint_.rot, true, false, 20321, nil, 0, 0)
    this:DeployStoryByQuest(110602206)
    this:GolumbiaMainPageControl(true)
    this:SetExitDungeonUIFunc()
end

function Quest6023:OnSubFinish602326(arg1)
    print("OnSubFinish602326")
    this:NpcDestroyImmediately(20321, npcs.Npc1314.alias)
    this:ActorDestroy("Q602319Trigger_Transmit", nil)
    this:CancelStoryByQuest(110602206)
    this:GolumbiaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6023:OnSubFailed602326(arg1)
    print("OnSubFailed602326")
    this:DestroyQuestNpcActor(npcs.Npc1314.alias, 20321)
    this:ActorDestroy("Q602319Trigger_Transmit", nil)
    this:RecycleAllRes()
    this:GolumbiaMainPageControl(false)
    this:CancleExitDungeonUIFunc()
end

function Quest6023:OnSubStart602319(arg1)
    print("OnSubStart602319")
    actorMgr:CreateActorWithPos("Q602319Trigger", "Actor/Gadget/Q602319Trigger", 70900002, 0, points._Q602319TriggerPoint_.pos, points._Q602319TriggerPoint_.rot, true, false, 20321, nil, 0, 0)
end

function Quest6023:OnSubFinish602319(arg1)
    print("OnSubFinish602319")
    this:SetNavigationByMainId(6023, true)
end

function Quest6023:OnSubStart602327(arg1)
    print("OnSubStart602327")
    actorMgr:CreateActorWithPos("Q602327Trigger_Transmit", "Actor/Gadget/Q602327Trigger_Transmit", 70900002, 0, points._Q602327Trigger_TransmitPoint_.pos, points._Q602327Trigger_TransmitPoint_.rot, true, false, 20321, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q602327Trigger", "Actor/Gadget/Q602327Trigger", 70900002, 0, points._Q602327TriggerPoint_.pos, points._Q602327TriggerPoint_.rot, true, false, 20321, nil, 0, 0)
end

function Quest6023:OnSubFinish602327(arg1)
    print("OnSubFinish602327")
    this:ActorDestroy("Q602327Trigger_Transmit", nil)
    this:SetNavigationByMainId(6023, true)
end

function Quest6023:OnSubStart602328(arg1)
    print("OnSubStart602328")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc12695.id, 0, 602328, 20, true)
end

function Quest6023:OnSubFinish602328(arg1)
    print("OnSubFinish602328")
    this:NpcDestroyImmediately(20321, npcs.Npc12695.alias)
end

function Quest6023:OnSubFailed602328(arg1)
    print("OnSubFailed602328")
    this:DestroyNpcTrigger("Q602328N12695Trigger")
    this:DestroyQuestNpcActor(npcs.Npc12695.alias, 20321)
    this:RecycleAllRes()
end

function Quest6023:OnSubStart602343(arg1)
    print("OnSubStart602343")
    actorMgr:CreateActorWithPos("Q602343Trigger", "Actor/Gadget/Q602343Trigger", 70900002, 0, points._Q602343TriggerPoint_.pos, points._Q602343TriggerPoint_.rot, true, false, 20321, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q602343Trigger_Transmit", "Actor/Gadget/Q602343Trigger_Transmit", 70900002, 0, points._Q602343Trigger_TransmitPoint_.pos, points._Q602343Trigger_TransmitPoint_.rot, true, false, 20321, nil, 0, 0)
end

function Quest6023:OnSubFinish602343(arg1)
    print("OnSubFinish602343")
    this:ActorDestroy("Q602343Trigger_Transmit", nil)
    this:SetNavigationByMainId(6023, true)
end

function Quest6023:OnSubStart602344(arg1)
    print("OnSubStart602344")
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(1, npcs.Npc1065.id, 0, 602344, 30, true)
end

function Quest6023:OnSubFinish602344(arg1)
    print("OnSubFinish602344")
    this:NpcDestroyImmediately(20321, npcs.Npc1065.alias)
end

function Quest6023:OnSubFailed602344(arg1)
    print("OnSubFailed602344")
    this:DestroyNpcTrigger("Q602344N1065Trigger")
    this:DestroyQuestNpcActor(npcs.Npc1065.alias, 20321)
    this:RecycleAllRes()
end

function Quest6023:OnSubStart602329(arg1)
    print("OnSubStart602329")
    actorMgr:CreateActorWithPos("Q602329Trigger_Transmit", "Actor/Gadget/Q602329Trigger_Transmit", 70900002, 0, points._Q602329Trigger_TransmitPoint_.pos, points._Q602329Trigger_TransmitPoint_.rot, true, false, 20321, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q602329Trigger", "Actor/Gadget/Q602329Trigger", 70900002, 0, points._Q602329TriggerPoint_.pos, points._Q602329TriggerPoint_.rot, true, false, 1205, nil, 0, 0)
end

function Quest6023:OnSubFinish602329(arg1)
    print("OnSubFinish602329")
    this:ActorDestroy("Q602329Trigger_Transmit", nil)
end

return Quest6023

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71103 = class("Quest71103", QuestActorProxy)
Quest71103.defaultAlias = "Quest71103"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest71103:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest71103:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7110302"] = self.OnSubStart7110302,
        ["7110303"] = self.OnSubStart7110303,
        ["7110345"] = self.OnSubStart7110345,
        ["7110304"] = self.OnSubStart7110304,
        ["7110349"] = self.OnSubStart7110349,
        ["7110351"] = self.OnSubStart7110351,
        ["7110344"] = self.OnSubStart7110344,
        ["7110305"] = self.OnSubStart7110305,
        ["7110306"] = self.OnSubStart7110306,
        ["7110307"] = self.OnSubStart7110307,
        ["7110350"] = self.OnSubStart7110350,
        ["7110308"] = self.OnSubStart7110308,
        ["7110309"] = self.OnSubStart7110309,
        ["7110347"] = self.OnSubStart7110347,
        ["7110348"] = self.OnSubStart7110348,
        ["7110310"] = self.OnSubStart7110310,
        ["7110311"] = self.OnSubStart7110311,
        ["7110313"] = self.OnSubStart7110313,
        ["7110315"] = self.OnSubStart7110315,
        ["7110318"] = self.OnSubStart7110318,
        ["7110319"] = self.OnSubStart7110319,
        ["7110320"] = self.OnSubStart7110320,
        ["7110321"] = self.OnSubStart7110321,
        ["7110322"] = self.OnSubStart7110322,
        ["7110323"] = self.OnSubStart7110323,
        ["7110325"] = self.OnSubStart7110325,
        ["7110326"] = self.OnSubStart7110326,
        ["7110328"] = self.OnSubStart7110328,
        ["7110330"] = self.OnSubStart7110330,
        ["7110332"] = self.OnSubStart7110332,
        ["7110334"] = self.OnSubStart7110334,
        ["7110335"] = self.OnSubStart7110335,
        ["7110336"] = self.OnSubStart7110336,
        ["7110337"] = self.OnSubStart7110337,
        ["7110342"] = self.OnSubStart7110342,
        ["7110339"] = self.OnSubStart7110339,
        ["7110341"] = self.OnSubStart7110341,
        ["7110338"] = self.OnSubStart7110338,
        ["7110340"] = self.OnSubStart7110340,
        ["7110301"] = self.OnSubStart7110301,
        ["7110343"] = self.OnSubStart7110343,
        ["7110312"] = self.OnSubStart7110312,
        ["7110314"] = self.OnSubStart7110314,
        ["7110316"] = self.OnSubStart7110316,
        ["7110324"] = self.OnSubStart7110324,
        ["7110327"] = self.OnSubStart7110327,
        ["7110329"] = self.OnSubStart7110329,
        ["7110331"] = self.OnSubStart7110331,
        ["7110333"] = self.OnSubStart7110333,
        ["7110346"] = self.OnSubStart7110346,
        ["7110317"] = self.OnSubStart7110317
    }
end

function Quest71103:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7110302"] = self.OnSubFinish7110302,
        ["7110303"] = self.OnSubFinish7110303,
        ["7110345"] = self.OnSubFinish7110345,
        ["7110304"] = self.OnSubFinish7110304,
        ["7110349"] = self.OnSubFinish7110349,
        ["7110351"] = self.OnSubFinish7110351,
        ["7110344"] = self.OnSubFinish7110344,
        ["7110305"] = self.OnSubFinish7110305,
        ["7110306"] = self.OnSubFinish7110306,
        ["7110307"] = self.OnSubFinish7110307,
        ["7110350"] = self.OnSubFinish7110350,
        ["7110308"] = self.OnSubFinish7110308,
        ["7110309"] = self.OnSubFinish7110309,
        ["7110347"] = self.OnSubFinish7110347,
        ["7110348"] = self.OnSubFinish7110348,
        ["7110310"] = self.OnSubFinish7110310,
        ["7110311"] = self.OnSubFinish7110311,
        ["7110313"] = self.OnSubFinish7110313,
        ["7110315"] = self.OnSubFinish7110315,
        ["7110318"] = self.OnSubFinish7110318,
        ["7110319"] = self.OnSubFinish7110319,
        ["7110320"] = self.OnSubFinish7110320,
        ["7110321"] = self.OnSubFinish7110321,
        ["7110322"] = self.OnSubFinish7110322,
        ["7110323"] = self.OnSubFinish7110323,
        ["7110325"] = self.OnSubFinish7110325,
        ["7110326"] = self.OnSubFinish7110326,
        ["7110328"] = self.OnSubFinish7110328,
        ["7110330"] = self.OnSubFinish7110330,
        ["7110332"] = self.OnSubFinish7110332,
        ["7110334"] = self.OnSubFinish7110334,
        ["7110335"] = self.OnSubFinish7110335,
        ["7110336"] = self.OnSubFinish7110336,
        ["7110337"] = self.OnSubFinish7110337,
        ["7110342"] = self.OnSubFinish7110342,
        ["7110339"] = self.OnSubFinish7110339,
        ["7110341"] = self.OnSubFinish7110341,
        ["7110338"] = self.OnSubFinish7110338,
        ["7110340"] = self.OnSubFinish7110340,
        ["7110301"] = self.OnSubFinish7110301,
        ["7110343"] = self.OnSubFinish7110343,
        ["7110312"] = self.OnSubFinish7110312,
        ["7110314"] = self.OnSubFinish7110314,
        ["7110316"] = self.OnSubFinish7110316,
        ["7110324"] = self.OnSubFinish7110324,
        ["7110327"] = self.OnSubFinish7110327,
        ["7110329"] = self.OnSubFinish7110329,
        ["7110331"] = self.OnSubFinish7110331,
        ["7110333"] = self.OnSubFinish7110333,
        ["7110346"] = self.OnSubFinish7110346,
        ["7110317"] = self.OnSubFinish7110317
    }
end

function Quest71103:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71103:Start()
    print("Start")
end

function Quest71103:OnDestroy()
    print("OnDestroy")
end

function Quest71103:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71103:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71103:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc2501Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21094Data.alias, 3)
    actorMgr:DestroyEntityActor("Q7110302Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110302Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q7110304Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110308Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110310Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110310Trigger2", 3, false)
    actorMgr:DestroyEntityActor("Q7110312Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110314Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110316Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110320Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110323Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110325Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110327Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110329Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110331Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110333Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110337Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110342Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110344Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110386Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110387Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7110388Trigger", 3, false)
end

function Quest71103:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest71103:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest71103:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest71103:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, arg5, 2)
end

function Quest71103:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest71103:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        actorUtils.FinishQuestID(false, 7110350)
        actorUtils.FinishQuestID(false, 7110307)
    elseif arg1 == 2 then
        actorUtils.FinishQuestID(false, 7110338)
        actorUtils.FinishQuestID(false, 7110342)
    elseif arg1 == 3 then
        actorUtils.FinishQuestID(false, 7110341)
    elseif arg1 == 48 then
        this:ActionSafeCall(function(arg1)
            this:TransmitPlayerWithDialogTextByQuestId(7110348, 4, datas.D7110348, 3)
            this:CallDelayByQuest("", 2, function(arg1)
                actorUtils.FinishQuestID(false, 7110348)
            end)
        end)
    elseif arg1 == 7 then
        actorUtils.FinishQuestID(true, 7110307)
    end
end

function Quest71103:OnSubStart7110302(arg1)
    print("OnSubStart7110302")
    actorMgr:CreateActorWithPos("Q7110302Trigger", "Actor/Gadget/Q7110302Trigger", 70900002, 0, points.TPos_Q7110302Trigger.pos, points.TPos_Q7110302Trigger.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7110302Trigger2", "Actor/Gadget/Q7110302Trigger2", 70900002, 0, points.TPos_Q7110302Trigger2.pos, points.TPos_Q7110302Trigger2.rot, true, false, 3)
end

function Quest71103:OnSubFinish7110302(arg1)
    print("OnSubFinish7110302")
end

function Quest71103:OnSubStart7110303(arg1)
    print("OnSubStart7110303")
end

function Quest71103:OnSubFinish7110303(arg1)
    print("OnSubFinish7110303")
end

function Quest71103:OnSubStart7110345(arg1)
    print("OnSubStart7110345")
end

function Quest71103:OnSubFinish7110345(arg1)
    print("OnSubFinish7110345")
    this:ActorDestroy("Q7110302Trigger")
end

function Quest71103:OnSubStart7110304(arg1)
    print("OnSubStart7110304")
    actorMgr:CreateActorWithPos("Q7110304Trigger", "Actor/Gadget/Q7110304Trigger", 70900002, 0, points.TPos_Q7110304Trigger.pos, points.TPos_Q7110304Trigger.rot, true, false, 3)
end

function Quest71103:OnSubFinish7110304(arg1)
    print("OnSubFinish7110304")
end

function Quest71103:OnSubStart7110349(arg1)
    print("OnSubStart7110349")
end

function Quest71103:OnSubFinish7110349(arg1)
    print("OnSubFinish7110349")
end

function Quest71103:OnSubStart7110351(arg1)
    print("OnSubStart7110351")
    this:CreateQuestNpc(arg1, npcs.Npc2501Data.id, 0)
    this:ActionSafeCall(function(arg1_2)
        this:NpcCreateWithActionSafeCall(arg1, npcs.Npc2501Data.id, 0)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc2501Data.alias, 71103)
        this:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.XiaoMaoRun, 999, 997, -1, function(arg1)
            actorUtils.FinishQuestID(false, 7110351)
        end, nil, nil, nil, nil, nil, false)
    end)
end

function Quest71103:OnSubFinish7110351(arg1)
    print("OnSubFinish7110351")
end

function Quest71103:OnSubStart7110344(arg1)
    print("OnSubStart7110344")
end

function Quest71103:OnSubFinish7110344(arg1)
    print("OnSubFinish7110344")
    actorMgr:GetActor("71103"):CallDelayByQuest("", 1, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc2501Data.alias, 71103)
        actorMgr:GetActor("71103"):NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.XiaoMaoRun02, 999, 997, -1, nil, nil, nil, nil, nil, nil, false)
    end)
end

function Quest71103:OnSubStart7110305(arg1)
    print("OnSubStart7110305")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2501Data.id, 7110305, 0, 10, 1)
end

function Quest71103:OnSubFinish7110305(arg1)
    print("OnSubFinish7110305")
    this:SafeDestroyQuestNpc(npcs.Npc2501Data.alias, 3)
end

function Quest71103:OnSubStart7110306(arg1)
    print("OnSubStart7110306")
end

function Quest71103:OnSubFinish7110306(arg1)
    print("OnSubFinish7110306")
end

function Quest71103:OnSubStart7110307(arg1)
    print("OnSubStart7110307")
    this:CreateQuestNpc(arg1, npcs.Npc2501Data.id, 0)
    this:CallDelay(0.5, function(arg1)
        this:RequestInteraction(npcs.Npc2501Data.alias)
    end)
end

function Quest71103:OnSubFinish7110307(arg1)
    print("OnSubFinish7110307")
    this:TransmitPlayerByQuestId(7110307, 7)
end

function Quest71103:OnSubStart7110350(arg1)
    print("OnSubStart7110350")
end

function Quest71103:OnSubFinish7110350(arg1)
    print("OnSubFinish7110350")
    this:TransmitPlayerByQuestId(7110350, 6)
end

function Quest71103:OnSubStart7110308(arg1)
    print("OnSubStart7110308")
    actorMgr:CreateActorWithPos("Q7110308Trigger", "Actor/Gadget/Q7110308Trigger", 70900002, 0, points.TPos_Q7110308Trigger.pos, points.TPos_Q7110308Trigger.rot, true, false, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2501Data.alias, 3)
end

function Quest71103:OnSubFinish7110308(arg1)
    print("OnSubFinish7110308")
end

function Quest71103:OnSubStart7110309(arg1)
    print("OnSubStart7110309")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2501Data.id, 7110309, 0, 10, 1)
end

function Quest71103:OnSubFinish7110309(arg1)
    print("OnSubFinish7110309")
    actorMgr:CreateActorWithPos("Q7110386Trigger", "Actor/Gadget/Q7110386Trigger", 70900002, 0, points.TPos_Q7110386Trigger.pos, points.TPos_Q7110386Trigger.rot, true, false, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2501Data.alias)
end

function Quest71103:OnSubStart7110347(arg1)
    print("OnSubStart7110347")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc2507Data.id, 0)
    actorMgr:CreateActorWithPos("Q7110346Trigger", "Actor/Gadget/Q7110346Trigger", 70900002, 0, points.TPos_Q7110346Trigger.pos, points.TPos_Q7110346Trigger.rot, true, false, 3)
end

function Quest71103:OnSubFinish7110347(arg1)
    print("OnSubFinish7110347")
end

function Quest71103:OnSubStart7110348(arg1)
    print("OnSubStart7110348")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2501Data.id, 7110348, 0, 20, 1)
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2507Data.id, 7110348, 0, 20, 1)
end

function Quest71103:OnSubFinish7110348(arg1)
    print("OnSubFinish7110348")
    this:SafeDestroyQuestNpc(npcs.Npc2501Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc2507Data.alias, 3)
end

function Quest71103:OnSubStart7110310(arg1)
    print("OnSubStart7110310")
    actorMgr:CreateActorWithPos("Q7110310Trigger", "Actor/Gadget/Q7110310Trigger", 70900002, 0, points.TPos_Q7110310Trigger.pos, points.TPos_Q7110310Trigger.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7110310Trigger2", "Actor/Gadget/Q7110310Trigger2", 70900002, 0, points.TPos_Q7110310Trigger2.pos, points.TPos_Q7110310Trigger2.rot, true, false, 3)
end

function Quest71103:OnSubFinish7110310(arg1)
    print("OnSubFinish7110310")
end

function Quest71103:OnSubStart7110311(arg1)
    print("OnSubStart7110311")
    this:NpcCreateWithNpcTriggerAndBlackscreen(npcs.Npc2501Data.id, 7110311, 0, 10, 1)
end

function Quest71103:OnSubFinish7110311(arg1)
    print("OnSubFinish7110311")
    actorMgr:CreateActorWithPos("Q7110312Trigger", "Actor/Gadget/Q7110312Trigger", 70900002, 0, points.TPos_Q7110312Trigger.pos, points.TPos_Q7110312Trigger.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7110314Trigger", "Actor/Gadget/Q7110314Trigger", 70900002, 0, points.TPos_Q7110314Trigger.pos, points.TPos_Q7110314Trigger.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7110316Trigger", "Actor/Gadget/Q7110316Trigger", 70900002, 0, points.TPos_Q7110316Trigger.pos, points.TPos_Q7110316Trigger.rot, true, false, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2501Data.alias)
end

function Quest71103:OnSubStart7110313(arg1)
    print("OnSubStart7110313")
end

function Quest71103:OnSubFinish7110313(arg1)
    print("OnSubFinish7110313")
    this:NarratorOnlyTaskByData(datas.C7110313, nil, 71103)
end

function Quest71103:OnSubStart7110315(arg1)
    print("OnSubStart7110315")
end

function Quest71103:OnSubFinish7110315(arg1)
    print("OnSubFinish7110315")
    this:NarratorOnlyTaskByData(datas.C7110315, nil, 71103)
end

function Quest71103:OnSubStart7110318(arg1)
    print("OnSubStart7110318")
end

function Quest71103:OnSubFinish7110318(arg1)
    print("OnSubFinish7110318")
end

function Quest71103:OnSubStart7110319(arg1)
    print("OnSubStart7110319")
end

function Quest71103:OnSubFinish7110319(arg1)
    print("OnSubFinish7110319")
end

function Quest71103:OnSubStart7110320(arg1)
    print("OnSubStart7110320")
    actorMgr:CreateActorWithPos("Q7110320Trigger", "Actor/Gadget/Q7110320Trigger", 70900002, 0, points.TPos_Q7110320Trigger.pos, points.TPos_Q7110320Trigger.rot, true, false, 3)
end

function Quest71103:OnSubFinish7110320(arg1)
    print("OnSubFinish7110320")
end

function Quest71103:OnSubStart7110321(arg1)
    print("OnSubStart7110321")
    this:CreateQuestNpc(arg1, npcs.Npc2501Data.id, 0)
    this:CallDelayByQuest("", 0.5, function(arg1)
        this:RequestInteraction(npcs.Npc2501Data.alias, "", true)
    end)
end

function Quest71103:OnSubFinish7110321(arg1)
    print("OnSubFinish7110321")
end

function Quest71103:OnSubStart7110322(arg1)
    print("OnSubStart7110322")
end

function Quest71103:OnSubFinish7110322(arg1)
    print("OnSubFinish7110322")
    this:PlayCutsceneIndex(71103221, nil, nil, nil, false)
    this:NarratorOnlyTaskByData(datas.C7110323, nil, 71103)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2501Data.alias)
end

function Quest71103:OnSubStart7110323(arg1)
    print("OnSubStart7110323")
    actorMgr:CreateActorWithPos("Q7110323Trigger", "Actor/Gadget/Q7110323Trigger", 70900002, 0, points.TPos_Q7110323Trigger.pos, points.TPos_Q7110323Trigger.rot, true, false, 3)
end

function Quest71103:OnSubFinish7110323(arg1)
    print("OnSubFinish7110323")
end

function Quest71103:OnSubStart7110325(arg1)
    print("OnSubStart7110325")
    actorMgr:CreateActorWithPos("Q7110325Trigger", "Actor/Gadget/Q7110325Trigger", 70900002, 0, points.TPos_Q7110325Trigger.pos, points.TPos_Q7110325Trigger.rot, true, false, 3)
end

function Quest71103:OnSubFinish7110325(arg1)
    print("OnSubFinish7110325")
end

function Quest71103:OnSubStart7110326(arg1)
    print("OnSubStart7110326")
    this:CreateQuestNpc(arg1, npcs.Npc2501Data.id, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21094Data.id, 0)
    this:CallDelayByQuest("", 0.5, function(arg1)
        this:RequestInteraction(npcs.Npc21094Data.alias, "", true)
    end)
end

function Quest71103:OnSubFinish7110326(arg1)
    print("OnSubFinish7110326")
    actorMgr:CreateActorWithPos("Q7110327Trigger", "Actor/Gadget/Q7110327Trigger", 70900002, 0, points.TPos_Q7110327Trigger.pos, points.TPos_Q7110327Trigger.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7110329Trigger", "Actor/Gadget/Q7110329Trigger", 70900002, 0, points.TPos_Q7110329Trigger.pos, points.TPos_Q7110329Trigger.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7110331Trigger", "Actor/Gadget/Q7110331Trigger", 70900002, 0, points.TPos_Q7110331Trigger.pos, points.TPos_Q7110331Trigger.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7110333Trigger", "Actor/Gadget/Q7110333Trigger", 70900002, 0, points.TPos_Q7110333Trigger.pos, points.TPos_Q7110333Trigger.rot, true, false, 3)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2501Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21094Data.alias)
    this:NarratorOnlyTaskByData(datas.C7110389)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2501Data.alias)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21094Data.alias)
end

function Quest71103:OnSubStart7110328(arg1)
    print("OnSubStart7110328")
end

function Quest71103:OnSubFinish7110328(arg1)
    print("OnSubFinish7110328")
end

function Quest71103:OnSubStart7110330(arg1)
    print("OnSubStart7110330")
end

function Quest71103:OnSubFinish7110330(arg1)
    print("OnSubFinish7110330")
end

function Quest71103:OnSubStart7110332(arg1)
    print("OnSubStart7110332")
end

function Quest71103:OnSubFinish7110332(arg1)
    print("OnSubFinish7110332")
end

function Quest71103:OnSubStart7110334(arg1)
    print("OnSubStart7110334")
end

function Quest71103:OnSubFinish7110334(arg1)
    print("OnSubFinish7110334")
end

function Quest71103:OnSubStart7110335(arg1)
    print("OnSubStart7110335")
end

function Quest71103:OnSubFinish7110335(arg1)
    print("OnSubFinish7110335")
end

function Quest71103:OnSubStart7110336(arg1)
    print("OnSubStart7110336")
end

function Quest71103:OnSubFinish7110336(arg1)
    print("OnSubFinish7110336")
    this:NarratorOnlyTaskByData(datas.C7110337a, nil, 71103)
end

function Quest71103:OnSubStart7110337(arg1)
    print("OnSubStart7110337")
    actorMgr:CreateActorWithPos("Q7110337Trigger", "Actor/Gadget/Q7110337Trigger", 70900002, 0, points.TPos_Q7110337Trigger.pos, points.TPos_Q7110337Trigger.rot, true, false, 3)
end

function Quest71103:OnSubFinish7110337(arg1)
    print("OnSubFinish7110337")
end

function Quest71103:OnSubStart7110342(arg1)
    print("OnSubStart7110342")
    actorMgr:CreateActorWithPos("Q7110342Trigger", "Actor/Gadget/Q7110342Trigger", 70900002, 0, points.TPos_Q7110342Trigger.pos, points.TPos_Q7110342Trigger.rot, true, false, 3)
end

function Quest71103:OnSubFinish7110342(arg1)
    print("OnSubFinish7110342")
    this:TransmitPlayerByQuestId(7110342, 5)
end

function Quest71103:OnSubStart7110339(arg1)
    print("OnSubStart7110339")
    this:CreateQuestNpc(arg1, npcs.Npc2501Data.id, 0)
    this:RequestInteraction(npcs.Npc2501Data.alias, "", true)
end

function Quest71103:OnSubFinish7110339(arg1)
    print("OnSubFinish7110339")
end

function Quest71103:OnSubStart7110341(arg1)
    print("OnSubStart7110341")
end

function Quest71103:OnSubFinish7110341(arg1)
    print("OnSubFinish7110341")
end

function Quest71103:OnSubStart7110338(arg1)
    print("OnSubStart7110338")
    this:CreateQuestNpc(arg1, npcs.Npc2501Data.id, 0)
end

function Quest71103:OnSubFinish7110338(arg1)
    print("OnSubFinish7110338")
    this:TransmitPlayerByQuestId(7110338, 2)
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2501Data.alias)
end

function Quest71103:OnSubStart7110340(arg1)
    print("OnSubStart7110340")
    actorMgr:CreateActorWithPos("Q7110340Trigger", "Actor/Gadget/Q7110340Trigger", 70900002, 0, points.TPos_Q7110340Trigger.pos, points.TPos_Q7110340Trigger.rot, true, false, 3)
end

function Quest71103:OnSubFinish7110340(arg1)
    print("OnSubFinish7110340")
end

function Quest71103:OnSubStart7110301(arg1)
    print("OnSubStart7110301")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc2501Data.id, 0)
end

function Quest71103:OnSubFinish7110301(arg1)
    print("OnSubFinish7110301")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2501Data.alias)
end

function Quest71103:OnSubStart7110343(arg1)
    print("OnSubStart7110343")
    this:NpcCreateWithBlackscreen(arg1, npcs.Npc2501Data.id, 0)
    this:CallDelay(1, function(arg1) end)
    this:RequestInteraction(npcs.Npc2501Data.alias)
end

function Quest71103:OnSubFinish7110343(arg1)
    print("OnSubFinish7110343")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc2501Data.alias)
end

function Quest71103:OnSubStart7110312(arg1)
    print("OnSubStart7110312")
end

function Quest71103:OnSubFinish7110312(arg1)
    print("OnSubFinish7110312")
end

function Quest71103:OnSubStart7110314(arg1)
    print("OnSubStart7110314")
end

function Quest71103:OnSubFinish7110314(arg1)
    print("OnSubFinish7110314")
end

function Quest71103:OnSubStart7110316(arg1)
    print("OnSubStart7110316")
end

function Quest71103:OnSubFinish7110316(arg1)
    print("OnSubFinish7110316")
end

function Quest71103:OnSubStart7110324(arg1)
    print("OnSubStart7110324")
end

function Quest71103:OnSubFinish7110324(arg1)
    print("OnSubFinish7110324")
end

function Quest71103:OnSubStart7110327(arg1)
    print("OnSubStart7110327")
end

function Quest71103:OnSubFinish7110327(arg1)
    print("OnSubFinish7110327")
end

function Quest71103:OnSubStart7110329(arg1)
    print("OnSubStart7110329")
end

function Quest71103:OnSubFinish7110329(arg1)
    print("OnSubFinish7110329")
end

function Quest71103:OnSubStart7110331(arg1)
    print("OnSubStart7110331")
end

function Quest71103:OnSubFinish7110331(arg1)
    print("OnSubFinish7110331")
end

function Quest71103:OnSubStart7110333(arg1)
    print("OnSubStart7110333")
end

function Quest71103:OnSubFinish7110333(arg1)
    print("OnSubFinish7110333")
end

function Quest71103:OnSubStart7110346(arg1)
    print("OnSubStart7110346")
end

function Quest71103:OnSubFinish7110346(arg1)
    print("OnSubFinish7110346")
end

function Quest71103:OnSubStart7110317(arg1)
    print("OnSubStart7110317")
end

function Quest71103:OnSubFinish7110317(arg1)
    print("OnSubFinish7110317")
end

return Quest71103

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76003 = class("Quest76003", QuestActorProxy)
Quest76003.defaultAlias = "Quest76003"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76003:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76003:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7600301"] = self.OnSubStart7600301,
        ["7600355"] = self.OnSubStart7600355,
        ["7600302"] = self.OnSubStart7600302,
        ["7600304"] = self.OnSubStart7600304,
        ["7600305"] = self.OnSubStart7600305,
        ["7600306"] = self.OnSubStart7600306,
        ["7600307"] = self.OnSubStart7600307,
        ["7600308"] = self.OnSubStart7600308,
        ["7600309"] = self.OnSubStart7600309,
        ["7600310"] = self.OnSubStart7600310,
        ["7600311"] = self.OnSubStart7600311,
        ["7600312"] = self.OnSubStart7600312,
        ["7600313"] = self.OnSubStart7600313,
        ["7600348"] = self.OnSubStart7600348,
        ["7600316"] = self.OnSubStart7600316,
        ["7600349"] = self.OnSubStart7600349,
        ["7600303"] = self.OnSubStart7600303,
        ["7600350"] = self.OnSubStart7600350,
        ["7600354"] = self.OnSubStart7600354,
        ["7600318"] = self.OnSubStart7600318,
        ["7600359"] = self.OnSubStart7600359,
        ["7600360"] = self.OnSubStart7600360,
        ["7600356"] = self.OnSubStart7600356,
        ["7600315"] = self.OnSubStart7600315,
        ["7600317"] = self.OnSubStart7600317,
        ["7600320"] = self.OnSubStart7600320,
        ["7600343"] = self.OnSubStart7600343,
        ["7600344"] = self.OnSubStart7600344,
        ["7600345"] = self.OnSubStart7600345,
        ["7600314"] = self.OnSubStart7600314,
        ["7600346"] = self.OnSubStart7600346,
        ["7600322"] = self.OnSubStart7600322,
        ["7600323"] = self.OnSubStart7600323,
        ["7600324"] = self.OnSubStart7600324,
        ["7600325"] = self.OnSubStart7600325,
        ["7600326"] = self.OnSubStart7600326,
        ["7600342"] = self.OnSubStart7600342,
        ["7600347"] = self.OnSubStart7600347,
        ["7600327"] = self.OnSubStart7600327,
        ["7600321"] = self.OnSubStart7600321,
        ["7600328"] = self.OnSubStart7600328,
        ["7600329"] = self.OnSubStart7600329,
        ["7600319"] = self.OnSubStart7600319,
        ["7600351"] = self.OnSubStart7600351,
        ["7600353"] = self.OnSubStart7600353,
        ["7600358"] = self.OnSubStart7600358,
        ["7600361"] = self.OnSubStart7600361,
        ["7600352"] = self.OnSubStart7600352,
        ["7600332"] = self.OnSubStart7600332,
        ["7600330"] = self.OnSubStart7600330,
        ["7600331"] = self.OnSubStart7600331,
        ["7600333"] = self.OnSubStart7600333,
        ["7600335"] = self.OnSubStart7600335,
        ["7600362"] = self.OnSubStart7600362,
        ["7600363"] = self.OnSubStart7600363,
        ["7600336"] = self.OnSubStart7600336,
        ["7600364"] = self.OnSubStart7600364,
        ["7600334"] = self.OnSubStart7600334,
        ["7600337"] = self.OnSubStart7600337,
        ["7600338"] = self.OnSubStart7600338,
        ["7600339"] = self.OnSubStart7600339,
        ["7600340"] = self.OnSubStart7600340,
        ["7600341"] = self.OnSubStart7600341
    }
end

function Quest76003:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7600301"] = self.OnSubFinish7600301,
        ["7600355"] = self.OnSubFinish7600355,
        ["7600302"] = self.OnSubFinish7600302,
        ["7600304"] = self.OnSubFinish7600304,
        ["7600305"] = self.OnSubFinish7600305,
        ["7600306"] = self.OnSubFinish7600306,
        ["7600307"] = self.OnSubFinish7600307,
        ["7600308"] = self.OnSubFinish7600308,
        ["7600309"] = self.OnSubFinish7600309,
        ["7600310"] = self.OnSubFinish7600310,
        ["7600311"] = self.OnSubFinish7600311,
        ["7600312"] = self.OnSubFinish7600312,
        ["7600313"] = self.OnSubFinish7600313,
        ["7600348"] = self.OnSubFinish7600348,
        ["7600316"] = self.OnSubFinish7600316,
        ["7600349"] = self.OnSubFinish7600349,
        ["7600303"] = self.OnSubFinish7600303,
        ["7600350"] = self.OnSubFinish7600350,
        ["7600354"] = self.OnSubFinish7600354,
        ["7600318"] = self.OnSubFinish7600318,
        ["7600359"] = self.OnSubFinish7600359,
        ["7600360"] = self.OnSubFinish7600360,
        ["7600356"] = self.OnSubFinish7600356,
        ["7600315"] = self.OnSubFinish7600315,
        ["7600317"] = self.OnSubFinish7600317,
        ["7600320"] = self.OnSubFinish7600320,
        ["7600343"] = self.OnSubFinish7600343,
        ["7600344"] = self.OnSubFinish7600344,
        ["7600345"] = self.OnSubFinish7600345,
        ["7600314"] = self.OnSubFinish7600314,
        ["7600346"] = self.OnSubFinish7600346,
        ["7600322"] = self.OnSubFinish7600322,
        ["7600323"] = self.OnSubFinish7600323,
        ["7600324"] = self.OnSubFinish7600324,
        ["7600325"] = self.OnSubFinish7600325,
        ["7600326"] = self.OnSubFinish7600326,
        ["7600342"] = self.OnSubFinish7600342,
        ["7600347"] = self.OnSubFinish7600347,
        ["7600327"] = self.OnSubFinish7600327,
        ["7600321"] = self.OnSubFinish7600321,
        ["7600328"] = self.OnSubFinish7600328,
        ["7600329"] = self.OnSubFinish7600329,
        ["7600319"] = self.OnSubFinish7600319,
        ["7600351"] = self.OnSubFinish7600351,
        ["7600353"] = self.OnSubFinish7600353,
        ["7600358"] = self.OnSubFinish7600358,
        ["7600361"] = self.OnSubFinish7600361,
        ["7600352"] = self.OnSubFinish7600352,
        ["7600332"] = self.OnSubFinish7600332,
        ["7600330"] = self.OnSubFinish7600330,
        ["7600331"] = self.OnSubFinish7600331,
        ["7600333"] = self.OnSubFinish7600333,
        ["7600335"] = self.OnSubFinish7600335,
        ["7600362"] = self.OnSubFinish7600362,
        ["7600363"] = self.OnSubFinish7600363,
        ["7600336"] = self.OnSubFinish7600336,
        ["7600364"] = self.OnSubFinish7600364,
        ["7600334"] = self.OnSubFinish7600334,
        ["7600337"] = self.OnSubFinish7600337,
        ["7600338"] = self.OnSubFinish7600338,
        ["7600339"] = self.OnSubFinish7600339,
        ["7600340"] = self.OnSubFinish7600340,
        ["7600341"] = self.OnSubFinish7600341
    }
end

function Quest76003:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest76003:Start()
    print("Start")
end

function Quest76003:OnDestroy()
    print("OnDestroy")
end

function Quest76003:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76003:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76003:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76003:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7600301Trigger")
    this:ActorDestroy("Q7600316Trigger")
    this:ActorDestroy("Q7600318Trigger")
    this:ActorDestroy("Q7600322Trigger")
    this:ActorDestroy("Q7600327Trigger")
    this:ActorDestroy("Q7600331Trigger")
    this:ActorDestroy("Q7600335Trigger")
    this:ActorDestroy("Q7600336Trigger")
    this:ActorDestroy("Q7600340Trigger")
    this:ActorDestroy("Q7600302Trigger")
    this:ActorDestroy("Q7600317Trigger")
    this:ActorDestroy("Q7600354")
    this:ActorDestroy("Q7600355")
    this:ActorDestroy("Q7600324igger")
    this:ActorDestroy("Q7600333Tigger")
    this:ActorDestroy("Q7600334Tigger")
    this:ActorDestroy("Q7600362Trigger")
    this:ActorDestroy("Q7600310igger")
    this:ActorDestroy("Q7600315Trigger")
    this:ActorDestroy("Q7600336Trigger_1")
    this:ActorDestroy("Q7600311Trigger")
    this:ActorDestroy("Q7600354trigger")
    this:ActorDestroy("Q760033401trigger")
    this:ActorDestroy("Q7600318Trigger_1")
    this:ActorDestroy("Q7600326Trigger")
    this:ActorDestroy("Q7600304Trigger")
    this:ActorDestroy("Q7600309Trigger")
end

function Quest76003:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76003:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest76003:NpcDestroyWithBlackscreen(arg1, arg2)
    globalActor:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "", false, true)
end

function Quest76003:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76003:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76003:NpcCreateWithNpcTriggerAndBlackscreenEX(arg1, arg2, arg3, arg4, arg5, arg6)
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

function Quest76003:CallDelayNpcCreateWithNpcTriggerAndBlack(arg1, arg2, arg3, arg4, arg5)
    this:CallDelayByQuest("Q" .. arg1 .. "N" .. arg5 .. "CallDelay", 2, function(arg1_2)
        this:CreateQuestNpcWithTriggerBlackEx("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, 0.5, arg4, 0.5, 2)
    end)
end

function Quest76003:OnSubStart7600301(arg1)
    print("OnSubStart7600301")
    this:NpcCreateWithNpcTrigger(npcs.Npc22010.id, 0, 0, 7600301)
    this:NpcCreateWithNpcTrigger(npcs.Npc22011.id, 0, 10, 7600301)
    actorMgr:CreateActorWithPos("Q7600301Trigger", "Actor/Gadget/Q7600301Trigger", 70900002, 0, points._Q7600301TriggerPoint_.pos, points._Q7600301TriggerPoint_.rot, true, false, 3)
end

function Quest76003:OnSubFinish7600301(arg1)
    print("OnSubFinish7600301")
    this:SafeDestroyQuestNpc(npcs.Npc22010.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22011.alias, 3)
end

function Quest76003:OnSubStart7600355(arg1)
    print("OnSubStart7600355")
end

function Quest76003:OnSubFinish7600355(arg1)
    print("OnSubFinish7600355")
end

function Quest76003:OnSubStart7600302(arg1)
    print("OnSubStart7600302")
    actorMgr:CreateActorWithPos("Q7600302Trigger", "Actor/Gadget/Q7600302Trigger", 70900002, 0, points._Q7600302TriggerPoint_.pos, points._Q7600302TriggerPoint_.rot, true, false, 3)
end

function Quest76003:OnSubFinish7600302(arg1)
    print("OnSubFinish7600302")
end

function Quest76003:OnSubStart7600304(arg1)
    print("OnSubStart7600304")
    actorMgr:CreateActorWithPos("Q7600304Trigger", "Actor/Gadget/Q7600304Trigger", 70900002, 0, points._Q7600304TriggerPoint_.pos, points._Q7600304TriggerPoint_.rot, true, false, 3)
end

function Quest76003:OnSubFinish7600304(arg1)
    print("OnSubFinish7600304")
end

function Quest76003:OnSubStart7600305(arg1)
    print("OnSubStart7600305")
    this:CreateQuestNpc(arg1, npcs.Npc21896.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21899.id, 0, false, 0)
end

function Quest76003:OnSubFinish7600305(arg1)
    print("OnSubFinish7600305")
    this:SafeDestroyQuestNpc(npcs.Npc21896.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21899.alias, 3)
end

function Quest76003:OnSubStart7600306(arg1)
    print("OnSubStart7600306")
end

function Quest76003:OnSubFinish7600306(arg1)
    print("OnSubFinish7600306")
end

function Quest76003:OnSubStart7600307(arg1)
    print("OnSubStart7600307")
    this:CreateQuestNpc(arg1, npcs.Npc21986.id, 0, false, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreenEX(0, npcs.Npc21822.id, 0, 7600307, 20, true)
end

function Quest76003:OnSubFinish7600307(arg1)
    print("OnSubFinish7600307")
    this:SafeDestroyQuestNpc(npcs.Npc21986.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21822.alias, 3)
end

function Quest76003:OnSubStart7600308(arg1)
    print("OnSubStart7600308")
end

function Quest76003:OnSubFinish7600308(arg1)
    print("OnSubFinish7600308")
end

function Quest76003:OnSubStart7600309(arg1)
    print("OnSubStart7600309")
    actorMgr:CreateActorWithPos("Q7600309Trigger", "Actor/Gadget/Q7600309Trigger", 70900002, 0, points._Q7600309TriggerPoint_.pos, points._Q7600309TriggerPoint_.rot, true, false, 3)
end

function Quest76003:OnSubFinish7600309(arg1)
    print("OnSubFinish7600309")
end

function Quest76003:OnSubStart7600310(arg1)
    print("OnSubStart7600310")
    this:CreateQuestNpc(arg1, npcs.Npc7169.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7600310igger", "Actor/Gadget/Q7600310igger", 70900002, 0, points._Q7600310iggerPoint_.pos, points._Q7600310iggerPoint_.rot, true, false, 3)
end

function Quest76003:OnSubFinish7600310(arg1)
    print("OnSubFinish7600310")
    this:SafeDestroyQuestNpc(npcs.Npc7169.alias, 3)
end

function Quest76003:OnSubStart7600311(arg1)
    print("OnSubStart7600311")
    this:CreateQuestNpc(arg1, npcs.Npc21884.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21985.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc22011.id, 0, 20, 7600311)
    this:NpcCreateWithNpcTrigger(npcs.Npc22186.id, 0, 20, 7600311)
    actorMgr:CreateActorWithPos("Q7600311Trigger", "Actor/Gadget/Q7600311Trigger", 70900002, 0, points._Q7600311TriggerPoint_.pos, points._Q7600311TriggerPoint_.rot, true, false, 3)
end

function Quest76003:OnSubFinish7600311(arg1)
    print("OnSubFinish7600311")
    this:SafeDestroyQuestNpc(npcs.Npc22011.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22186.alias, 3)
end

function Quest76003:OnSubStart7600312(arg1)
    print("OnSubStart7600312")
end

function Quest76003:OnSubFinish7600312(arg1)
    print("OnSubFinish7600312")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21884.alias)
end

function Quest76003:OnSubStart7600313(arg1)
    print("OnSubStart7600313")
end

function Quest76003:OnSubFinish7600313(arg1)
    print("OnSubFinish7600313")
end

function Quest76003:OnSubStart7600348(arg1)
    print("OnSubStart7600348")
end

function Quest76003:OnSubFinish7600348(arg1)
    print("OnSubFinish7600348")
    this:SafeDestroyQuestNpc(npcs.Npc21985.alias, 3)
    this:ShowBlackScreenWithDialogText(1, 2, 1, nil, nil, nil, 0, false, true)
end

function Quest76003:OnSubStart7600316(arg1)
    print("OnSubStart7600316")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600316, 0, 30, 0, npcs.Npc21882.id)
end

function Quest76003:OnSubFinish7600316(arg1)
    print("OnSubFinish7600316")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21882.alias)
end

function Quest76003:OnSubStart7600349(arg1)
    print("OnSubStart7600349")
end

function Quest76003:OnSubFinish7600349(arg1)
    print("OnSubFinish7600349")
    this:ShowBlackScreenWithDialogText(0.5, 1, 0.5, nil, nil, nil, 0, false, true)
end

function Quest76003:OnSubStart7600303(arg1)
    print("OnSubStart7600303")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21882.id, arg1)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc21882.alias, 0)
    this:NpcRunToTask(questNpcActor, {x = 3245.348, y = 375.9, z = 9789.192}, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc21882.alias, 0)
        this:NpcRunToTask(questNpcActor, {x = 3279.003, y = 375.875, z = 9787.53}, function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc21882.alias, 0)
            this:NpcRunToTask(questNpcActor, {x = 3279.921, y = 380.467, z = 9751.878}, function(arg1)
                local questNpcActor = this:GetQuestNpcActor(npcs.Npc21882.alias, 0)
                this:NpcRunToTask(questNpcActor, {x = 3287.379, y = 380.465, z = 9751.141}, function(arg1)
                    local questNpcActor = this:GetQuestNpcActor(npcs.Npc21882.alias, 0)
                    this:NpcRunToTask(questNpcActor, {x = 3288.331, y = 379.847, z = 9743.519}, function(arg1)
                        local questNpcActor = this:GetQuestNpcActor(npcs.Npc21882.alias, 0)
                        this:NpcJumpToTask(questNpcActor, {x = 3295.002, y = 376.247, z = 9742.054}, 4483, function(arg1)
                            actorMgr:CreateActorWithPos("Q7600317Trigger", "Actor/Gadget/Q7600317Trigger", 70900002, 0, points._Q7600317TriggerPoint_.pos, points._Q7600317TriggerPoint_.rot, true, false, 3)
                        end, nil, nil, nil)
                    end, nil, nil, nil)
                end, nil, nil, nil)
            end, nil, nil, nil)
        end, nil, nil, nil)
    end, nil, nil, nil)
end

function Quest76003:OnSubFinish7600303(arg1)
    print("OnSubFinish7600303")
end

function Quest76003:OnSubStart7600350(arg1)
    print("OnSubStart7600350")
    this:CreateQuestNpc(arg1, npcs.Npc22189.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22190.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21984.id, 0, false, 0)
end

function Quest76003:OnSubFinish7600350(arg1)
    print("OnSubFinish7600350")
    this:SafeDestroyQuestNpc(npcs.Npc21984.alias, 3)
    this:TransmitPlayerById(arg1, 2, nil, nil, nil)
end

function Quest76003:OnSubStart7600354(arg1)
    print("OnSubStart7600354")
    actorMgr:CreateActorWithPos("Q7600354", "Actor/Gadget/Q7600354", 70900002, 0, points._Q7600354Point_.pos, points._Q7600354Point_.rot, true, false, 3)
end

function Quest76003:OnSubFinish7600354(arg1)
    print("OnSubFinish7600354")
end

function Quest76003:OnSubStart7600318(arg1)
    print("OnSubStart7600318")
    actorMgr:CreateActorWithPos("Q7600318Trigger_1", "Actor/Gadget/Q7600318Trigger_1", 70900002, 0, points._Q7600318Trigger_1Point_.pos, points._Q7600318Trigger_1Point_.rot, true, false, 3)
end

function Quest76003:OnSubFinish7600318(arg1)
    print("OnSubFinish7600318")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21882.alias)
end

function Quest76003:OnSubStart7600359(arg1)
    print("OnSubStart7600359")
end

function Quest76003:OnSubFinish7600359(arg1)
    print("OnSubFinish7600359")
end

function Quest76003:OnSubStart7600360(arg1)
    print("OnSubStart7600360")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21882.id, arg1)
    this:GetQuestNpcActor(npcs.Npc21882.alias, 76003):EnableInteractionWithUIEx(false)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc21882.alias, 0)
    this:NpcRunToTask(questNpcActor, {x = 3417.262, y = 361.663, z = 9831.705}, function(arg1)
        actorUtils.FinishQuestID(false, 7600360)
    end, nil, nil, nil)
end

function Quest76003:OnSubFinish7600360(arg1)
    print("OnSubFinish7600360")
end

function Quest76003:OnSubStart7600356(arg1)
    print("OnSubStart7600356")
    this:GetQuestNpcActor(npcs.Npc21882.alias, 76003):EnableInteractionWithUIEx(true)
end

function Quest76003:OnSubFinish7600356(arg1)
    print("OnSubFinish7600356")
end

function Quest76003:OnSubStart7600315(arg1)
    print("OnSubStart7600315")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21882.id, arg1)
    actorMgr:CreateActorWithPos("Q7600315Trigger", "Actor/Gadget/Q7600315Trigger", 70900002, 0, points._Q7600315TriggerPoint_.pos, points._Q7600315TriggerPoint_.rot, true, false, 3)
end

function Quest76003:OnSubFinish7600315(arg1)
    print("OnSubFinish7600315")
end

function Quest76003:OnSubStart7600317(arg1)
    print("OnSubStart7600317")
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc21882.alias, 0)
    this:NpcRunToTask(questNpcActor, {x = 3369.343, y = 361.03, z = 9829.25}, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc21882.alias, 0)
        this:NpcJumpToTask(questNpcActor, {x = 3363.114, y = 356.767, z = 9825.843}, 4483, function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc21882.alias, 0)
            this:NpcRunToTask(questNpcActor, {x = 3356.848, y = 356.766, z = 9822.386}, function(arg1)
                local questNpcActor = this:GetQuestNpcActor(npcs.Npc21882.alias, 0)
                this:NpcRunToTask(questNpcActor, {x = 3361.616, y = 357.536, z = 9813.256}, function(arg1)
                    actorUtils.FinishQuestID(false, 7600317)
                end, nil, nil, nil)
            end, nil, nil, nil)
        end, nil, nil, nil)
    end, nil, nil, nil)
end

function Quest76003:OnSubFinish7600317(arg1)
    print("OnSubFinish7600317")
end

function Quest76003:OnSubStart7600320(arg1)
    print("OnSubStart7600320")
    this:CreateQuestNpc(arg1, npcs.Npc21882.id, 0, false, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc21882.alias, 0)
    this:NpcRunToTask(questNpcActor, {x = 3366.364, y = 357.536, z = 9808.265}, function(arg1)
        this:GetQuestNpcActor(npcs.Npc21882.alias, 76003):DoFreeStyle(1190, true, nil, true, true, false, false)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc21882.alias, 0)
        this:NpcRunToTask(questNpcActor, {x = 3371.922, y = 357.562, z = 9810.593}, function(arg1)
            this:GetQuestNpcActor(npcs.Npc21882.alias, 76003):DoFreeStyle(1190, true, nil, true, true, false, false)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc21882.alias, 0)
            this:NpcRunToTask(questNpcActor, {x = 3368.852, y = 357.536, z = 9818.324}, function(arg1)
                this:GetQuestNpcActor(npcs.Npc21882.alias, 76003):DoFreeStyle(1190, true, nil, true, true, false, false)
            end, nil, nil, nil)
        end, nil, nil, nil)
    end, nil, nil, nil)
end

function Quest76003:OnSubFinish7600320(arg1)
    print("OnSubFinish7600320")
end

function Quest76003:OnSubStart7600343(arg1)
    print("OnSubStart7600343")
    this:CreateQuestNpc(arg1, npcs.Npc21998.id, 0, false, 0)
end

function Quest76003:OnSubFinish7600343(arg1)
    print("OnSubFinish7600343")
    this:SafeDestroyQuestNpc(npcs.Npc21998.alias, 3)
end

function Quest76003:OnSubStart7600344(arg1)
    print("OnSubStart7600344")
    this:CreateQuestNpc(arg1, npcs.Npc21999.id, 0, false, 0)
end

function Quest76003:OnSubFinish7600344(arg1)
    print("OnSubFinish7600344")
    this:SafeDestroyQuestNpc(npcs.Npc21999.alias, 3)
end

function Quest76003:OnSubStart7600345(arg1)
    print("OnSubStart7600345")
    this:CreateQuestNpc(arg1, npcs.Npc22193.id, 0, false, 0)
end

function Quest76003:OnSubFinish7600345(arg1)
    print("OnSubFinish7600345")
    this:SafeDestroyQuestNpc(npcs.Npc22193.alias, 3)
end

function Quest76003:OnSubStart7600314(arg1)
    print("OnSubStart7600314")
    this:CreateQuestNpc(arg1, npcs.Npc22000.id, 0, false, 0)
end

function Quest76003:OnSubFinish7600314(arg1)
    print("OnSubFinish7600314")
    this:SafeDestroyQuestNpc(npcs.Npc22000.alias, 3)
end

function Quest76003:OnSubStart7600346(arg1)
    print("OnSubStart7600346")
end

function Quest76003:OnSubFinish7600346(arg1)
    print("OnSubFinish7600346")
    this:SafeDestroyQuestNpc(npcs.Npc21882.alias, 3)
end

function Quest76003:OnSubStart7600322(arg1)
    print("OnSubStart7600322")
    actorMgr:CreateActorWithPos("Q7600322Trigger", "Actor/Gadget/Q7600322Trigger", 70900002, 0, points._Q7600322TriggerPoint_.pos, points._Q7600322TriggerPoint_.rot, true, false, 3)
end

function Quest76003:OnSubFinish7600322(arg1)
    print("OnSubFinish7600322")
end

function Quest76003:OnSubStart7600323(arg1)
    print("OnSubStart7600323")
end

function Quest76003:OnSubFinish7600323(arg1)
    print("OnSubFinish7600323")
end

function Quest76003:OnSubStart7600324(arg1)
    print("OnSubStart7600324")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21882.id, arg1)
    this:CreateQuestNpc(arg1, npcs.Npc22245.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22246.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22247.id, 0, false, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc21882.alias, 0)
    this:NpcRunToTask(questNpcActor, {x = 3292.836, y = 376.025, z = 9797.201}, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc21882.alias, 0)
        this:NpcRunToTask(questNpcActor, {x = 3278.736, y = 375.284, z = 9818.358}, function(arg1)
            actorMgr:CreateActorWithPos("Q7600324igger", "Actor/Gadget/Q7600324igger", 70900002, 0, points._Q7600324iggerPoint_.pos, points._Q7600324iggerPoint_.rot, true, false, 3)
        end, nil, nil, nil)
    end, nil, nil, nil)
end

function Quest76003:OnSubFinish7600324(arg1)
    print("OnSubFinish7600324")
end

function Quest76003:OnSubStart7600325(arg1)
    print("OnSubStart7600325")
    this:CreateQuestNpc(arg1, npcs.Npc21899.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22189.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22190.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22245.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22246.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22247.id, 0, false, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc21882.alias, 0)
    this:NpcRunToTask(questNpcActor, {x = 3289.334, y = 369.896, z = 9824.176}, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc21882.alias, 0)
        this:NpcRunToTask(questNpcActor, {x = 3289.808, y = 369.897, z = 9829.02}, function(arg1)
            this:GetQuestNpcActor(npcs.Npc21882.alias, 76003):EnableInteractionWithUIEx(false)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc21882.alias, 0)
            this:NpcRunToTask(questNpcActor, {x = 3285.511, y = 369.934, z = 9837.71}, function(arg1)
                this:GetQuestNpcActor(npcs.Npc21882.alias, 76003):DoFreeStyle(1190, true, nil, true, true, false, false)
                local questNpcActor = this:GetQuestNpcActor(npcs.Npc21882.alias, 0)
                this:NpcRunToTask(questNpcActor, {x = 3278.394, y = 369.897, z = 9829.697}, function(arg1)
                    this:GetQuestNpcActor(npcs.Npc21882.alias, 76003):DoFreeStyle(1190, true, nil, true, true, false, false)
                    local questNpcActor = this:GetQuestNpcActor(npcs.Npc21882.alias, 0)
                    this:NpcRunToTask(questNpcActor, {x = 3270.659, y = 369.896, z = 9833.623}, function(arg1)
                        this:GetQuestNpcActor(npcs.Npc21882.alias, 76003):DoFreeStyle(1190, true, nil, true, true, false, false)
                    end, nil, nil, nil)
                end, nil, nil, nil)
            end, nil, nil, nil)
        end, nil, nil, nil)
    end, nil, nil, nil)
end

function Quest76003:OnSubFinish7600325(arg1)
    print("OnSubFinish7600325")
    this:SafeDestroyQuestNpc(npcs.Npc21899.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22189.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc22190.alias, 3)
end

function Quest76003:OnSubStart7600326(arg1)
    print("OnSubStart7600326")
    this:CreateQuestNpc(arg1, npcs.Npc22245.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22246.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22247.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7600326Trigger", "Actor/Gadget/Q7600326Trigger", 70900002, 0, points._Q7600326TriggerPoint_.pos, points._Q7600326TriggerPoint_.rot, true, false, 3)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc21882.alias, 0)
    this:NpcRunToTask(questNpcActor, {x = 3288.947, y = 369.897, z = 9836.23}, nil, nil, nil, nil)
end

function Quest76003:OnSubFinish7600326(arg1)
    print("OnSubFinish7600326")
end

function Quest76003:OnSubStart7600342(arg1)
    print("OnSubStart7600342")
end

function Quest76003:OnSubFinish7600342(arg1)
    print("OnSubFinish7600342")
end

function Quest76003:OnSubStart7600347(arg1)
    print("OnSubStart7600347")
end

function Quest76003:OnSubFinish7600347(arg1)
    print("OnSubFinish7600347")
end

function Quest76003:OnSubStart7600327(arg1)
    print("OnSubStart7600327")
    actorMgr:CreateActorWithPos("Q7600327Trigger", "Actor/Gadget/Q7600327Trigger", 70900002, 0, points._Q7600327TriggerPoint_.pos, points._Q7600327TriggerPoint_.rot, true, false, 3)
end

function Quest76003:OnSubFinish7600327(arg1)
    print("OnSubFinish7600327")
end

function Quest76003:OnSubStart7600321(arg1)
    print("OnSubStart7600321")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21882.id, arg1)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc21882.alias, 0)
    this:NpcRunToTask(questNpcActor, {x = 3299.58, y = 369.977, z = 9836.442}, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc21882.alias, 0)
        this:NpcRunToTask(questNpcActor, {x = 3302.334, y = 369.745, z = 9847.431}, function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc21882.alias, 0)
            this:NpcRunToTask(questNpcActor, {x = 3306.572, y = 369.577, z = 9854.245}, function(arg1)
                actorUtils.FinishQuestID(false, 7600321)
            end, nil, nil, nil)
        end, nil, nil, nil)
    end, nil, nil, nil)
end

function Quest76003:OnSubFinish7600321(arg1)
    print("OnSubFinish7600321")
end

function Quest76003:OnSubStart7600328(arg1)
    print("OnSubStart7600328")
    this:NpcCreateWithNpcTrigger(npcs.Npc21883.id, 0, 120, 7600328)
end

function Quest76003:OnSubFinish7600328(arg1)
    print("OnSubFinish7600328")
end

function Quest76003:OnSubStart7600329(arg1)
    print("OnSubStart7600329")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21882.id, arg1)
end

function Quest76003:OnSubFinish7600329(arg1)
    print("OnSubFinish7600329")
end

function Quest76003:OnSubStart7600319(arg1)
    print("OnSubStart7600319")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7600319, 0, 40, 0, npcs.Npc21882.id)
    this:GetQuestNpcActor(npcs.Npc21882.alias, 76003):RunToTask({x = 3234.726, y = 367.569, z = 9910.819}, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc21882.alias, 0)
        this:NpcJumpToTask(questNpcActor, {x = 3227.558, y = 368.868, z = 9903.069}, 4481, function(arg1)
            this:GetQuestNpcActor(npcs.Npc21882.alias, 76003):RunToTask({x = 3226.165, y = 368.894, z = 9901.128}, function(arg1)
                actorUtils.FinishQuestID(false, 7600319)
            end, nil, nil)
        end, nil, nil, nil)
    end, nil, nil)
end

function Quest76003:OnSubFinish7600319(arg1)
    print("OnSubFinish7600319")
end

function Quest76003:OnSubStart7600351(arg1)
    print("OnSubStart7600351")
end

function Quest76003:OnSubFinish7600351(arg1)
    print("OnSubFinish7600351")
end

function Quest76003:OnSubStart7600353(arg1)
    print("OnSubStart7600353")
end

function Quest76003:OnSubFinish7600353(arg1)
    print("OnSubFinish7600353")
end

function Quest76003:OnSubStart7600358(arg1)
    print("OnSubStart7600358")
    this:GetQuestNpcActor(npcs.Npc21882.alias, 76003):RunToTask({x = 3227.763, y = 368.897, z = 9902.777}, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc21882.alias, 0)
        this:NpcJumpToTask(questNpcActor, {x = 3234.876, y = 367.511, z = 9909.918}, 4482, function(arg1)
            this:GetQuestNpcActor(npcs.Npc21882.alias, 76003):RunToTask({x = 3239.351, y = 367.511, z = 9915.711}, function(arg1)
                local questNpcActor = this:GetQuestNpcActor(npcs.Npc21882.alias, 0)
                this:NpcJumpToTask(questNpcActor, {x = 3242.867, y = 368.868, z = 9924.981}, 4482, function(arg1)
                    this:GetQuestNpcActor(npcs.Npc21882.alias, 76003):RunToTask({x = 3243.838, y = 368.894, z = 9927.341}, function(arg1)
                        actorUtils.FinishQuestID(false, 7600358)
                    end, nil, nil)
                end, nil, nil, nil)
            end, nil, nil)
        end, nil, nil, nil)
    end, nil, nil)
end

function Quest76003:OnSubFinish7600358(arg1)
    print("OnSubFinish7600358")
end

function Quest76003:OnSubStart7600361(arg1)
    print("OnSubStart7600361")
end

function Quest76003:OnSubFinish7600361(arg1)
    print("OnSubFinish7600361")
end

function Quest76003:OnSubStart7600352(arg1)
    print("OnSubStart7600352")
end

function Quest76003:OnSubFinish7600352(arg1)
    print("OnSubFinish7600352")
end

function Quest76003:OnSubStart7600332(arg1)
    print("OnSubStart7600332")
    this:NpcCreateWithNpcTrigger(npcs.Npc21883.id, 0, 80, 7600332)
end

function Quest76003:OnSubFinish7600332(arg1)
    print("OnSubFinish7600332")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21883.alias)
    this:SafeDestroyQuestNpc(npcs.Npc21882.alias, 3)
end

function Quest76003:OnSubStart7600330(arg1)
    print("OnSubStart7600330")
end

function Quest76003:OnSubFinish7600330(arg1)
    print("OnSubFinish7600330")
end

function Quest76003:OnSubStart7600331(arg1)
    print("OnSubStart7600331")
    actorMgr:CreateActorWithPos("Q7600331Trigger", "Actor/Gadget/Q7600331Trigger", 70900002, 0, points._Q7600331TriggerPoint_.pos, points._Q7600331TriggerPoint_.rot, true, false, 3)
end

function Quest76003:OnSubFinish7600331(arg1)
    print("OnSubFinish7600331")
end

function Quest76003:OnSubStart7600333(arg1)
    print("OnSubStart7600333")
    actorMgr:CreateActorWithPos("Q7600333Tigger", "Actor/Gadget/Q7600333Tigger", 70900002, 0, points._Q7600333TiggerPoint_.pos, points._Q7600333TiggerPoint_.rot, true, false, 3)
end

function Quest76003:OnSubFinish7600333(arg1)
    print("OnSubFinish7600333")
    this:ShowBlackScreenWithDialogText(1, 2, 1, nil, nil, nil, 0, false, true)
end

function Quest76003:OnSubStart7600335(arg1)
    print("OnSubStart7600335")
    actorMgr:CreateActorWithPos("Q7600335Trigger", "Actor/Gadget/Q7600335Trigger", 70900002, 0, points._Q7600335TriggerPoint_.pos, points._Q7600335TriggerPoint_.rot, true, false, 3)
end

function Quest76003:OnSubFinish7600335(arg1)
    print("OnSubFinish7600335")
end

function Quest76003:OnSubStart7600362(arg1)
    print("OnSubStart7600362")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21882.id, arg1)
end

function Quest76003:OnSubFinish7600362(arg1)
    print("OnSubFinish7600362")
end

function Quest76003:OnSubStart7600363(arg1)
    print("OnSubStart7600363")
    this:GetQuestNpcActor(npcs.Npc21882.alias, 76003):EnableInteractionWithUIEx(true)
end

function Quest76003:OnSubFinish7600363(arg1)
    print("OnSubFinish7600363")
end

function Quest76003:OnSubStart7600336(arg1)
    print("OnSubStart7600336")
    actorMgr:CreateActorWithPos("Q7600336Trigger_1", "Actor/Gadget/Q7600336Trigger_1", 70900002, 0, points._Q7600336Trigger_1Point_.pos, points._Q7600336Trigger_1Point_.rot, true, false, 3)
end

function Quest76003:OnSubFinish7600336(arg1)
    print("OnSubFinish7600336")
end

function Quest76003:OnSubStart7600364(arg1)
    print("OnSubStart7600364")
    this:CreateQuestNpc(arg1, npcs.Npc21882.id, 0, false, 0)
end

function Quest76003:OnSubFinish7600364(arg1)
    print("OnSubFinish7600364")
end

function Quest76003:OnSubStart7600334(arg1)
    print("OnSubStart7600334")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21882.id, arg1)
    this:CreateQuestNpc(arg1, npcs.Npc21883.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q760033401trigger", "Actor/Gadget/Q760033401trigger", 70900002, 0, points._Q760033401triggerPoint_.pos, points._Q760033401triggerPoint_.rot, true, false, 3)
end

function Quest76003:OnSubFinish7600334(arg1)
    print("OnSubFinish7600334")
end

function Quest76003:OnSubStart7600337(arg1)
    print("OnSubStart7600337")
end

function Quest76003:OnSubFinish7600337(arg1)
    print("OnSubFinish7600337")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21883.alias)
    this:SafeDestroyQuestNpc(npcs.Npc21882.alias, 3)
end

function Quest76003:OnSubStart7600338(arg1)
    print("OnSubStart7600338")
end

function Quest76003:OnSubFinish7600338(arg1)
    print("OnSubFinish7600338")
end

function Quest76003:OnSubStart7600339(arg1)
    print("OnSubStart7600339")
    this:CallDelayNpcCreateWithNpcTriggerAndBlack(7600339, 0, 40, 0, npcs.Npc21883.id)
end

function Quest76003:OnSubFinish7600339(arg1)
    print("OnSubFinish7600339")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc21883.alias)
end

function Quest76003:OnSubStart7600340(arg1)
    print("OnSubStart7600340")
    actorMgr:CreateActorWithPos("Q7600340Trigger", "Actor/Gadget/Q7600340Trigger", 70900002, 0, points._Q7600340TriggerPoint_.pos, points._Q7600340TriggerPoint_.rot, true, false, 3)
end

function Quest76003:OnSubFinish7600340(arg1)
    print("OnSubFinish7600340")
end

function Quest76003:OnSubStart7600341(arg1)
    print("OnSubStart7600341")
    this:CreateQuestNpc(arg1, npcs.Npc21882.id, 0, false, 0)
end

function Quest76003:OnSubFinish7600341(arg1)
    print("OnSubFinish7600341")
end

return Quest76003

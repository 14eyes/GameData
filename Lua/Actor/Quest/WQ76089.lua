require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76089 = class("Quest76089", QuestActorProxy)
Quest76089.defaultAlias = "Quest76089"
local clientData
local this
local mainID
local actorAlias
local npcs
local points

function Quest76089:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76089:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7608901"] = self.OnSubStart7608901,
        ["7608933"] = self.OnSubStart7608933,
        ["7608902"] = self.OnSubStart7608902,
        ["7608903"] = self.OnSubStart7608903,
        ["7608935"] = self.OnSubStart7608935,
        ["7608904"] = self.OnSubStart7608904,
        ["7608928"] = self.OnSubStart7608928,
        ["7608905"] = self.OnSubStart7608905,
        ["7608906"] = self.OnSubStart7608906,
        ["7608907"] = self.OnSubStart7608907,
        ["7608908"] = self.OnSubStart7608908,
        ["7608909"] = self.OnSubStart7608909,
        ["7608910"] = self.OnSubStart7608910,
        ["7608911"] = self.OnSubStart7608911,
        ["7608912"] = self.OnSubStart7608912,
        ["7608930"] = self.OnSubStart7608930,
        ["7608913"] = self.OnSubStart7608913,
        ["7608914"] = self.OnSubStart7608914,
        ["7608936"] = self.OnSubStart7608936,
        ["7608937"] = self.OnSubStart7608937,
        ["7608934"] = self.OnSubStart7608934,
        ["7608915"] = self.OnSubStart7608915,
        ["7608916"] = self.OnSubStart7608916,
        ["7608917"] = self.OnSubStart7608917,
        ["7608918"] = self.OnSubStart7608918,
        ["7608919"] = self.OnSubStart7608919,
        ["7608939"] = self.OnSubStart7608939,
        ["7608920"] = self.OnSubStart7608920,
        ["7608932"] = self.OnSubStart7608932,
        ["7608922"] = self.OnSubStart7608922,
        ["7608921"] = self.OnSubStart7608921,
        ["7608923"] = self.OnSubStart7608923,
        ["7608931"] = self.OnSubStart7608931,
        ["7608929"] = self.OnSubStart7608929,
        ["7608924"] = self.OnSubStart7608924,
        ["7608925"] = self.OnSubStart7608925,
        ["7608926"] = self.OnSubStart7608926,
        ["7608947"] = self.OnSubStart7608947,
        ["7608927"] = self.OnSubStart7608927,
        ["7608941"] = self.OnSubStart7608941,
        ["7608938"] = self.OnSubStart7608938,
        ["7608943"] = self.OnSubStart7608943,
        ["7608940"] = self.OnSubStart7608940,
        ["7608942"] = self.OnSubStart7608942,
        ["7608944"] = self.OnSubStart7608944,
        ["7608945"] = self.OnSubStart7608945,
        ["7608946"] = self.OnSubStart7608946
    }
end

function Quest76089:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7608901"] = self.OnSubFinish7608901,
        ["7608933"] = self.OnSubFinish7608933,
        ["7608902"] = self.OnSubFinish7608902,
        ["7608903"] = self.OnSubFinish7608903,
        ["7608935"] = self.OnSubFinish7608935,
        ["7608904"] = self.OnSubFinish7608904,
        ["7608928"] = self.OnSubFinish7608928,
        ["7608905"] = self.OnSubFinish7608905,
        ["7608906"] = self.OnSubFinish7608906,
        ["7608907"] = self.OnSubFinish7608907,
        ["7608908"] = self.OnSubFinish7608908,
        ["7608909"] = self.OnSubFinish7608909,
        ["7608910"] = self.OnSubFinish7608910,
        ["7608911"] = self.OnSubFinish7608911,
        ["7608912"] = self.OnSubFinish7608912,
        ["7608930"] = self.OnSubFinish7608930,
        ["7608913"] = self.OnSubFinish7608913,
        ["7608914"] = self.OnSubFinish7608914,
        ["7608936"] = self.OnSubFinish7608936,
        ["7608937"] = self.OnSubFinish7608937,
        ["7608934"] = self.OnSubFinish7608934,
        ["7608915"] = self.OnSubFinish7608915,
        ["7608916"] = self.OnSubFinish7608916,
        ["7608917"] = self.OnSubFinish7608917,
        ["7608918"] = self.OnSubFinish7608918,
        ["7608919"] = self.OnSubFinish7608919,
        ["7608939"] = self.OnSubFinish7608939,
        ["7608920"] = self.OnSubFinish7608920,
        ["7608932"] = self.OnSubFinish7608932,
        ["7608922"] = self.OnSubFinish7608922,
        ["7608921"] = self.OnSubFinish7608921,
        ["7608923"] = self.OnSubFinish7608923,
        ["7608931"] = self.OnSubFinish7608931,
        ["7608929"] = self.OnSubFinish7608929,
        ["7608924"] = self.OnSubFinish7608924,
        ["7608925"] = self.OnSubFinish7608925,
        ["7608926"] = self.OnSubFinish7608926,
        ["7608947"] = self.OnSubFinish7608947,
        ["7608927"] = self.OnSubFinish7608927,
        ["7608941"] = self.OnSubFinish7608941,
        ["7608938"] = self.OnSubFinish7608938,
        ["7608943"] = self.OnSubFinish7608943,
        ["7608940"] = self.OnSubFinish7608940,
        ["7608942"] = self.OnSubFinish7608942,
        ["7608944"] = self.OnSubFinish7608944,
        ["7608945"] = self.OnSubFinish7608945,
        ["7608946"] = self.OnSubFinish7608946
    }
end

function Quest76089:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7608904"] = self.OnSubFailed7608904,
        ["7608928"] = self.OnSubFailed7608928,
        ["7608905"] = self.OnSubFailed7608905,
        ["7608906"] = self.OnSubFailed7608906,
        ["7608907"] = self.OnSubFailed7608907,
        ["7608908"] = self.OnSubFailed7608908,
        ["7608909"] = self.OnSubFailed7608909,
        ["7608910"] = self.OnSubFailed7608910,
        ["7608911"] = self.OnSubFailed7608911,
        ["7608912"] = self.OnSubFailed7608912,
        ["7608930"] = self.OnSubFailed7608930,
        ["7608916"] = self.OnSubFailed7608916,
        ["7608917"] = self.OnSubFailed7608917,
        ["7608918"] = self.OnSubFailed7608918,
        ["7608919"] = self.OnSubFailed7608919,
        ["7608939"] = self.OnSubFailed7608939,
        ["7608920"] = self.OnSubFailed7608920,
        ["7608932"] = self.OnSubFailed7608932,
        ["7608922"] = self.OnSubFailed7608922,
        ["7608921"] = self.OnSubFailed7608921,
        ["7608923"] = self.OnSubFailed7608923,
        ["7608924"] = self.OnSubFailed7608924,
        ["7608925"] = self.OnSubFailed7608925,
        ["7608926"] = self.OnSubFailed7608926
    }
end

function Quest76089:Start()
    print("Start")
end

function Quest76089:OnDestroy()
    print("OnDestroy")
end

function Quest76089:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76089:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76089:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76089:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7608901Trigger", nil)
    this:ActorDestroy("Q7608902Trigger", nil)
    this:ActorDestroy("Q7608905Trigger", nil)
    this:ActorDestroy("Q7608907Trigger", nil)
    this:ActorDestroy("Q7608908Trigger", nil)
    this:ActorDestroy("Q7608914Trigger", nil)
    this:ActorDestroy("Q7608916Trigger", nil)
    this:ActorDestroy("Q7608919Trigger_1", nil)
    this:ActorDestroy("Q7608921Trigger", nil)
    this:ActorDestroy("Q7608924Trigger", nil)
    this:ActorDestroy("Q7608912Trigger", nil)
    this:ActorDestroy("Q7608915Trigger", nil)
    this:ActorDestroy("Q7608920Trigger", nil)
    this:ActorDestroy("Q7608922Trigger", nil)
    this:ActorDestroy("Q7608926Trigger", nil)
    this:ActorDestroy("Q7608928Trigger", nil)
    this:ActorDestroy("Q7608930Trigger", nil)
    this:ActorDestroy("Q7608933Trigger", nil)
    this:ActorDestroy("Q7608919Trigger", nil)
end

function Quest76089:ActorDestroy(arg1, arg2)
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

function Quest76089:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest76089:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest76089:OnSubStart7608901(arg1)
    print("OnSubStart7608901")
    actorMgr:CreateActorWithPos("Q7608901Trigger", "Actor/Gadget/Q7608901Trigger", 70900002, 0, points._Q7608901TriggerPoint_.pos, points._Q7608901TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76089:OnSubFinish7608901(arg1)
    print("OnSubFinish7608901")
end

function Quest76089:OnSubStart7608933(arg1)
    print("OnSubStart7608933")
    actorMgr:CreateActorWithPos("Q7608933Trigger", "Actor/Gadget/Q7608933Trigger", 70900002, 0, points._Q7608933TriggerPoint_.pos, points._Q7608933TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76089:OnSubFinish7608933(arg1)
    print("OnSubFinish7608933")
end

function Quest76089:OnSubStart7608902(arg1)
    print("OnSubStart7608902")
    actorMgr:CreateActorWithPos("Q7608902Trigger", "Actor/Gadget/Q7608902Trigger", 70900002, 0, points._Q7608902TriggerPoint_.pos, points._Q7608902TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76089:OnSubFinish7608902(arg1)
    print("OnSubFinish7608902")
end

function Quest76089:OnSubStart7608903(arg1)
    print("OnSubStart7608903")
    this:CreateQuestNpc(arg1, npcs.Npc22422.id, 0, false, 0)
end

function Quest76089:OnSubFinish7608903(arg1)
    print("OnSubFinish7608903")
    this:SafeDestroyQuestNpc(npcs.Npc22422.alias, 103)
end

function Quest76089:OnSubStart7608935(arg1)
    print("OnSubStart7608935")
end

function Quest76089:OnSubFinish7608935(arg1)
    print("OnSubFinish7608935")
end

function Quest76089:OnSubStart7608904(arg1)
    print("OnSubStart7608904")
end

function Quest76089:OnSubFinish7608904(arg1)
    print("OnSubFinish7608904")
end

function Quest76089:OnSubFailed7608904(arg1)
    print("OnSubFailed7608904")
    this:RecycleAllRes()
end

function Quest76089:OnSubStart7608928(arg1)
    print("OnSubStart7608928")
    actorMgr:CreateActorWithPos("Q7608928Trigger", "Actor/Gadget/Q7608928Trigger", 70900002, 0, points._Q7608928TriggerPoint_.pos, points._Q7608928TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76089:OnSubFinish7608928(arg1)
    print("OnSubFinish7608928")
end

function Quest76089:OnSubFailed7608928(arg1)
    print("OnSubFailed7608928")
    this:RecycleAllRes()
end

function Quest76089:OnSubStart7608905(arg1)
    print("OnSubStart7608905")
    actorMgr:CreateActorWithPos("Q7608905Trigger", "Actor/Gadget/Q7608905Trigger", 70900002, 0, points._Q7608905TriggerPoint_.pos, points._Q7608905TriggerPoint_.rot, true, false, 103, nil, 0, 0)
    this:CallDelayByQuest("delayscreen", 10, function(arg1)
        this:SetNavigationByMainId(76089, true)
    end)
end

function Quest76089:OnSubFinish7608905(arg1)
    print("OnSubFinish7608905")
end

function Quest76089:OnSubFailed7608905(arg1)
    print("OnSubFailed7608905")
    this:RecycleAllRes()
end

function Quest76089:OnSubStart7608906(arg1)
    print("OnSubStart7608906")
end

function Quest76089:OnSubFinish7608906(arg1)
    print("OnSubFinish7608906")
end

function Quest76089:OnSubFailed7608906(arg1)
    print("OnSubFailed7608906")
    this:RecycleAllRes()
end

function Quest76089:OnSubStart7608907(arg1)
    print("OnSubStart7608907")
    actorMgr:CreateActorWithPos("Q7608907Trigger", "Actor/Gadget/Q7608907Trigger", 70900002, 0, points._Q7608907TriggerPoint_.pos, points._Q7608907TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76089:OnSubFinish7608907(arg1)
    print("OnSubFinish7608907")
end

function Quest76089:OnSubFailed7608907(arg1)
    print("OnSubFailed7608907")
    this:RecycleAllRes()
end

function Quest76089:OnSubStart7608908(arg1)
    print("OnSubStart7608908")
    actorMgr:CreateActorWithPos("Q7608908Trigger", "Actor/Gadget/Q7608908Trigger", 70900002, 0, points._Q7608908TriggerPoint_.pos, points._Q7608908TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest76089:OnSubFinish7608908(arg1)
    print("OnSubFinish7608908")
end

function Quest76089:OnSubFailed7608908(arg1)
    print("OnSubFailed7608908")
    this:RecycleAllRes()
end

function Quest76089:OnSubStart7608909(arg1)
    print("OnSubStart7608909")
end

function Quest76089:OnSubFinish7608909(arg1)
    print("OnSubFinish7608909")
end

function Quest76089:OnSubFailed7608909(arg1)
    print("OnSubFailed7608909")
    this:RecycleAllRes()
end

function Quest76089:OnSubStart7608910(arg1)
    print("OnSubStart7608910")
end

function Quest76089:OnSubFinish7608910(arg1)
    print("OnSubFinish7608910")
end

function Quest76089:OnSubFailed7608910(arg1)
    print("OnSubFailed7608910")
    this:RecycleAllRes()
end

function Quest76089:OnSubStart7608911(arg1)
    print("OnSubStart7608911")
    this:CreateQuestNpc(arg1, npcs.Npc22273.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc22273.alias, 76089):DoFreeStyle(1230, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc22272.id, 0, false, 0)
end

function Quest76089:OnSubFinish7608911(arg1)
    print("OnSubFinish7608911")
    this:SafeDestroyQuestNpc(npcs.Npc22272.alias, 103)
end

function Quest76089:OnSubFailed7608911(arg1)
    print("OnSubFailed7608911")
    this:RecycleAllRes()
end

function Quest76089:OnSubStart7608912(arg1)
    print("OnSubStart7608912")
    this:GetQuestNpcActor(npcs.Npc22273.alias, 76089):DoFreeStyle(1190, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7608912Trigger", "Actor/Gadget/Q7608912Trigger", 70900002, 0, points._Q7608912TriggerPoint_.pos, points._Q7608912TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76089:OnSubFinish7608912(arg1)
    print("OnSubFinish7608912")
    this:SafeDestroyQuestNpc(npcs.Npc22273.alias, 103)
end

function Quest76089:OnSubFailed7608912(arg1)
    print("OnSubFailed7608912")
    this:RecycleAllRes()
end

function Quest76089:OnSubStart7608930(arg1)
    print("OnSubStart7608930")
    actorMgr:CreateActorWithPos("Q7608930Trigger", "Actor/Gadget/Q7608930Trigger", 70900002, 0, points._Q7608930TriggerPoint_.pos, points._Q7608930TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76089:OnSubFinish7608930(arg1)
    print("OnSubFinish7608930")
end

function Quest76089:OnSubFailed7608930(arg1)
    print("OnSubFailed7608930")
    this:RecycleAllRes()
end

function Quest76089:OnSubStart7608913(arg1)
    print("OnSubStart7608913")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7608913, 0, 30, 0, npcs.Npc22273.id)
    this:CreateQuestNpc(arg1, npcs.Npc22272.id, 0, false, 0)
end

function Quest76089:OnSubFinish7608913(arg1)
    print("OnSubFinish7608913")
    this:SafeDestroyQuestNpc(npcs.Npc22273.alias, 103)
    this:SafeDestroyQuestNpc(npcs.Npc22272.alias, 103)
end

function Quest76089:OnSubStart7608914(arg1)
    print("OnSubStart7608914")
    actorMgr:CreateActorWithPos("Q7608914Trigger", "Actor/Gadget/Q7608914Trigger", 70900002, 0, points._Q7608914TriggerPoint_.pos, points._Q7608914TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76089:OnSubFinish7608914(arg1)
    print("OnSubFinish7608914")
end

function Quest76089:OnSubStart7608936(arg1)
    print("OnSubStart7608936")
end

function Quest76089:OnSubFinish7608936(arg1)
    print("OnSubFinish7608936")
end

function Quest76089:OnSubStart7608937(arg1)
    print("OnSubStart7608937")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7608937, 0, 30, 1, npcs.Npc22272.id)
end

function Quest76089:OnSubFinish7608937(arg1)
    print("OnSubFinish7608937")
    this:SafeDestroyQuestNpc(npcs.Npc22272.alias, 103)
    this:SafeDestroyQuestNpc(npcs.Npc22273.alias, 103)
end

function Quest76089:OnSubStart7608934(arg1)
    print("OnSubStart7608934")
end

function Quest76089:OnSubFinish7608934(arg1)
    print("OnSubFinish7608934")
end

function Quest76089:OnSubStart7608915(arg1)
    print("OnSubStart7608915")
    actorMgr:CreateActorWithPos("Q7608915Trigger", "Actor/Gadget/Q7608915Trigger", 70900002, 0, points._Q7608915TriggerPoint_.pos, points._Q7608915TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76089:OnSubFinish7608915(arg1)
    print("OnSubFinish7608915")
end

function Quest76089:OnSubStart7608916(arg1)
    print("OnSubStart7608916")
    actorMgr:CreateActorWithPos("Q7608916Trigger", "Actor/Gadget/Q7608916Trigger", 70900002, 0, points._Q7608916TriggerPoint_.pos, points._Q7608916TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76089:OnSubFinish7608916(arg1)
    print("OnSubFinish7608916")
end

function Quest76089:OnSubFailed7608916(arg1)
    print("OnSubFailed7608916")
    this:RecycleAllRes()
end

function Quest76089:OnSubStart7608917(arg1)
    print("OnSubStart7608917")
end

function Quest76089:OnSubFinish7608917(arg1)
    print("OnSubFinish7608917")
end

function Quest76089:OnSubFailed7608917(arg1)
    print("OnSubFailed7608917")
    this:RecycleAllRes()
end

function Quest76089:OnSubStart7608918(arg1)
    print("OnSubStart7608918")
    this:CreateQuestNpc(arg1, npcs.Npc22277.id, 0, false, 0)
end

function Quest76089:OnSubFinish7608918(arg1)
    print("OnSubFinish7608918")
end

function Quest76089:OnSubFailed7608918(arg1)
    print("OnSubFailed7608918")
    this:RecycleAllRes()
end

function Quest76089:OnSubStart7608919(arg1)
    print("OnSubStart7608919")
    actorMgr:CreateActorWithPos("Q7608919Trigger_1", "Actor/Gadget/Q7608919Trigger_1", 70900002, 0, points._Q7608919Trigger_1Point_.pos, points._Q7608919Trigger_1Point_.rot, true, false, 103, nil, 0, 0)
    local questNpcActor = this:GetQuestNpcActor(npcs.Npc22277.alias, 76089)
    this:NpcRunToTaskEasy(questNpcActor, {x = 195.279, y = 98.4, z = -371.12}, function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc22277.alias, 76089)
        this:NpcRunToTaskEasy(questNpcActor, {x = 189.04, y = 98.337, z = -376.671}, function(arg1)
            local questNpcActor = this:GetQuestNpcActor(npcs.Npc22277.alias, 76089)
            this:NpcRunToTaskEasy(questNpcActor, {x = 180.87, y = 100.437, z = -381.69}, function(arg1)
                local questNpcActor = this:GetQuestNpcActor(npcs.Npc22277.alias, 76089)
                this:NpcRunToTaskEasy(questNpcActor, {x = 180.706, y = 100.427, z = -400.366}, function(arg1)
                    local questNpcActor = this:GetQuestNpcActor(npcs.Npc22277.alias, 76089)
                    this:NpcRunToTaskEasy(questNpcActor, {x = 180.081, y = 103.915, z = -412.923}, nil)
                end)
            end)
        end)
    end)
end

function Quest76089:OnSubFinish7608919(arg1)
    print("OnSubFinish7608919")
    this:SafeDestroyQuestNpc(npcs.Npc22277.alias, 103)
end

function Quest76089:OnSubFailed7608919(arg1)
    print("OnSubFailed7608919")
    this:RecycleAllRes()
end

function Quest76089:OnSubStart7608939(arg1)
    print("OnSubStart7608939")
    this:CreateQuestNpc(arg1, npcs.Npc22277.id, 0, false, 0)
    this:DisableMainPageWithConfigByQuest(true, "DisableMVRolePlayBeach")
    this:CallDelayByQuest("", 2, function(arg1)
        this:GetQuestNpcActor(npcs.Npc22277.alias, 76089):RunToTask({x = 191.689, y = 103.944, z = -412.712}, function(arg1)
            this:GetQuestNpcActor(npcs.Npc22277.alias, 76089):RunToTask({x = 221.801, y = 103.944, z = -413.195}, function(arg1)
                actorMgr:CreateActorWithPos("Q7608919Trigger", "Actor/Gadget/Q7608919Trigger", 70900002, 0, points._Q7608919TriggerPoint_.pos, points._Q7608919TriggerPoint_.rot, true, false, 103, nil, 0, 0)
            end, nil, nil)
        end, nil, nil)
    end)
end

function Quest76089:OnSubFinish7608939(arg1)
    print("OnSubFinish7608939")
    this:SafeDestroyQuestNpc(npcs.Npc22277.alias, 103)
    this:DisableMainPageWithConfigByQuest(false, "DisableMVRolePlayBeach")
end

function Quest76089:OnSubFailed7608939(arg1)
    print("OnSubFailed7608939")
    this:RecycleAllRes()
    this:DisableMainPageWithConfigByQuest(false, "DisableMVRolePlayBeach")
end

function Quest76089:OnSubStart7608920(arg1)
    print("OnSubStart7608920")
    this:DisableMainPageWithConfigByQuest(false, "DisableMVRolePlayBeach")
    actorMgr:CreateActorWithPos("Q7608920Trigger", "Actor/Gadget/Q7608920Trigger", 70900002, 0, points._Q7608920TriggerPoint_.pos, points._Q7608920TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76089:OnSubFinish7608920(arg1)
    print("OnSubFinish7608920")
end

function Quest76089:OnSubFailed7608920(arg1)
    print("OnSubFailed7608920")
    this:RecycleAllRes()
end

function Quest76089:OnSubStart7608932(arg1)
    print("OnSubStart7608932")
    this:CreateQuestNpc(arg1, npcs.Npc22277.id, 0, false, 0)
    this:TransmitPlayerByQuestId(7608932, 5, nil, nil, nil)
end

function Quest76089:OnSubFinish7608932(arg1)
    print("OnSubFinish7608932")
    this:SafeDestroyQuestNpc(npcs.Npc22277.alias, 103)
end

function Quest76089:OnSubFailed7608932(arg1)
    print("OnSubFailed7608932")
    this:RecycleAllRes()
end

function Quest76089:OnSubStart7608922(arg1)
    print("OnSubStart7608922")
    actorMgr:CreateActorWithPos("Q7608922Trigger", "Actor/Gadget/Q7608922Trigger", 70900002, 0, points._Q7608922TriggerPoint_.pos, points._Q7608922TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76089:OnSubFinish7608922(arg1)
    print("OnSubFinish7608922")
end

function Quest76089:OnSubFailed7608922(arg1)
    print("OnSubFailed7608922")
    this:RecycleAllRes()
end

function Quest76089:OnSubStart7608921(arg1)
    print("OnSubStart7608921")
    actorMgr:CreateActorWithPos("Q7608921Trigger", "Actor/Gadget/Q7608921Trigger", 70900002, 0, points._Q7608921TriggerPoint_.pos, points._Q7608921TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76089:OnSubFinish7608921(arg1)
    print("OnSubFinish7608921")
end

function Quest76089:OnSubFailed7608921(arg1)
    print("OnSubFailed7608921")
    this:RecycleAllRes()
end

function Quest76089:OnSubStart7608923(arg1)
    print("OnSubStart7608923")
end

function Quest76089:OnSubFinish7608923(arg1)
    print("OnSubFinish7608923")
end

function Quest76089:OnSubFailed7608923(arg1)
    print("OnSubFailed7608923")
    this:RecycleAllRes()
end

function Quest76089:OnSubStart7608931(arg1)
    print("OnSubStart7608931")
    this:NpcCreateWithNpcTrigger(npcs.Npc22273.id, 0, 30, 7608931)
    this:GetQuestNpcActor(npcs.Npc22273.alias, 76089):DoFreeStyle(1120, true, nil, true, true, false, false)
    actorUtils.SetMainPageFeatureDisable(76089, "MoonPhaseLevelBanner", true)
end

function Quest76089:OnSubFinish7608931(arg1)
    print("OnSubFinish7608931")
    actorUtils.SetMainPageFeatureDisable(76089, "MoonPhaseLevelBanner", false)
end

function Quest76089:OnSubStart7608929(arg1)
    print("OnSubStart7608929")
end

function Quest76089:OnSubFinish7608929(arg1)
    print("OnSubFinish7608929")
    this:SafeDestroyQuestNpc(npcs.Npc22273.alias, 103)
end

function Quest76089:OnSubStart7608924(arg1)
    print("OnSubStart7608924")
    actorMgr:CreateActorWithPos("Q7608924Trigger", "Actor/Gadget/Q7608924Trigger", 70900002, 0, points._Q7608924TriggerPoint_.pos, points._Q7608924TriggerPoint_.rot, true, false, 103, nil, 0, 0)
end

function Quest76089:OnSubFinish7608924(arg1)
    print("OnSubFinish7608924")
end

function Quest76089:OnSubFailed7608924(arg1)
    print("OnSubFailed7608924")
    this:RecycleAllRes()
end

function Quest76089:OnSubStart7608925(arg1)
    print("OnSubStart7608925")
end

function Quest76089:OnSubFinish7608925(arg1)
    print("OnSubFinish7608925")
end

function Quest76089:OnSubFailed7608925(arg1)
    print("OnSubFailed7608925")
    this:RecycleAllRes()
end

function Quest76089:OnSubStart7608926(arg1)
    print("OnSubStart7608926")
    this:PlayCutsceneIndex(7608926, function(arg1)
        actorMgr:CreateActorWithPos("Q7608926Trigger", "Actor/Gadget/Q7608926Trigger", 70900002, 0, points._Q7608926TriggerPoint_.pos, points._Q7608926TriggerPoint_.rot, true, false, 103, nil, 0, 0)
    end, nil, nil, false)
end

function Quest76089:OnSubFinish7608926(arg1)
    print("OnSubFinish7608926")
end

function Quest76089:OnSubFailed7608926(arg1)
    print("OnSubFailed7608926")
    this:RecycleAllRes()
end

function Quest76089:OnSubStart7608947(arg1)
    print("OnSubStart7608947")
end

function Quest76089:OnSubFinish7608947(arg1)
    print("OnSubFinish7608947")
end

function Quest76089:OnSubStart7608927(arg1)
    print("OnSubStart7608927")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7608927, 0, 30, 0, npcs.Npc22273.id)
    this:CreateQuestNpc(arg1, npcs.Npc22274.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22275.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22276.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22272.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc22396.id, 0, false, 0)
end

function Quest76089:OnSubFinish7608927(arg1)
    print("OnSubFinish7608927")
    this:SafeDestroyQuestNpc(npcs.Npc22275.alias, 103)
    this:SafeDestroyQuestNpc(npcs.Npc22276.alias, 103)
    this:SafeDestroyQuestNpc(npcs.Npc22272.alias, 103)
    this:SafeDestroyQuestNpc(npcs.Npc22396.alias, 103)
end

function Quest76089:OnSubStart7608941(arg1)
    print("OnSubStart7608941")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7608941, 0, 30, 0, npcs.Npc22275.id)
end

function Quest76089:OnSubFinish7608941(arg1)
    print("OnSubFinish7608941")
    this:SafeDestroyQuestNpc(npcs.Npc22275.alias, 103)
end

function Quest76089:OnSubStart7608938(arg1)
    print("OnSubStart7608938")
    this:CreateQuestNpc(arg1, npcs.Npc22306.id, 0, false, 0)
    this:NpcCreateWithNpcTriggerAndBlackscreen(7608938, 0, 70, 0, npcs.Npc22272.id)
end

function Quest76089:OnSubFinish7608938(arg1)
    print("OnSubFinish7608938")
    this:SafeDestroyQuestNpc(npcs.Npc22306.alias, 103)
    this:SafeDestroyQuestNpc(npcs.Npc22272.alias, 103)
end

function Quest76089:OnSubStart7608943(arg1)
    print("OnSubStart7608943")
end

function Quest76089:OnSubFinish7608943(arg1)
    print("OnSubFinish7608943")
    this:SafeDestroyQuestNpc(npcs.Npc22274.alias, 103)
    this:SafeDestroyQuestNpc(npcs.Npc22273.alias, 103)
    this:SafeDestroyQuestNpc(npcs.Npc22275.alias, 103)
end

function Quest76089:OnSubStart7608940(arg1)
    print("OnSubStart7608940")
end

function Quest76089:OnSubFinish7608940(arg1)
    print("OnSubFinish7608940")
end

function Quest76089:OnSubStart7608942(arg1)
    print("OnSubStart7608942")
    this:DisableMainPageByQuest(false, "DisableNodKraiMainQuest76096")
end

function Quest76089:OnSubFinish7608942(arg1)
    print("OnSubFinish7608942")
end

function Quest76089:OnSubStart7608944(arg1)
    print("OnSubStart7608944")
end

function Quest76089:OnSubFinish7608944(arg1)
    print("OnSubFinish7608944")
end

function Quest76089:OnSubStart7608945(arg1)
    print("OnSubStart7608945")
    this:DisableMainPageByQuest(false, "DisableNodKraiMainQuest76096")
end

function Quest76089:OnSubFinish7608945(arg1)
    print("OnSubFinish7608945")
end

function Quest76089:OnSubStart7608946(arg1)
    print("OnSubStart7608946")
    this:DisableMainPageByQuest(false, "DisableNodKraiMainQuest76096")
end

function Quest76089:OnSubFinish7608946(arg1)
    print("OnSubFinish7608946")
end

return Quest76089

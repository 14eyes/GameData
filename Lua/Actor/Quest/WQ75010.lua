require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75010 = class("Quest75010", QuestActorProxy)
Quest75010.defaultAlias = "Quest75010"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest75010:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75010:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7501013"] = self.OnSubStart7501013,
        ["7501001"] = self.OnSubStart7501001,
        ["7501002"] = self.OnSubStart7501002,
        ["7501004"] = self.OnSubStart7501004,
        ["7501005"] = self.OnSubStart7501005,
        ["7501006"] = self.OnSubStart7501006,
        ["7501007"] = self.OnSubStart7501007,
        ["7501011"] = self.OnSubStart7501011,
        ["7501010"] = self.OnSubStart7501010,
        ["7501014"] = self.OnSubStart7501014,
        ["7501015"] = self.OnSubStart7501015,
        ["7501016"] = self.OnSubStart7501016,
        ["7501012"] = self.OnSubStart7501012
    }
end

function Quest75010:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7501013"] = self.OnSubFinish7501013,
        ["7501001"] = self.OnSubFinish7501001,
        ["7501002"] = self.OnSubFinish7501002,
        ["7501004"] = self.OnSubFinish7501004,
        ["7501005"] = self.OnSubFinish7501005,
        ["7501006"] = self.OnSubFinish7501006,
        ["7501007"] = self.OnSubFinish7501007,
        ["7501011"] = self.OnSubFinish7501011,
        ["7501010"] = self.OnSubFinish7501010,
        ["7501014"] = self.OnSubFinish7501014,
        ["7501015"] = self.OnSubFinish7501015,
        ["7501016"] = self.OnSubFinish7501016,
        ["7501012"] = self.OnSubFinish7501012
    }
end

function Quest75010:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7501001"] = self.OnSubFailed7501001}
end

function Quest75010:Start()
    print("Start")
end

function Quest75010:OnDestroy()
    print("OnDestroy")
end

function Quest75010:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75010:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75010:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc21491.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21492.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21487.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21490.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21488.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21489.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21460.alias, 3)
    this:ActorDestroy("Q7501013")
    this:DestroyNpcTrigger("Q7501002N21491Trigger")
    this:DestroyNpcTrigger("Q7501011N21490Trigger")
    this:DestroyNpcTrigger("Q7501016N21490Trigger")
end

function Quest75010:OnRewind(arg1)
    print("OnRewind")
end

function Quest75010:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest75010:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75010:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg3, arg2, arg1)
    end)
end

function Quest75010:NpcCreateWithNpcTriggerAndBlackscreen(arg1, arg2, arg3, arg4, arg5)
    this:CreateQuestNpcWithTriggerBlack("Q" .. arg1 .. "N" .. arg5 .. "Trigger", arg1, arg5, arg2, arg3, arg4, 2)
end

function Quest75010:NpcFollow21460()
    this:GetQuestNpcActor(npcs.Npc21460.alias, 75010):NpcFollowTaskWithParams(npcs.Npc21460.id, nil, nil, nil, "", false, 1, 6, 3, 25, 30, 50, 3, 5)
end

function Quest75010:OnSubStart7501013(arg1)
    print("OnSubStart7501013")
    this:CreateQuestNpc(arg1, npcs.Npc21488.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21488.alias, 75010):DoFreeStyle(5, true, nil, true, true, false, true)
    this:CreateQuestNpc(arg1, npcs.Npc21489.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21489.alias, 75010):DoFreeStyle(3, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21490.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21492.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21492.alias, 75010):DoFreeStyle(3, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21491.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21491.alias, 75010):DoFreeStyle(5, true, nil, true, true, false, false)
    this:CreateQuestNpc(arg1, npcs.Npc21487.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7501013", "Actor/Gadget/Q7501013", 70900002, 0, points._Q7501013Point_.pos, points._Q7501013Point_.rot, true, false, 3)
    this:CancelNavigation(75010)
end

function Quest75010:OnSubFinish7501013(arg1)
    print("OnSubFinish7501013")
    this:SafeDestroyQuestNpc(npcs.Npc21491.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:NatsaurusVehicleOff()
        this:QuestNarratorTask(datas.NarratorWithId_7501097, nil)
    end)
end

function Quest75010:OnSubStart7501001(arg1)
    print("OnSubStart7501001")
    this:CreateQuestNpc(arg1, npcs.Npc21492.id, 0, false, 0)
end

function Quest75010:OnSubFinish7501001(arg1)
    print("OnSubFinish7501001")
end

function Quest75010:OnSubFailed7501001(arg1)
    print("OnSubFailed7501001")
    this:NatsaurusVehicleOff()
end

function Quest75010:OnSubStart7501002(arg1)
    print("OnSubStart7501002")
    this:NpcCreateWithNpcTrigger(npcs.Npc21491.id, 0, 20, 7501002)
    this:CreateQuestNpcWithTrigger("", 7501002, 21492, 1, 60, 2)
end

function Quest75010:OnSubFinish7501002(arg1)
    print("OnSubFinish7501002")
end

function Quest75010:OnSubStart7501004(arg1)
    print("OnSubStart7501004")
    this:CreateQuestNpc(arg1, npcs.Npc21492.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21487.id, 0, false, 0)
end

function Quest75010:OnSubFinish7501004(arg1)
    print("OnSubFinish7501004")
    this:ActionSafeCall(function(arg1)
        if arg1:GetSubQuestState(7501011) ~= 3 then
            this:QuestNarratorTask(datas.NarratorWithId_7501099, nil)
        end
    end)
end

function Quest75010:OnSubStart7501005(arg1)
    print("OnSubStart7501005")
end

function Quest75010:OnSubFinish7501005(arg1)
    print("OnSubFinish7501005")
end

function Quest75010:OnSubStart7501006(arg1)
    print("OnSubStart7501006")
end

function Quest75010:OnSubFinish7501006(arg1)
    print("OnSubFinish7501006")
end

function Quest75010:OnSubStart7501007(arg1)
    print("OnSubStart7501007")
end

function Quest75010:OnSubFinish7501007(arg1)
    print("OnSubFinish7501007")
end

function Quest75010:OnSubStart7501011(arg1)
    print("OnSubStart7501011")
    this:NpcCreateWithNpcTrigger(npcs.Npc21490.id, 0, 10, 7501011)
end

function Quest75010:OnSubFinish7501011(arg1)
    print("OnSubFinish7501011")
    this:NpcCreateWithActionSafeCall(0, npcs.Npc21460.id, arg1)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_7501098, nil)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc21460.alias, 75010)
        this:NpcWalkToTaskEasy(questNpcActor, {x = -2207.875, y = 228.116, z = 8750.78}, nil)
    end)
end

function Quest75010:OnSubStart7501010(arg1)
    print("OnSubStart7501010")
end

function Quest75010:OnSubFinish7501010(arg1)
    print("OnSubFinish7501010")
end

function Quest75010:OnSubStart7501014(arg1)
    print("OnSubStart7501014")
    this:CreateQuestNpc(arg1, npcs.Npc21460.id, 0, false, 0)
    this:ActionSafeCall(function(arg1)
        local questNpcActor = this:GetQuestNpcActor(npcs.Npc21460.alias, 75010)
        this:NpcWalkToTaskEasy(questNpcActor, {x = -2207.875, y = 228.116, z = 8750.78}, nil)
    end)
end

function Quest75010:OnSubFinish7501014(arg1)
    print("OnSubFinish7501014")
end

function Quest75010:OnSubStart7501015(arg1)
    print("OnSubStart7501015")
end

function Quest75010:OnSubFinish7501015(arg1)
    print("OnSubFinish7501015")
    this:SafeDestroyQuestNpc(npcs.Npc21460.alias, 3)
end

function Quest75010:OnSubStart7501016(arg1)
    print("OnSubStart7501016")
    this:NpcCreateWithNpcTriggerAndBlackscreen(7501016, 0, 20, 0.5, npcs.Npc21490.id)
end

function Quest75010:OnSubFinish7501016(arg1)
    print("OnSubFinish7501016")
    this:SafeDestroyQuestNpc(npcs.Npc21491.alias, 3)
end

function Quest75010:OnSubStart7501012(arg1)
    print("OnSubStart7501012")
    this:CreateQuestNpc(arg1, npcs.Npc21490.id, 0, false, 0)
    this:DeployStoryByQuest(147501012)
end

function Quest75010:OnSubFinish7501012(arg1)
    print("OnSubFinish7501012")
    this:SafeDestroyQuestNpc(npcs.Npc21492.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21487.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21488.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21489.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21490.alias, 3)
    this:CancelStoryByQuest(147501012)
end

return Quest75010

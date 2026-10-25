require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest76125 = class("Quest76125", QuestActorProxy)
Quest76125.defaultAlias = "Quest76125"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest76125:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest76125:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7612501"] = self.OnSubStart7612501,
        ["7612502"] = self.OnSubStart7612502,
        ["7612504"] = self.OnSubStart7612504
    }
end

function Quest76125:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7612501"] = self.OnSubFinish7612501,
        ["7612502"] = self.OnSubFinish7612502,
        ["7612504"] = self.OnSubFinish7612504
    }
end

function Quest76125:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7612501"] = self.OnSubFailed7612501, ["7612502"] = self.OnSubFailed7612502}
end

function Quest76125:Start()
    print("Start")
end

function Quest76125:OnDestroy()
    print("OnDestroy")
end

function Quest76125:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest76125:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest76125:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest76125:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7612501Trigger")
    this:ActorDestroy("Q7612504Trigger_LookAt")
    this:ActorDestroy("Q7612504Trigger")
    this:ActorDestroy("Q7612502Trigger_Closer1")
    this:ActorDestroy("Q7612502_N15903_01")
    this:ActorDestroy("Q7612501Trigger_1")
    this:ActorDestroy("Q7612502_Finish")
    this:ActorDestroy("Q7612502_CreatFinish")
end

function Quest76125:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest76125:OnSubStart7612501(arg1)
    print("OnSubStart7612501")
    actorMgr:CreateActorWithPos("Q7612501Trigger", "Actor/Gadget/Q7612501Trigger", 70900002, 0, points._Q7612501TriggerPoint_.pos, points._Q7612501TriggerPoint_.rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q7612501Trigger_1", "Actor/Gadget/Q7612501Trigger_1", 70900002, 0, points._Q7612501Trigger_1Point_.pos, points._Q7612501Trigger_1Point_.rot, true, false, 3)
end

function Quest76125:OnSubFinish7612501(arg1)
    print("OnSubFinish7612501")
end

function Quest76125:OnSubFailed7612501(arg1)
    print("OnSubFailed7612501")
    this:ActorDestroy("Q7612501Trigger")
    this:ActorDestroy("Q7612501Trigger_1")
end

function Quest76125:OnSubStart7612502(arg1)
    print("OnSubStart7612502")
    this:CreateQuestNpc(arg1, npcs.Npc15903.id, 0, false, 0)
    this:RequestInteractionWithCameraLookTrigger("Q7612502_N15903_01", 7612502, npcs.Npc15903.alias, 3, {x = 2131.74, y = 112.205, z = 11206.61}, 50, 7612502, true, true)
end

function Quest76125:OnSubFinish7612502(arg1)
    print("OnSubFinish7612502")
    this:SafeDestroyQuestNpc(npcs.Npc15903.alias, 3)
end

function Quest76125:OnSubFailed7612502(arg1)
    print("OnSubFailed7612502")
    this:SafeDestroyQuestNpc(npcs.Npc15903.alias, 3)
    this:ActorDestroy("Q7612502_N15903_01")
end

function Quest76125:OnSubStart7612504(arg1)
    print("OnSubStart7612504")
end

function Quest76125:OnSubFinish7612504(arg1)
    print("OnSubFinish7612504")
    this:TransmitPlayerWithQuestIdByData(7612504, 1, datas.TransmitData_01, function(arg1)
        actorUtils.FinishQuestID(false, 7612502)
    end, nil, nil)
end

return Quest76125

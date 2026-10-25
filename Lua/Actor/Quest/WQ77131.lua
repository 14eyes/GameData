require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77131 = class("Quest77131", QuestActorProxy)
Quest77131.defaultAlias = "Quest77131"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77131:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77131:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7713101"] = self.OnSubStart7713101,
        ["7713102"] = self.OnSubStart7713102,
        ["7713103"] = self.OnSubStart7713103,
        ["7713104"] = self.OnSubStart7713104,
        ["7713110"] = self.OnSubStart7713110,
        ["7713112"] = self.OnSubStart7713112,
        ["7713111"] = self.OnSubStart7713111,
        ["7713105"] = self.OnSubStart7713105,
        ["7713106"] = self.OnSubStart7713106,
        ["7713107"] = self.OnSubStart7713107,
        ["7713108"] = self.OnSubStart7713108,
        ["7713109"] = self.OnSubStart7713109,
        ["7713113"] = self.OnSubStart7713113
    }
end

function Quest77131:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7713101"] = self.OnSubFinish7713101,
        ["7713102"] = self.OnSubFinish7713102,
        ["7713103"] = self.OnSubFinish7713103,
        ["7713104"] = self.OnSubFinish7713104,
        ["7713110"] = self.OnSubFinish7713110,
        ["7713112"] = self.OnSubFinish7713112,
        ["7713111"] = self.OnSubFinish7713111,
        ["7713105"] = self.OnSubFinish7713105,
        ["7713106"] = self.OnSubFinish7713106,
        ["7713107"] = self.OnSubFinish7713107,
        ["7713108"] = self.OnSubFinish7713108,
        ["7713109"] = self.OnSubFinish7713109,
        ["7713113"] = self.OnSubFinish7713113
    }
end

function Quest77131:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77131:Start()
    print("Start")
end

function Quest77131:OnDestroy()
    print("OnDestroy")
end

function Quest77131:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77131:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77131:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77131:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ActorDestroy("Q7713101Trigger", 0)
    this:ActorDestroy("Q7713101Trigger_Narrator", 77131)
    this:ActorDestroy("Q7713102Trigger", 77131)
    this:ActorDestroy("Q7713103Trigger", 0)
    this:ActorDestroy("Q7713104Trigger", 77131)
    this:ActorDestroy("Q7713105Trigger", 77131)
    this:ActorDestroy("Q7713106Trigger", 0)
    this:ActorDestroy("Q7713109Trigger", 77131)
    this:ActorDestroy("Q7713113Trigger", 77131)
end

function Quest77131:ActorDestroy(arg1, arg2)
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

function Quest77131:OnSubStart7713101(arg1)
    print("OnSubStart7713101")
    this:CreateQuestNpc(arg1, npcs.Npc7654.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7713101Trigger", "Actor/Gadget/Q7713101Trigger", 70900002, 0, points._Q7713101TriggerPoint_.pos, points._Q7713101TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q7713101Trigger_Narrator", "Actor/Gadget/Q7713101Trigger_Narrator", 70900002, 0, points._Q7713101Trigger_NarratorPoint_.pos, points._Q7713101Trigger_NarratorPoint_.rot, true, false, 3, nil, 0, 77131)
end

function Quest77131:OnSubFinish7713101(arg1)
    print("OnSubFinish7713101")
end

function Quest77131:OnSubStart7713102(arg1)
    print("OnSubStart7713102")
    actorMgr:CreateActorWithPos("Q7713102Trigger", "Actor/Gadget/Q7713102Trigger", 70900002, 0, points._Q7713102TriggerPoint_.pos, points._Q7713102TriggerPoint_.rot, true, false, 3, nil, 0, 77131)
end

function Quest77131:OnSubFinish7713102(arg1)
    print("OnSubFinish7713102")
end

function Quest77131:OnSubStart7713103(arg1)
    print("OnSubStart7713103")
    actorMgr:CreateActorWithPos("Q7713103Trigger", "Actor/Gadget/Q7713103Trigger", 70900002, 0, points._Q7713103TriggerPoint_.pos, points._Q7713103TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77131:OnSubFinish7713103(arg1)
    print("OnSubFinish7713103")
end

function Quest77131:OnSubStart7713104(arg1)
    print("OnSubStart7713104")
    this:DeployStoryByQuest(147731310)
    actorMgr:CreateActorWithPos("Q7713104Trigger", "Actor/Gadget/Q7713104Trigger", 70900002, 0, points._Q7713104TriggerPoint_.pos, points._Q7713104TriggerPoint_.rot, true, false, 3, nil, 0, 77131)
end

function Quest77131:OnSubFinish7713104(arg1)
    print("OnSubFinish7713104")
end

function Quest77131:OnSubStart7713110(arg1)
    print("OnSubStart7713110")
    this:CreateQuestNpc(arg1, npcs.Npc22738.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc22361.alias, "", true)
end

function Quest77131:OnSubFinish7713110(arg1)
    print("OnSubFinish7713110")
    this:SafeDestroyQuestNpc(npcs.Npc22738.alias, 3)
end

function Quest77131:OnSubStart7713112(arg1)
    print("OnSubStart7713112")
end

function Quest77131:OnSubFinish7713112(arg1)
    print("OnSubFinish7713112")
end

function Quest77131:OnSubStart7713111(arg1)
    print("OnSubStart7713111")
    this:CreateQuestNpc(arg1, npcs.Npc7855.id, 0, false, 0)
    this:PlayCutsceneIndex(7713101, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7713111})
    end, nil, nil, false)
end

function Quest77131:OnSubFinish7713111(arg1)
    print("OnSubFinish7713111")
    this:SafeDestroyQuestNpc(npcs.Npc7855.alias, 3)
end

function Quest77131:OnSubStart7713105(arg1)
    print("OnSubStart7713105")
    this:CreateQuestNpc(arg1, npcs.Npc22361.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7713105Trigger", "Actor/Gadget/Q7713105Trigger", 70900002, 0, points._Q7713105TriggerPoint_.pos, points._Q7713105TriggerPoint_.rot, true, false, 3, nil, 0, 77131)
    this:DeployStoryByQuest(147717011)
end

function Quest77131:OnSubFinish7713105(arg1)
    print("OnSubFinish7713105")
    this:SafeDestroyQuestNpc(npcs.Npc22361.alias, 3)
    this:TransmitPlayerByData(arg1, 1, datas.TransmitData, function(arg1)
        this:AfterMainPageActiveSafeCall(nil)
    end, nil, nil)
end

function Quest77131:OnSubStart7713106(arg1)
    print("OnSubStart7713106")
    actorMgr:CreateActorWithPos("Q7713106Trigger", "Actor/Gadget/Q7713106Trigger", 70900002, 0, points._Q7713106TriggerPoint_.pos, points._Q7713106TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77131:OnSubFinish7713106(arg1)
    print("OnSubFinish7713106")
end

function Quest77131:OnSubStart7713107(arg1)
    print("OnSubStart7713107")
end

function Quest77131:OnSubFinish7713107(arg1)
    print("OnSubFinish7713107")
    this:SafeDestroyQuestNpc(npcs.Npc7654.alias, 3)
    if this:GetSubQuestState(7710503) < 3 then
        this:SetNavigationByMainId(77105, true)
    end

    this:ActorDestroy("Q7713101Trigger_Narrator", 77131)
end

function Quest77131:OnSubStart7713108(arg1)
    print("OnSubStart7713108")
end

function Quest77131:OnSubFinish7713108(arg1)
    print("OnSubFinish7713108")
end

function Quest77131:OnSubStart7713109(arg1)
    print("OnSubStart7713109")
    actorMgr:CreateActorWithPos("Q7713109Trigger", "Actor/Gadget/Q7713109Trigger", 70900002, 0, points._Q7713109TriggerPoint_.pos, points._Q7713109TriggerPoint_.rot, true, false, 3, nil, 0, 77131)
end

function Quest77131:OnSubFinish7713109(arg1)
    print("OnSubFinish7713109")
end

function Quest77131:OnSubStart7713113(arg1)
    print("OnSubStart7713113")
    this:CreateQuestNpc(arg1, npcs.Npc7801.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7713113Trigger", "Actor/Gadget/Q7713113Trigger", 70900002, 0, points._Q7713113TriggerPoint_.pos, points._Q7713113TriggerPoint_.rot, true, false, 3, nil, 0, 77131)
end

function Quest77131:OnSubFinish7713113(arg1)
    print("OnSubFinish7713113")
    this:SafeDestroyQuestNpc(npcs.Npc7801.alias, 3)
end

return Quest77131

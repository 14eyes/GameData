require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest77107 = class("Quest77107", QuestActorProxy)
Quest77107.defaultAlias = "Quest77107"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest77107:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest77107:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7710710"] = self.OnSubStart7710710,
        ["7710702"] = self.OnSubStart7710702,
        ["7710703"] = self.OnSubStart7710703,
        ["7710704"] = self.OnSubStart7710704,
        ["7710713"] = self.OnSubStart7710713,
        ["7710712"] = self.OnSubStart7710712,
        ["7710716"] = self.OnSubStart7710716,
        ["7710714"] = self.OnSubStart7710714,
        ["7710715"] = self.OnSubStart7710715,
        ["7710706"] = self.OnSubStart7710706,
        ["7710707"] = self.OnSubStart7710707,
        ["7710708"] = self.OnSubStart7710708,
        ["7710709"] = self.OnSubStart7710709,
        ["7710711"] = self.OnSubStart7710711
    }
end

function Quest77107:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7710710"] = self.OnSubFinish7710710,
        ["7710702"] = self.OnSubFinish7710702,
        ["7710703"] = self.OnSubFinish7710703,
        ["7710704"] = self.OnSubFinish7710704,
        ["7710713"] = self.OnSubFinish7710713,
        ["7710712"] = self.OnSubFinish7710712,
        ["7710716"] = self.OnSubFinish7710716,
        ["7710714"] = self.OnSubFinish7710714,
        ["7710715"] = self.OnSubFinish7710715,
        ["7710706"] = self.OnSubFinish7710706,
        ["7710707"] = self.OnSubFinish7710707,
        ["7710708"] = self.OnSubFinish7710708,
        ["7710709"] = self.OnSubFinish7710709,
        ["7710711"] = self.OnSubFinish7710711
    }
end

function Quest77107:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest77107:Start()
    print("Start")
end

function Quest77107:OnDestroy()
    print("OnDestroy")
end

function Quest77107:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest77107:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest77107:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest77107:OnMainPaused(arg1)
    print("OnMainPaused")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7710702Trigger", 0)
    this:ActorDestroy("Q7710702Trigger", 0)
    this:ActorDestroy("Q7710704Trigger", 0)
    this:ActorDestroy("Q7710704Trigger_1", 77107)
    this:ActorDestroy("Q7710706Trigger", 0)
    this:ActorDestroy("Q7710710Trigger", 0)
    this:ActorDestroy("Q7710715Trigger", 77107)
end

function Quest77107:ActorDestroy(arg1, arg2)
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

function Quest77107:OnSubStart7710710(arg1)
    print("OnSubStart7710710")
    actorMgr:CreateActorWithPos("Q7710710Trigger", "Actor/Gadget/Q7710710Trigger", 70900002, 0, points._Q7710710TriggerPoint_.pos, points._Q7710710TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77107:OnSubFinish7710710(arg1)
    print("OnSubFinish7710710")
    this:QuestNarratorTask(datas.NarratorWithId_7710710, nil)
end

function Quest77107:OnSubStart7710702(arg1)
    print("OnSubStart7710702")
    actorMgr:CreateActorWithPos("Q7710702Trigger", "Actor/Gadget/Q7710702Trigger", 70900002, 0, points._Q7710702TriggerPoint_.pos, points._Q7710702TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77107:OnSubFinish7710702(arg1)
    print("OnSubFinish7710702")
end

function Quest77107:OnSubStart7710703(arg1)
    print("OnSubStart7710703")
    this:CreateQuestNpc(arg1, npcs.Npc22361.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc22361.alias, "", true)
end

function Quest77107:OnSubFinish7710703(arg1)
    print("OnSubFinish7710703")
    this:SafeDestroyQuestNpc(npcs.Npc22361.alias, 3)
    this:QuestNarratorTask(datas.NarratorWithId_7710703, nil)
end

function Quest77107:OnSubStart7710704(arg1)
    print("OnSubStart7710704")
    actorMgr:CreateActorWithPos("Q7710704Trigger", "Actor/Gadget/Q7710704Trigger", 70900002, 0, points._Q7710704TriggerPoint_.pos, points._Q7710704TriggerPoint_.rot, true, false, 3, nil, 0, 0)
    actorMgr:CreateActorWithPos("Q7710704Trigger_1", "Actor/Gadget/Q7710704Trigger_1", 70900002, 0, points._Q7710704Trigger_1Point_.pos, points._Q7710704Trigger_1Point_.rot, true, false, 3, nil, 0, 77107)
end

function Quest77107:OnSubFinish7710704(arg1)
    print("OnSubFinish7710704")
end

function Quest77107:OnSubStart7710713(arg1)
    print("OnSubStart7710713")
end

function Quest77107:OnSubFinish7710713(arg1)
    print("OnSubFinish7710713")
end

function Quest77107:OnSubStart7710712(arg1)
    print("OnSubStart7710712")
end

function Quest77107:OnSubFinish7710712(arg1)
    print("OnSubFinish7710712")
end

function Quest77107:OnSubStart7710716(arg1)
    print("OnSubStart7710716")
end

function Quest77107:OnSubFinish7710716(arg1)
    print("OnSubFinish7710716")
end

function Quest77107:OnSubStart7710714(arg1)
    print("OnSubStart7710714")
end

function Quest77107:OnSubFinish7710714(arg1)
    print("OnSubFinish7710714")
end

function Quest77107:OnSubStart7710715(arg1)
    print("OnSubStart7710715")
    actorMgr:CreateActorWithPos("Q7710715Trigger", "Actor/Gadget/Q7710715Trigger", 70900002, 0, points._Q7710715TriggerPoint_.pos, points._Q7710715TriggerPoint_.rot, true, false, 3, nil, 0, 77107)
end

function Quest77107:OnSubFinish7710715(arg1)
    print("OnSubFinish7710715")
    this:QuestNarratorTask(datas.NarratorWithId_7710715, nil)
end

function Quest77107:OnSubStart7710706(arg1)
    print("OnSubStart7710706")
    this:CreateQuestNpc(arg1, npcs.Npc22669.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7710706Trigger", "Actor/Gadget/Q7710706Trigger", 70900002, 0, points._Q7710706TriggerPoint_.pos, points._Q7710706TriggerPoint_.rot, true, false, 3, nil, 0, 0)
end

function Quest77107:OnSubFinish7710706(arg1)
    print("OnSubFinish7710706")
end

function Quest77107:OnSubStart7710707(arg1)
    print("OnSubStart7710707")
    this:RequestInteraction(npcs.Npc22669.alias, "", true)
end

function Quest77107:OnSubFinish7710707(arg1)
    print("OnSubFinish7710707")
    this:SafeDestroyQuestNpc(npcs.Npc22669.alias, 3)
end

function Quest77107:OnSubStart7710708(arg1)
    print("OnSubStart7710708")
end

function Quest77107:OnSubFinish7710708(arg1)
    print("OnSubFinish7710708")
end

function Quest77107:OnSubStart7710709(arg1)
    print("OnSubStart7710709")
    this:CreateQuestNpc(arg1, npcs.Npc22394.id, 0, false, 0)
    this:RequestInteraction(npcs.Npc22394.alias, "", true)
end

function Quest77107:OnSubFinish7710709(arg1)
    print("OnSubFinish7710709")
    this:SafeDestroyQuestNpc(npcs.Npc22394.alias, 3)
end

function Quest77107:OnSubStart7710711(arg1)
    print("OnSubStart7710711")
    this:PlayCutsceneIndex(7210508, function(arg1)
        actorUtils.FinishQuestWithParam({false}, {7710711})
    end, nil, nil, false)
end

function Quest77107:OnSubFinish7710711(arg1)
    print("OnSubFinish7710711")
end

return Quest77107

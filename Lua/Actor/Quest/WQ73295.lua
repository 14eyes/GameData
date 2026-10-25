require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73295 = class("Quest73295", QuestActorProxy)
Quest73295.defaultAlias = "Quest73295"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local points
local datas

function Quest73295:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    points = clientData.Points
    datas = clientData.Datas
end

function Quest73295:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7329501"] = self.OnSubStart7329501,
        ["7329502"] = self.OnSubStart7329502,
        ["7329510"] = self.OnSubStart7329510,
        ["7329503"] = self.OnSubStart7329503,
        ["7329504"] = self.OnSubStart7329504,
        ["7329505"] = self.OnSubStart7329505,
        ["7329506"] = self.OnSubStart7329506,
        ["7329507"] = self.OnSubStart7329507,
        ["7329508"] = self.OnSubStart7329508,
        ["7329509"] = self.OnSubStart7329509
    }
end

function Quest73295:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7329501"] = self.OnSubFinish7329501,
        ["7329502"] = self.OnSubFinish7329502,
        ["7329510"] = self.OnSubFinish7329510,
        ["7329503"] = self.OnSubFinish7329503,
        ["7329504"] = self.OnSubFinish7329504,
        ["7329505"] = self.OnSubFinish7329505,
        ["7329506"] = self.OnSubFinish7329506,
        ["7329507"] = self.OnSubFinish7329507,
        ["7329508"] = self.OnSubFinish7329508,
        ["7329509"] = self.OnSubFinish7329509
    }
end

function Quest73295:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73295:Start()
    print("Start")
end

function Quest73295:OnDestroy()
    print("OnDestroy")
end

function Quest73295:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73295:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73295:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73295:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73295:OnSubStart7329501(arg1)
    print("OnSubStart7329501")
    this:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc20931Data.id, 2)
end

function Quest73295:OnSubFinish7329501(arg1)
    print("OnSubFinish7329501")
    this:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73295:OnSubStart7329502(arg1)
    print("OnSubStart7329502")
    this:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    actorMgr:CreateActorWithPos("Q73295Trigger", "Actor/Gadget/Q73295Trigger", 70900002, 0, points.TPos_Q73295Trigger.pos, points.TPos_Q73295Trigger.rot, true, false, 3)
    if this:GetQuestVar(7329501, 1) == 0 then
        this:ActionSafeCall(function(arg1)
            this:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 73295)
        end)

        this:SetQuestVarByMainId(1, 1)
    end

    this:GetQuestNpcActor(npcs.Npc20930Data.alias):DoFreeStyle(4190, true, nil, true, true, false, false)
end

function Quest73295:OnSubFinish7329502(arg1)
    print("OnSubFinish7329502")
end

function Quest73295:OnSubStart7329510(arg1)
    print("OnSubStart7329510")
    this:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc20930Data.alias):DoFreeStyle(4190, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q73295Trigger2", "Actor/Gadget/Q73295Trigger2", 70900002, 0, points.TPos_Q73295Trigger2.pos, points.TPos_Q73295Trigger2.rot, true, false, 3)
end

function Quest73295:OnSubFinish7329510(arg1)
    print("OnSubFinish7329510")
end

function Quest73295:OnSubStart7329503(arg1)
    print("OnSubStart7329503")
    this:CreateQuestNpc(arg1, npcs.Npc20930Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc20930Data.alias):DoFreeStyle(4190, true, nil, true, true, false, false)
end

function Quest73295:OnSubFinish7329503(arg1)
    print("OnSubFinish7329503")
end

function Quest73295:OnSubStart7329504(arg1)
    print("OnSubStart7329504")
    this:GetQuestNpcActor(npcs.Npc20930Data.alias):DoFreeStyle(4190, true, nil, true, true, false, false)
end

function Quest73295:OnSubFinish7329504(arg1)
    print("OnSubFinish7329504")
    this:ActionSafeCall(function(arg1)
        this:NarratorOnlyTaskByData(datas.NarratorWithId1)
    end)

    this:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
end

function Quest73295:OnSubStart7329505(arg1)
    print("OnSubStart7329505")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc20930Data.id, 1)
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc20931Data.id, 2)
    actorMgr:CreateActorWithPos("Q73295Trigger1", "Actor/Gadget/Q73295Trigger1", 70900002, 0, points.TPos_Q73295Trigger1.pos, points.TPos_Q73295Trigger1.rot, true, false, 3)
end

function Quest73295:OnSubFinish7329505(arg1)
    print("OnSubFinish7329505")
end

function Quest73295:OnSubStart7329506(arg1)
    print("OnSubStart7329506")
    this:RequestInteraction(npcs.PaimonData.alias)
end

function Quest73295:OnSubFinish7329506(arg1)
    print("OnSubFinish7329506")
    this:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73295:OnSubStart7329507(arg1)
    print("OnSubStart7329507")
    this:NpcCreateWithActionSafeCall(arg1, npcs.Npc20931Data.id, 1)
end

function Quest73295:OnSubFinish7329507(arg1)
    print("OnSubFinish7329507")
end

function Quest73295:OnSubStart7329508(arg1)
    print("OnSubStart7329508")
end

function Quest73295:OnSubFinish7329508(arg1)
    print("OnSubFinish7329508")
    this:SafeDestroyQuestNpc(npcs.Npc20930Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc20931Data.alias, 3)
end

function Quest73295:OnSubStart7329509(arg1)
    print("OnSubStart7329509")
end

function Quest73295:OnSubFinish7329509(arg1)
    print("OnSubFinish7329509")
end

return Quest73295

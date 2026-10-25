require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75019 = class("Quest75019", QuestActorProxy)
Quest75019.defaultAlias = "Quest75019"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest75019:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75019:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7501904"] = self.OnSubStart7501904,
        ["7501910"] = self.OnSubStart7501910,
        ["7501901"] = self.OnSubStart7501901,
        ["7501909"] = self.OnSubStart7501909,
        ["7501902"] = self.OnSubStart7501902,
        ["7501903"] = self.OnSubStart7501903,
        ["7501905"] = self.OnSubStart7501905,
        ["7501906"] = self.OnSubStart7501906,
        ["7501908"] = self.OnSubStart7501908,
        ["7501907"] = self.OnSubStart7501907
    }
end

function Quest75019:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7501904"] = self.OnSubFinish7501904,
        ["7501910"] = self.OnSubFinish7501910,
        ["7501901"] = self.OnSubFinish7501901,
        ["7501909"] = self.OnSubFinish7501909,
        ["7501902"] = self.OnSubFinish7501902,
        ["7501903"] = self.OnSubFinish7501903,
        ["7501905"] = self.OnSubFinish7501905,
        ["7501906"] = self.OnSubFinish7501906,
        ["7501908"] = self.OnSubFinish7501908,
        ["7501907"] = self.OnSubFinish7501907
    }
end

function Quest75019:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7501906"] = self.OnSubFailed7501906}
end

function Quest75019:Start()
    print("Start")
end

function Quest75019:OnDestroy()
    print("OnDestroy")
end

function Quest75019:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75019:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75019:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc21481.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6092.alias, 3)
    this:ActorDestroy("Q7501902_Trigger")
    this:DestroyNpcTrigger("Q7501907N21481Trigger")
end

function Quest75019:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
        return
    end
end

function Quest75019:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75019:OnSubStart7501904(arg1)
    print("OnSubStart7501904")
end

function Quest75019:OnSubFinish7501904(arg1)
    print("OnSubFinish7501904")
end

function Quest75019:OnSubStart7501910(arg1)
    print("OnSubStart7501910")
end

function Quest75019:OnSubFinish7501910(arg1)
    print("OnSubFinish7501910")
end

function Quest75019:OnSubStart7501901(arg1)
    print("OnSubStart7501901")
    this:CreateQuestNpc(arg1, npcs.Npc21481.id, 0, false, 0)
    if self:GetSubQuestState(7501601) == 2 then
        this:QuestNarratorTask(datas.NarratorWithId_7501902, function(arg1)
            actorUtils.FinishQuestID(false, 7501901)
        end)
    else
        this:QuestNarratorTask(datas.NarratorWithId_7501901, function(arg1)
            actorUtils.FinishQuestID(false, 7501901)
        end)
    end
end

function Quest75019:OnSubFinish7501901(arg1)
    print("OnSubFinish7501901")
    this:SetNavigationByMainId(75019, true)
end

function Quest75019:OnSubStart7501909(arg1)
    print("OnSubStart7501909")
end

function Quest75019:OnSubFinish7501909(arg1)
    print("OnSubFinish7501909")
end

function Quest75019:OnSubStart7501902(arg1)
    print("OnSubStart7501902")
    this:CreateQuestNpc(arg1, npcs.Npc21481.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc6092.id, 0, false, 0)
    actorMgr:CreateActorWithPos("Q7501902_Trigger", "Actor/Gadget/Q7501902_Trigger", 70900002, 0, points.P7501902.pos, points.P7501902.rot, true, false, 3)
end

function Quest75019:OnSubFinish7501902(arg1)
    print("OnSubFinish7501902")
end

function Quest75019:OnSubStart7501903(arg1)
    print("OnSubStart7501903")
    this:CreateQuestNpc(arg1, npcs.Npc21481.id, 0, false, 0)
end

function Quest75019:OnSubFinish7501903(arg1)
    print("OnSubFinish7501903")
    this:SafeDestroyQuestNpc(npcs.Npc21481.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc6092.alias, 3)
end

function Quest75019:OnSubStart7501905(arg1)
    print("OnSubStart7501905")
    this:CreateQuestNpc(arg1, npcs.Npc21481.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21481.alias, 75019):DoFreeStyle(1230, true, nil, true, true, false, false)
    actorMgr:CreateActorWithPos("Q7501905Trigger", "Actor/Gadget/Q7501905Trigger", 70900002, 0, points._Q7501905TriggerPoint_.pos, points._Q7501905TriggerPoint_.rot, true, false, 3)
end

function Quest75019:OnSubFinish7501905(arg1)
    print("OnSubFinish7501905")
end

function Quest75019:OnSubStart7501906(arg1)
    print("OnSubStart7501906")
    this:CreateQuestNpc(arg1, npcs.Npc21481.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc21481.alias, 75019):DoFreeStyle(1230, true, nil, true, true, false, false)
end

function Quest75019:OnSubFinish7501906(arg1)
    print("OnSubFinish7501906")
end

function Quest75019:OnSubFailed7501906(arg1)
    print("OnSubFailed7501906")
    this:NatsaurusVehicleOff()
end

function Quest75019:OnSubStart7501908(arg1)
    print("OnSubStart7501908")
    this:CreateQuestNpc(arg1, npcs.Npc21481.id, 0, false, 0)
end

function Quest75019:OnSubFinish7501908(arg1)
    print("OnSubFinish7501908")
end

function Quest75019:OnSubStart7501907(arg1)
    print("OnSubStart7501907")
    this:NpcCreateWithNpcTrigger(npcs.Npc21481.id, 0, 60, 7501907)
end

function Quest75019:OnSubFinish7501907(arg1)
    print("OnSubFinish7501907")
    this:SafeDestroyQuestNpc(npcs.Npc21481.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_7501907, function(arg1)
            this:SetNavigationByMainId(75002, true)
        end)
    end)
end

return Quest75019

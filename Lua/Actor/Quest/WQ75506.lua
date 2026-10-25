require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75506 = class("Quest75506", QuestActorProxy)
Quest75506.defaultAlias = "Quest75506"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs
local points

function Quest75506:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
    points = clientData.Points
end

function Quest75506:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7550601"] = self.OnSubStart7550601,
        ["7550604"] = self.OnSubStart7550604,
        ["7550602"] = self.OnSubStart7550602,
        ["7550603"] = self.OnSubStart7550603
    }
end

function Quest75506:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7550601"] = self.OnSubFinish7550601,
        ["7550604"] = self.OnSubFinish7550604,
        ["7550602"] = self.OnSubFinish7550602,
        ["7550603"] = self.OnSubFinish7550603
    }
end

function Quest75506:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest75506:Start()
    print("Start")
end

function Quest75506:OnDestroy()
    print("OnDestroy")
end

function Quest75506:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75506:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75506:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:ActorDestroy("Q7550601")
    this:DestroyQuestNpcActor(npcs.Npc1095.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1094.alias, 3)
end

function Quest75506:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest75506:OnSubStart7550601(arg1)
    print("OnSubStart7550601")
end

function Quest75506:OnSubFinish7550601(arg1)
    print("OnSubFinish7550601")
end

function Quest75506:OnSubStart7550604(arg1)
    print("OnSubStart7550604")
    this:CreateQuestNpc(arg1, npcs.Npc1095.id, 0, false, 0)
    this:GetQuestNpcActor(npcs.Npc1095.alias, 75506):DoFreeStyle(1120, true, nil, true, true, false, false)
    if this:GetQuestVar(7550604, 1) == 0 then
        this:QuestNarratorTask(datas.NarratorWithId_7550601, function(arg1)
            this:SetQuestVarByMainId(1, 1)
        end)
    end
end

function Quest75506:OnSubFinish7550604(arg1)
    print("OnSubFinish7550604")
    this:DestroyQuestNpcActor(npcs.Npc1095.alias, 3)
end

function Quest75506:OnSubStart7550602(arg1)
    print("OnSubStart7550602")
end

function Quest75506:OnSubFinish7550602(arg1)
    print("OnSubFinish7550602")
end

function Quest75506:OnSubStart7550603(arg1)
    print("OnSubStart7550603")
    actorMgr:CreateActorWithPos("Q7550601", "Actor/Gadget/Q7550601", 70900002, 0, points._Q7550601Point_.pos, points._Q7550601Point_.rot, true, false, nil)
    this:CreateQuestNpc(arg1, npcs.Npc1095.id, 0, false, 0)
end

function Quest75506:OnSubFinish7550603(arg1)
    print("OnSubFinish7550603")
    this:DestroyQuestNpcActor(npcs.Npc1095.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc1094.alias, 3)
end

return Quest75506

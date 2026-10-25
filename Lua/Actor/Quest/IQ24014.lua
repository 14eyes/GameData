require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest24014 = class("Quest24014", QuestActorProxy)
Quest24014.defaultAlias = "Quest24014"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest24014:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest24014:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2401401"] = self.OnSubStart2401401,
        ["2401402"] = self.OnSubStart2401402,
        ["2401403"] = self.OnSubStart2401403,
        ["2401405"] = self.OnSubStart2401405,
        ["2401406"] = self.OnSubStart2401406,
        ["2401404"] = self.OnSubStart2401404
    }
end

function Quest24014:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2401401"] = self.OnSubFinish2401401,
        ["2401402"] = self.OnSubFinish2401402,
        ["2401403"] = self.OnSubFinish2401403,
        ["2401405"] = self.OnSubFinish2401405,
        ["2401406"] = self.OnSubFinish2401406,
        ["2401404"] = self.OnSubFinish2401404
    }
end

function Quest24014:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest24014:Start()
    print("Start")
end

function Quest24014:OnDestroy()
    print("OnDestroy")
end

function Quest24014:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest24014:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest24014:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc13507Data.alias, 3)
end

function Quest24014:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest24014:OnSubStart2401401(arg1)
    print("OnSubStart2401401")
    this:CreateQuestNpc(arg1, npcs.Npc13507Data.id, 1)
    this:GetQuestNpcActor(npcs.Npc13507Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest24014:OnSubFinish2401401(arg1)
    print("OnSubFinish2401401")
end

function Quest24014:OnSubStart2401402(arg1)
    print("OnSubStart2401402")
    this:GetQuestNpcActor(npcs.Npc13507Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest24014:OnSubFinish2401402(arg1)
    print("OnSubFinish2401402")
end

function Quest24014:OnSubStart2401403(arg1)
    print("OnSubStart2401403")
    this:GetQuestNpcActor(npcs.Npc13507Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest24014:OnSubFinish2401403(arg1)
    print("OnSubFinish2401403")
end

function Quest24014:OnSubStart2401405(arg1)
    print("OnSubStart2401405")
    this:GetQuestNpcActor(npcs.Npc13507Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest24014:OnSubFinish2401405(arg1)
    print("OnSubFinish2401405")
end

function Quest24014:OnSubStart2401406(arg1)
    print("OnSubStart2401406")
    this:GetQuestNpcActor(npcs.Npc13507Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest24014:OnSubFinish2401406(arg1)
    print("OnSubFinish2401406")
end

function Quest24014:OnSubStart2401404(arg1)
    print("OnSubStart2401404")
    this:CreateQuestNpc(arg1, npcs.Npc13507Data.id, 1)
    if this:GetQuestVar(2401404, 1) == 0 then
        this:NarratorOnlyTaskByData(datas.Narrator_2401402, function(arg1)
            this:SetQuestVarByMainId(1, 1)
        end)
    end

    this:GetQuestNpcActor(npcs.Npc13507Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest24014:OnSubFinish2401404(arg1)
    print("OnSubFinish2401404")
    this:NpcDestroyWithBlackscreen(3, npcs.Npc13507Data.alias)
end

return Quest24014

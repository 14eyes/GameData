require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72731 = class("Quest72731", QuestActorProxy)
Quest72731.defaultAlias = "Quest72731"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72731:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72731:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7273103"] = self.OnSubStart7273103,
        ["7273101"] = self.OnSubStart7273101,
        ["7273104"] = self.OnSubStart7273104,
        ["7273102"] = self.OnSubStart7273102
    }
end

function Quest72731:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7273103"] = self.OnSubFinish7273103,
        ["7273101"] = self.OnSubFinish7273101,
        ["7273104"] = self.OnSubFinish7273104,
        ["7273102"] = self.OnSubFinish7273102
    }
end

function Quest72731:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72731:Start()
    print("Start")
end

function Quest72731:OnDestroy()
    print("OnDestroy")
end

function Quest72731:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72731:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72731:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc13019Data.alias, 3)
    actorMgr:DestroyEntityActor("Q72731Trigger", 3, false)
    this:ActorDestroy("Q7273102Talk")
end

function Quest72731:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest72731:OnSubStart7273103(arg1)
    print("OnSubStart7273103")
    this:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 1)
    this:CreateQuestNpc(arg1, npcs.Npc13019Data.id, 0)
    if self:GetQuestVar(7273103, 1) == 0 then
        self:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 72731)
        self:SetQuestVarByMainId(1, 3)
    end

    actorMgr:CreateActorWithPos("Q72731Trigger", "Actor/Gadget/Q72731Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q7273003_Q7273004_Q7273101_Q7273102_N1044_guide").pos, sceneData:GetDummyPoint(3, "Q7273003_Q7273004_Q7273101_Q7273102_N1044_guide").rot, true, false, 3)
    this:GetQuestNpcActor(npcs.Npc1044Data.alias):DisableInteeHeadCtrl(true)
    this:GetQuestNpcActor(npcs.Npc13019Data.alias):DisableInteeHeadCtrl(true)
end

function Quest72731:OnSubFinish7273103(arg1)
    print("OnSubFinish7273103")
end

function Quest72731:OnSubStart7273101(arg1)
    print("OnSubStart7273101")
end

function Quest72731:OnSubFinish7273101(arg1)
    print("OnSubFinish7273101")
    this:TryPauseCurOnlyNarrator()
    this:ClearNarratorTask()
end

function Quest72731:OnSubStart7273104(arg1)
    print("OnSubStart7273104")
    this:ActionSafeCall(function(arg1)
        this:GetQuestNpcActor(npcs.Npc1044Data.alias):DisableInteeHeadCtrl(true)
        this:GetQuestNpcActor(npcs.Npc13019Data.alias):DisableInteeHeadCtrl(true)
    end)
end

function Quest72731:OnSubFinish7273104(arg1)
    print("OnSubFinish7273104")
end

function Quest72731:OnSubStart7273102(arg1)
    print("OnSubStart7273102")
    this:AfterMainPageActiveSafeCall(function(arg1)
        actorMgr:CreateActorWithPos("Q7273102Talk", "Actor/Gadget/Q7273102Talk", 70900002, 0, sceneData:GetDummyPoint(3, "Q7273003_Q7273004_Q7273101_Q7273102_N1044_guide").pos, sceneData:GetDummyPoint(3, "Q7273003_Q7273004_Q7273101_Q7273102_N1044_guide").rot, true, false, 3)
    end)
end

function Quest72731:OnSubFinish7273102(arg1)
    print("OnSubFinish7273102")
    this:ActionSafeCall(function(arg1)
        this:DestroyQuestNpcActor(npcs.Npc1044Data.alias, 3)
    end)
end

return Quest72731

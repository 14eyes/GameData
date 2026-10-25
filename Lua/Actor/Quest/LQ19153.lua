require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19153 = class("Quest19153", QuestActorProxy)
Quest19153.defaultAlias = "Quest19153"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19153:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19153:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1915302"] = self.OnSubStart1915302,
        ["1915306"] = self.OnSubStart1915306,
        ["1915304"] = self.OnSubStart1915304
    }
end

function Quest19153:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1915302"] = self.OnSubFinish1915302,
        ["1915306"] = self.OnSubFinish1915306,
        ["1915304"] = self.OnSubFinish1915304
    }
end

function Quest19153:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19153:Start()
    print("Start")
end

function Quest19153:OnDestroy()
    print("OnDestroy")
end

function Quest19153:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest19153:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19153:OnMainCanceled(arg1)
    print("OnMainCanceled")
    this:ClearNarratorTask()
    this:SafeDestroyQuestNpc(npcs.Coop_LaylaData.alias, 1073)
    this:SafeDestroyQuestNpc(npcs.Coop_LaylaData.alias, 3)
    actorMgr:DestroyEntityActor("Q19153Trigger", 1073, false)
    actorMgr:DestroyEntityActor("Q1915306tri", 3, false)
end

function Quest19153:NpcDestroy(arg1, arg2)
    this:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest19153:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19153:OnSubStart1915302(arg1)
    print("OnSubStart1915302")
    this:ActionSafeCall(function(arg1_2)
        this:CreateQuestNpc(arg1, npcs.Coop_LaylaData.id, 1)
        actorMgr:CreateActorWithPos("Q19153Trigger", "Actor/Gadget/Q19153Trigger", 70900002, 0, {x = 14.07, y = 2.153, z = -34.174}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1073)
    end)

    this:RequestCoopInteractionFromSubStartPoint(107401, 1915302)
end

function Quest19153:OnSubFinish1915302(arg1)
    print("OnSubFinish1915302")
    this:NpcDestroy(npcs.Coop_LaylaData.alias, 1073)
    this:ActorDestroy("Q19153Trigger")
end

function Quest19153:OnSubStart1915306(arg1)
    print("OnSubStart1915306")
    this:RequestCoopInteractionFromSubStartPoint(107401, 1915306)
    this:ClearNarratorTask()
    this:CreateQuestNpcWithTriggerBlack("Q1915306tri", 1915306, 512, 1, 4, 1)
end

function Quest19153:OnSubFinish1915306(arg1)
    print("OnSubFinish1915306")
    this:NpcDestroy(npcs.Coop_LaylaData.alias, 3)
end

function Quest19153:OnSubStart1915304(arg1)
    print("OnSubStart1915304")
end

function Quest19153:OnSubFinish1915304(arg1)
    print("OnSubFinish1915304")
    this:NarratorOnlyTaskByData(datas.NarratorWithId)
end

return Quest19153

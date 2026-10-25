require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest75016 = class("Quest75016", QuestActorProxy)
Quest75016.defaultAlias = "Quest75016"
local clientData
local this
local mainID
local actorAlias
local datas
local npcs

function Quest75016:OnDataLoaded()
    clientData = self.clientData
    this = self
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    datas = clientData.Datas
    npcs = clientData.Npcs
end

function Quest75016:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7501603"] = self.OnSubStart7501603,
        ["7501602"] = self.OnSubStart7501602,
        ["7501604"] = self.OnSubStart7501604,
        ["7501605"] = self.OnSubStart7501605,
        ["7501601"] = self.OnSubStart7501601
    }
end

function Quest75016:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7501603"] = self.OnSubFinish7501603,
        ["7501602"] = self.OnSubFinish7501602,
        ["7501604"] = self.OnSubFinish7501604,
        ["7501605"] = self.OnSubFinish7501605,
        ["7501601"] = self.OnSubFinish7501601
    }
end

function Quest75016:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {["7501604"] = self.OnSubFailed7501604, ["7501605"] = self.OnSubFailed7501605}
end

function Quest75016:Start()
    print("Start")
end

function Quest75016:OnDestroy()
    print("OnDestroy")
end

function Quest75016:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest75016:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest75016:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest75016:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg4 .. "N" .. arg1 .. "Trigger", arg4, arg1, arg2, arg3, 2)
end

function Quest75016:OnSubStart7501603(arg1)
    print("OnSubStart7501603")
    this:CancelStoryByQuest(147501605)
    if self:GetSubQuestState(503401) == 2 then
    else
        if self:GetSubQuestState(503406) == 2 then
        else
            this:NpcCreateWithNpcTrigger(npcs.Npc21697.id, 0, 60, 7501603)
        end
    end
end

function Quest75016:OnSubFinish7501603(arg1)
    print("OnSubFinish7501603")
    this:SafeDestroyQuestNpc(npcs.Npc21553.alias, 3)
    this:SafeDestroyQuestNpc(npcs.Npc21697.alias, 3)
    this:ActionSafeCall(function(arg1)
        if arg1:GetSubQuestState(7501901) == 3 then
        else
            this:QuestNarratorTask(datas.NarratorWithId_7501604, nil)
        end
    end)
end

function Quest75016:OnSubStart7501602(arg1)
    print("OnSubStart7501602")
    this:NpcCreateWithNpcTrigger(npcs.Npc21554.id, 0, 30, 7501602)
end

function Quest75016:OnSubFinish7501602(arg1)
    print("OnSubFinish7501602")
    this:SafeDestroyQuestNpc(npcs.Npc21554.alias, 3)
    this:ActionSafeCall(function(arg1)
        this:QuestNarratorTask(datas.NarratorWithId_7501604, nil)
    end)
end

function Quest75016:OnSubStart7501604(arg1)
    print("OnSubStart7501604")
    this:DeployStoryByQuest(147501604)
end

function Quest75016:OnSubFinish7501604(arg1)
    print("OnSubFinish7501604")
    this:CancelStoryByQuest(147501604)
end

function Quest75016:OnSubFailed7501604(arg1)
    print("OnSubFailed7501604")
    this:CancelStoryByQuest(147501604)
end

function Quest75016:OnSubStart7501605(arg1)
    print("OnSubStart7501605")
    if self:GetSubQuestState(503401) == 2 then
    else
        if self:GetSubQuestState(503406) == 2 then
        else
            this:DeployStoryByQuest(147501605)
        end
    end
end

function Quest75016:OnSubFinish7501605(arg1)
    print("OnSubFinish7501605")
    this:CancelStoryByQuest(147501605)
end

function Quest75016:OnSubFailed7501605(arg1)
    print("OnSubFailed7501605")
    this:CancelStoryByQuest(147501605)
end

function Quest75016:OnSubStart7501601(arg1)
    print("OnSubStart7501601")
end

function Quest75016:OnSubFinish7501601(arg1)
    print("OnSubFinish7501601")
end

return Quest75016

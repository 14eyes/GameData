require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79024 = class("Quest79024", QuestActorProxy)
Quest79024.defaultAlias = "Quest79024"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest79024:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest79024:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7902401"] = self.OnSubStart7902401,
        ["7902402"] = self.OnSubStart7902402,
        ["7902415"] = self.OnSubStart7902415,
        ["7902417"] = self.OnSubStart7902417,
        ["7902416"] = self.OnSubStart7902416,
        ["7902403"] = self.OnSubStart7902403,
        ["7902410"] = self.OnSubStart7902410,
        ["7902404"] = self.OnSubStart7902404,
        ["7902405"] = self.OnSubStart7902405,
        ["7902406"] = self.OnSubStart7902406,
        ["7902412"] = self.OnSubStart7902412,
        ["7902413"] = self.OnSubStart7902413,
        ["7902414"] = self.OnSubStart7902414,
        ["7902409"] = self.OnSubStart7902409,
        ["7902407"] = self.OnSubStart7902407,
        ["7902411"] = self.OnSubStart7902411
    }
end

function Quest79024:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7902401"] = self.OnSubFinish7902401,
        ["7902402"] = self.OnSubFinish7902402,
        ["7902415"] = self.OnSubFinish7902415,
        ["7902417"] = self.OnSubFinish7902417,
        ["7902416"] = self.OnSubFinish7902416,
        ["7902403"] = self.OnSubFinish7902403,
        ["7902410"] = self.OnSubFinish7902410,
        ["7902404"] = self.OnSubFinish7902404,
        ["7902405"] = self.OnSubFinish7902405,
        ["7902406"] = self.OnSubFinish7902406,
        ["7902412"] = self.OnSubFinish7902412,
        ["7902413"] = self.OnSubFinish7902413,
        ["7902414"] = self.OnSubFinish7902414,
        ["7902409"] = self.OnSubFinish7902409,
        ["7902407"] = self.OnSubFinish7902407,
        ["7902411"] = self.OnSubFinish7902411
    }
end

function Quest79024:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79024:Start()
    print("Start")
end

function Quest79024:OnDestroy()
    print("OnDestroy")
end

function Quest79024:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79024:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79024:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79024:OnSubStart7902401(arg1)
    print("OnSubStart7902401")
    self:CreateQuestNpc(arg1, npcs.Npc20620Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20621Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20622Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20623Data.id, 4)
end

function Quest79024:OnSubFinish7902401(arg1)
    print("OnSubFinish7902401")
end

function Quest79024:OnSubStart7902402(arg1)
    print("OnSubStart7902402")
end

function Quest79024:OnSubFinish7902402(arg1)
    print("OnSubFinish7902402")
end

function Quest79024:OnSubStart7902415(arg1)
    print("OnSubStart7902415")
    self:CreateQuestNpcWithTriggerBlack("omg1", 7902415, npcs.PaimonData.id, 1, 20, 2)
end

function Quest79024:OnSubFinish7902415(arg1)
    print("OnSubFinish7902415")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest79024:OnSubStart7902417(arg1)
    print("OnSubStart7902417")
end

function Quest79024:OnSubFinish7902417(arg1)
    print("OnSubFinish7902417")
end

function Quest79024:OnSubStart7902416(arg1)
    print("OnSubStart7902416")
    self:CreateQuestNpcWithTriggerBlack("omg2", 7902416, npcs.PaimonData.id, 1, 20, 2)
end

function Quest79024:OnSubFinish7902416(arg1)
    print("OnSubFinish7902416")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest79024:OnSubStart7902403(arg1)
    print("OnSubStart7902403")
end

function Quest79024:OnSubFinish7902403(arg1)
    print("OnSubFinish7902403")
end

function Quest79024:OnSubStart7902410(arg1)
    print("OnSubStart7902410")
    self:CreateQuestNpcWithTriggerBlack("Q7902410", 7902410, npcs.PaimonData.id, 1, 40, 2)
end

function Quest79024:OnSubFinish7902410(arg1)
    print("OnSubFinish7902410")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest79024:OnSubStart7902404(arg1)
    print("OnSubStart7902404")
end

function Quest79024:OnSubFinish7902404(arg1)
    print("OnSubFinish7902404")
end

function Quest79024:OnSubStart7902405(arg1)
    print("OnSubStart7902405")
end

function Quest79024:OnSubFinish7902405(arg1)
    print("OnSubFinish7902405")
end

function Quest79024:OnSubStart7902406(arg1)
    print("OnSubStart7902406")
end

function Quest79024:OnSubFinish7902406(arg1)
    print("OnSubFinish7902406")
end

function Quest79024:OnSubStart7902412(arg1)
    print("OnSubStart7902412")
    self:CreateQuestNpcWithTriggerBlack("talktome1", 7902412, npcs.PaimonData.id, 1, 50, 1)
end

function Quest79024:OnSubFinish7902412(arg1)
    print("OnSubFinish7902412")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    if self:GetQuestVar(7902412, 1) == 1 then
        self:NarratorOnlyTask(datas.NarratorTable, nil, "")
    end
end

function Quest79024:OnSubStart7902413(arg1)
    print("OnSubStart7902413")
    self:CreateQuestNpcWithTriggerBlack("talktome2", 7902413, npcs.PaimonData.id, 1, 50, 1)
end

function Quest79024:OnSubFinish7902413(arg1)
    print("OnSubFinish7902413")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    if self:GetQuestVar(7902413, 1) == 1 then
        self:NarratorOnlyTask(datas.NarratorTable, nil, "")
    end
end

function Quest79024:OnSubStart7902414(arg1)
    print("OnSubStart7902414")
    self:CreateQuestNpcWithTriggerBlack("talktome3", 7902414, npcs.PaimonData.id, 1, 50, 1)
end

function Quest79024:OnSubFinish7902414(arg1)
    print("OnSubFinish7902414")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    if self:GetQuestVar(7902414, 1) == 1 then
        self:NarratorOnlyTask(datas.NarratorTable, nil, "")
    end
end

function Quest79024:OnSubStart7902409(arg1)
    print("OnSubStart7902409")
end

function Quest79024:OnSubFinish7902409(arg1)
    print("OnSubFinish7902409")
end

function Quest79024:OnSubStart7902407(arg1)
    print("OnSubStart7902407")
end

function Quest79024:OnSubFinish7902407(arg1)
    print("OnSubFinish7902407")
end

function Quest79024:OnSubStart7902411(arg1)
    print("OnSubStart7902411")
    self:CreateQuestNpcWithTriggerBlack("Q7902411", 7902411, npcs.PaimonData.id, 1, 50, 2)
end

function Quest79024:OnSubFinish7902411(arg1)
    print("OnSubFinish7902411")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

return Quest79024

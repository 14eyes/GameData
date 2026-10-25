require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23037 = class("Quest23037", QuestActorProxy)
Quest23037.defaultAlias = "Quest23037"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest23037:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest23037:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2303701"] = self.OnSubStart2303701,
        ["2303702"] = self.OnSubStart2303702,
        ["2303703"] = self.OnSubStart2303703,
        ["2303704"] = self.OnSubStart2303704,
        ["2303706"] = self.OnSubStart2303706,
        ["2303707"] = self.OnSubStart2303707,
        ["2303708"] = self.OnSubStart2303708,
        ["2303709"] = self.OnSubStart2303709
    }
end

function Quest23037:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2303701"] = self.OnSubFinish2303701,
        ["2303702"] = self.OnSubFinish2303702,
        ["2303703"] = self.OnSubFinish2303703,
        ["2303704"] = self.OnSubFinish2303704,
        ["2303706"] = self.OnSubFinish2303706,
        ["2303707"] = self.OnSubFinish2303707,
        ["2303708"] = self.OnSubFinish2303708,
        ["2303709"] = self.OnSubFinish2303709
    }
end

function Quest23037:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23037:Start()
    print("Start")
end

function Quest23037:OnDestroy()
    print("OnDestroy")
end

function Quest23037:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest23037:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23037:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearNarratorTask()
    self:SafeDestroyQuestNpc(npcs.Npc4412Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4071Data.alias, 3)
end

function Quest23037:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23037:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 11 then
        local questVar = self:GetQuestVar(2303706, 1)
        self:SetQuestVarByMainId(1, questVar + 5)
    elseif arg1 == 12 then
        local questVar = self:GetQuestVar(2303706, 1)
        self:SetQuestVarByMainId(1, questVar + 10)
    elseif arg1 == 13 then
        local questVar = self:GetQuestVar(2303706, 1)
        self:SetQuestVarByMainId(1, questVar + 15)
    elseif arg1 == 21 then
        local questVar = self:GetQuestVar(2303707, 2)
        self:SetQuestVarByMainId(2, questVar + 5)
    elseif arg1 == 22 then
        local questVar = self:GetQuestVar(2303707, 2)
        self:SetQuestVarByMainId(2, questVar + 10)
    elseif arg1 == 23 then
        local questVar = self:GetQuestVar(2303707, 2)
        self:SetQuestVarByMainId(2, questVar + 15)
    elseif arg1 == 31 then
        local questVar = self:GetQuestVar(2303708, 3)
        self:SetQuestVarByMainId(3, questVar + 5)
    elseif arg1 == 32 then
        local questVar = self:GetQuestVar(2303708, 3)
        self:SetQuestVarByMainId(3, questVar + 10)
    elseif arg1 == 33 then
        local questVar = self:GetQuestVar(2303708, 3)
        self:SetQuestVarByMainId(3, questVar + 15)
    elseif arg1 == 10 then
        self:SetQuestVarByMainId(1, 0)
    elseif arg1 == 20 then
        self:SetQuestVarByMainId(2, 0)
    elseif arg1 == 30 then
        self:SetQuestVarByMainId(3, 0)
    end
end

function Quest23037:OnSubStart2303701(arg1)
    print("OnSubStart2303701")
    self:CreateQuestNpc(arg1, npcs.Npc4412Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc4412Data.alias):DoFreeStyle(1190, true, nil, true, true, false, false)
end

function Quest23037:OnSubFinish2303701(arg1)
    print("OnSubFinish2303701")
end

function Quest23037:OnSubStart2303702(arg1)
    print("OnSubStart2303702")
    self:CreateQuestNpc(arg1, npcs.Npc4071Data.id, 1)
end

function Quest23037:OnSubFinish2303702(arg1)
    print("OnSubFinish2303702")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4071Data.alias)
end

function Quest23037:OnSubStart2303703(arg1)
    print("OnSubStart2303703")
    self:CreateQuestNpc(arg1, npcs.Npc4071Data.id, 1)
end

function Quest23037:OnSubFinish2303703(arg1)
    print("OnSubFinish2303703")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4071Data.alias)
end

function Quest23037:OnSubStart2303704(arg1)
    print("OnSubStart2303704")
    self:CreateQuestNpc(arg1, npcs.Npc4071Data.id, 1)
end

function Quest23037:OnSubFinish2303704(arg1)
    print("OnSubFinish2303704")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4071Data.alias)
end

function Quest23037:OnSubStart2303706(arg1)
    print("OnSubStart2303706")
end

function Quest23037:OnSubFinish2303706(arg1)
    print("OnSubFinish2303706")
end

function Quest23037:OnSubStart2303707(arg1)
    print("OnSubStart2303707")
end

function Quest23037:OnSubFinish2303707(arg1)
    print("OnSubFinish2303707")
end

function Quest23037:OnSubStart2303708(arg1)
    print("OnSubStart2303708")
end

function Quest23037:OnSubFinish2303708(arg1)
    print("OnSubFinish2303708")
end

function Quest23037:OnSubStart2303709(arg1)
    print("OnSubStart2303709")
end

function Quest23037:OnSubFinish2303709(arg1)
    print("OnSubFinish2303709")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4412Data.alias)
end

return Quest23037

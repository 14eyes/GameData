require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72208 = class("Quest72208", QuestActorProxy)
Quest72208.defaultAlias = "Quest72208"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72208:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72208:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7220801"] = self.OnSubStart7220801,
        ["7220802"] = self.OnSubStart7220802,
        ["7220803"] = self.OnSubStart7220803,
        ["7220804"] = self.OnSubStart7220804,
        ["7220806"] = self.OnSubStart7220806,
        ["7220805"] = self.OnSubStart7220805
    }
end

function Quest72208:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7220801"] = self.OnSubFinish7220801,
        ["7220802"] = self.OnSubFinish7220802,
        ["7220803"] = self.OnSubFinish7220803,
        ["7220804"] = self.OnSubFinish7220804,
        ["7220806"] = self.OnSubFinish7220806,
        ["7220805"] = self.OnSubFinish7220805
    }
end

function Quest72208:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72208:Start()
    print("Start")
end

function Quest72208:OnDestroy()
    print("OnDestroy")
end

function Quest72208:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72208:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72208:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72208:NpcCreate(arg1, arg2, arg3)
    self:CreateQuestNpc(arg1, arg2, arg3)
end

function Quest72208:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72208:OnSubStart7220801(arg1)
    print("OnSubStart7220801")
end

function Quest72208:OnSubFinish7220801(arg1)
    print("OnSubFinish7220801")
    self:NarratorOnlyTask(datas.Reminder_Paimon, nil, "")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72208:OnSubStart7220802(arg1)
    print("OnSubStart7220802")
    self:EnablePlayerInput(false)
    self:CallDelay(1, function(arg1_2)
        arg1_2:NpcCreate(arg1, npcs.Npc20430Data.id, 1)
        arg1_2:CallDelay(0.5, function(arg1)
            arg1:EnablePlayerInput(true)
            arg1:RequestInteraction(npcs.Npc20430Data.alias)
        end)
    end)
end

function Quest72208:OnSubFinish7220802(arg1)
    print("OnSubFinish7220802")
    self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest72208:OnSubStart7220803(arg1)
    print("OnSubStart7220803")
    self:NpcCreate(arg1, npcs.Npc20430Data.id, 1)
end

function Quest72208:OnSubFinish7220803(arg1)
    print("OnSubFinish7220803")
end

function Quest72208:OnSubStart7220804(arg1)
    print("OnSubStart7220804")
    self:NpcCreate(arg1, npcs.Npc20430Data.id, 1)
end

function Quest72208:OnSubFinish7220804(arg1)
    print("OnSubFinish7220804")
end

function Quest72208:OnSubStart7220806(arg1)
    print("OnSubStart7220806")
end

function Quest72208:OnSubFinish7220806(arg1)
    print("OnSubFinish7220806")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20430Data.alias)
end

function Quest72208:OnSubStart7220805(arg1)
    print("OnSubStart7220805")
end

function Quest72208:OnSubFinish7220805(arg1)
    print("OnSubFinish7220805")
end

return Quest72208

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73260 = class("Quest73260", QuestActorProxy)
Quest73260.defaultAlias = "Quest73260"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73260:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73260:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7326001"] = self.OnSubStart7326001,
        ["7326002"] = self.OnSubStart7326002,
        ["7326003"] = self.OnSubStart7326003,
        ["7326004"] = self.OnSubStart7326004,
        ["7326005"] = self.OnSubStart7326005
    }
end

function Quest73260:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7326001"] = self.OnSubFinish7326001,
        ["7326002"] = self.OnSubFinish7326002,
        ["7326003"] = self.OnSubFinish7326003,
        ["7326004"] = self.OnSubFinish7326004,
        ["7326005"] = self.OnSubFinish7326005
    }
end

function Quest73260:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73260:Start()
    print("Start")
end

function Quest73260:OnDestroy()
    print("OnDestroy")
end

function Quest73260:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73260:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73260:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73260:OnSubStart7326001(arg1)
    print("OnSubStart7326001")
    self:CreateQuestNpc(arg1, npcs.Npc422102Data.id, 1)
end

function Quest73260:OnSubFinish7326001(arg1)
    print("OnSubFinish7326001")
end

function Quest73260:OnSubStart7326002(arg1)
    print("OnSubStart7326002")
    self:CallDelay(5, function(arg1)
        arg1:EnablePlayerInput(true)
    end)

    self:EnablePlayerInput(false)
    self:CountDownUIStart(10, 5, 3)
end

function Quest73260:OnSubFinish7326002(arg1)
    print("OnSubFinish7326002")
    self:ShowBlackScreen(0.5, 2, 0.5, nil, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.Narrator_732609901)
    end, nil, "", false, true)
end

function Quest73260:OnSubStart7326003(arg1)
    print("OnSubStart7326003")
end

function Quest73260:OnSubFinish7326003(arg1)
    print("OnSubFinish7326003")
    self:NarratorOnlyTaskByData(datas.Narrator_732609902)
end

function Quest73260:OnSubStart7326004(arg1)
    print("OnSubStart7326004")
end

function Quest73260:OnSubFinish7326004(arg1)
    print("OnSubFinish7326004")
end

function Quest73260:OnSubStart7326005(arg1)
    print("OnSubStart7326005")
end

function Quest73260:OnSubFinish7326005(arg1)
    print("OnSubFinish7326005")
    self:NarratorOnlyTaskByData(datas.Narrator_732609903)
end

return Quest73260

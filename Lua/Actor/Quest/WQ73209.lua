require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73209 = class("Quest73209", QuestActorProxy)
Quest73209.defaultAlias = "Quest73209"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73209:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73209:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7320908"] = self.OnSubStart7320908,
        ["7320907"] = self.OnSubStart7320907,
        ["7320901"] = self.OnSubStart7320901,
        ["7320902"] = self.OnSubStart7320902,
        ["7320903"] = self.OnSubStart7320903,
        ["7320905"] = self.OnSubStart7320905,
        ["7320904"] = self.OnSubStart7320904,
        ["7320906"] = self.OnSubStart7320906
    }
end

function Quest73209:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7320908"] = self.OnSubFinish7320908,
        ["7320907"] = self.OnSubFinish7320907,
        ["7320901"] = self.OnSubFinish7320901,
        ["7320902"] = self.OnSubFinish7320902,
        ["7320903"] = self.OnSubFinish7320903,
        ["7320905"] = self.OnSubFinish7320905,
        ["7320904"] = self.OnSubFinish7320904,
        ["7320906"] = self.OnSubFinish7320906
    }
end

function Quest73209:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73209:Start()
    print("Start")
end

function Quest73209:OnDestroy()
    print("OnDestroy")
end

function Quest73209:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73209:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73209:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73209:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73209:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("FinishSubQuest7320904")
        actorUtils.FinishQuestID(false, 7320904)
    end

    if arg1 == 2 then
        print("FinishSubQuest7320905")
        actorUtils.FinishQuestID(false, 7320905)
    end
end

function Quest73209:OnSubStart7320908(arg1)
    print("OnSubStart7320908")
    self:CreateQuestNpc(arg1, npcs.Npc4232Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4233Data.id, 2)
end

function Quest73209:OnSubFinish7320908(arg1)
    print("OnSubFinish7320908")
end

function Quest73209:OnSubStart7320907(arg1)
    print("OnSubStart7320907")
    self:CreateQuestNpc(arg1, npcs.Npc4232Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4233Data.id, 2)
end

function Quest73209:OnSubFinish7320907(arg1)
    print("OnSubFinish7320907")
end

function Quest73209:OnSubStart7320901(arg1)
    print("OnSubStart7320901")
    self:CreateQuestNpc(arg1, npcs.Npc4232Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4233Data.id, 2)
end

function Quest73209:OnSubFinish7320901(arg1)
    print("OnSubFinish7320901")
    self:SetNavigationByMainId(73209, true)
    self:ShowBlackScreen(0.3, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest73209:OnSubStart7320902(arg1)
    print("OnSubStart7320902")
end

function Quest73209:OnSubFinish7320902(arg1)
    print("OnSubFinish7320902")
end

function Quest73209:OnSubStart7320903(arg1)
    print("OnSubStart7320903")
    self:CreateQuestNpc(arg1, npcs.Npc4232Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4233Data.id, 2)
    self:RequestInteraction(npcs.Npc4232Data.alias)
end

function Quest73209:OnSubFinish7320903(arg1)
    print("OnSubFinish7320903")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4232Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4233Data.alias)
end

function Quest73209:OnSubStart7320905(arg1)
    print("OnSubStart7320905")
end

function Quest73209:OnSubFinish7320905(arg1)
    print("OnSubFinish7320905")
end

function Quest73209:OnSubStart7320904(arg1)
    print("OnSubStart7320904")
end

function Quest73209:OnSubFinish7320904(arg1)
    print("OnSubFinish7320904")
end

function Quest73209:OnSubStart7320906(arg1)
    print("OnSubStart7320906")
end

function Quest73209:OnSubFinish7320906(arg1)
    print("OnSubFinish7320906")
end

return Quest73209

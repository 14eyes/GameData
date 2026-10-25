require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71057 = class("Quest71057", QuestActorProxy)
Quest71057.defaultAlias = "Quest71057"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest71057:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest71057:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7105701"] = self.OnSubStart7105701,
        ["7105702"] = self.OnSubStart7105702,
        ["7105703"] = self.OnSubStart7105703,
        ["7105704"] = self.OnSubStart7105704,
        ["7105705"] = self.OnSubStart7105705,
        ["7105706"] = self.OnSubStart7105706,
        ["7105707"] = self.OnSubStart7105707,
        ["7105708"] = self.OnSubStart7105708,
        ["7105709"] = self.OnSubStart7105709
    }
end

function Quest71057:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7105701"] = self.OnSubFinish7105701,
        ["7105702"] = self.OnSubFinish7105702,
        ["7105703"] = self.OnSubFinish7105703,
        ["7105704"] = self.OnSubFinish7105704,
        ["7105705"] = self.OnSubFinish7105705,
        ["7105706"] = self.OnSubFinish7105706,
        ["7105707"] = self.OnSubFinish7105707,
        ["7105708"] = self.OnSubFinish7105708,
        ["7105709"] = self.OnSubFinish7105709
    }
end

function Quest71057:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71057:Start()
    print("Start")
end

function Quest71057:OnDestroy()
    print("OnDestroy")
end

function Quest71057:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71057:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71057:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71057:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest71057:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest71057:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest71057:OnSubStart7105701(arg1)
    print("OnSubStart7105701")
end

function Quest71057:OnSubFinish7105701(arg1)
    print("OnSubFinish7105701")
end

function Quest71057:OnSubStart7105702(arg1)
    print("OnSubStart7105702")
    self:ShowBlackScreen(0.2, 1, 0, function(arg1_2)
        arg1_2:NpcCreateWithActionSafeCall(arg1, npcs.Npc20534Data.id, 1)
    end, nil, nil, "", false, true)
end

function Quest71057:OnSubFinish7105702(arg1)
    print("OnSubFinish7105702")
    self:NpcDestroyWithBlackscreen(6, npcs.Npc20534Data.alias)
end

function Quest71057:OnSubStart7105703(arg1)
    print("OnSubStart7105703")
end

function Quest71057:OnSubFinish7105703(arg1)
    print("OnSubFinish7105703")
end

function Quest71057:OnSubStart7105704(arg1)
    print("OnSubStart7105704")
end

function Quest71057:OnSubFinish7105704(arg1)
    print("OnSubFinish7105704")
end

function Quest71057:OnSubStart7105705(arg1)
    print("OnSubStart7105705")
end

function Quest71057:OnSubFinish7105705(arg1)
    print("OnSubFinish7105705")
end

function Quest71057:OnSubStart7105706(arg1)
    print("OnSubStart7105706")
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20534Data.id, 1, npcs.Npc20534Data.alias)
end

function Quest71057:OnSubFinish7105706(arg1)
    print("OnSubFinish7105706")
    self:NpcDestroyWithBlackscreen(6, npcs.Npc20534Data.alias)
end

function Quest71057:OnSubStart7105707(arg1)
    print("OnSubStart7105707")
end

function Quest71057:OnSubFinish7105707(arg1)
    print("OnSubFinish7105707")
end

function Quest71057:OnSubStart7105708(arg1)
    print("OnSubStart7105708")
end

function Quest71057:OnSubFinish7105708(arg1)
    print("OnSubFinish7105708")
end

function Quest71057:OnSubStart7105709(arg1)
    print("OnSubStart7105709")
end

function Quest71057:OnSubFinish7105709(arg1)
    print("OnSubFinish7105709")
end

return Quest71057

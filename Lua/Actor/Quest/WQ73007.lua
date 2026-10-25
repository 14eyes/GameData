require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73007 = class("Quest73007", QuestActorProxy)
Quest73007.defaultAlias = "Quest73007"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest73007:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest73007:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7300701"] = self.OnSubStart7300701,
        ["7300702"] = self.OnSubStart7300702,
        ["7300703"] = self.OnSubStart7300703,
        ["7300704"] = self.OnSubStart7300704,
        ["7300705"] = self.OnSubStart7300705,
        ["7300706"] = self.OnSubStart7300706,
        ["7300707"] = self.OnSubStart7300707,
        ["7300708"] = self.OnSubStart7300708,
        ["7300709"] = self.OnSubStart7300709,
        ["7300710"] = self.OnSubStart7300710,
        ["7300711"] = self.OnSubStart7300711,
        ["7300712"] = self.OnSubStart7300712,
        ["7300713"] = self.OnSubStart7300713,
        ["7300714"] = self.OnSubStart7300714,
        ["7300715"] = self.OnSubStart7300715
    }
end

function Quest73007:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7300701"] = self.OnSubFinish7300701,
        ["7300702"] = self.OnSubFinish7300702,
        ["7300703"] = self.OnSubFinish7300703,
        ["7300704"] = self.OnSubFinish7300704,
        ["7300705"] = self.OnSubFinish7300705,
        ["7300706"] = self.OnSubFinish7300706,
        ["7300707"] = self.OnSubFinish7300707,
        ["7300708"] = self.OnSubFinish7300708,
        ["7300709"] = self.OnSubFinish7300709,
        ["7300710"] = self.OnSubFinish7300710,
        ["7300711"] = self.OnSubFinish7300711,
        ["7300712"] = self.OnSubFinish7300712,
        ["7300713"] = self.OnSubFinish7300713,
        ["7300714"] = self.OnSubFinish7300714,
        ["7300715"] = self.OnSubFinish7300715
    }
end

function Quest73007:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73007:Start()
    print("Start")
end

function Quest73007:OnDestroy()
    print("OnDestroy")
end

function Quest73007:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73007:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73007:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73007:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest73007:OnSubStart7300701(arg1)
    print("OnSubStart7300701")
end

function Quest73007:OnSubFinish7300701(arg1)
    print("OnSubFinish7300701")
end

function Quest73007:OnSubStart7300702(arg1)
    print("OnSubStart7300702")
end

function Quest73007:OnSubFinish7300702(arg1)
    print("OnSubFinish7300702")
end

function Quest73007:OnSubStart7300703(arg1)
    print("OnSubStart7300703")
    self:CreateQuestNpc(arg1, npcs.Npc20578Data.id, 1)
end

function Quest73007:OnSubFinish7300703(arg1)
    print("OnSubFinish7300703")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20578Data.alias)
end

function Quest73007:OnSubStart7300704(arg1)
    print("OnSubStart7300704")
    self:CreateQuestNpc(arg1, npcs.Npc20578Data.id, 1)
end

function Quest73007:OnSubFinish7300704(arg1)
    print("OnSubFinish7300704")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20578Data.alias)
end

function Quest73007:OnSubStart7300705(arg1)
    print("OnSubStart7300705")
    self:CreateQuestNpc(arg1, npcs.Npc20578Data.id, 1)
end

function Quest73007:OnSubFinish7300705(arg1)
    print("OnSubFinish7300705")
end

function Quest73007:OnSubStart7300706(arg1)
    print("OnSubStart7300706")
    self:CreateQuestNpc(arg1, npcs.Npc20578Data.id, 1)
end

function Quest73007:OnSubFinish7300706(arg1)
    print("OnSubFinish7300706")
end

function Quest73007:OnSubStart7300707(arg1)
    print("OnSubStart7300707")
    self:CreateQuestNpc(arg1, npcs.Npc20578Data.id, 1)
end

function Quest73007:OnSubFinish7300707(arg1)
    print("OnSubFinish7300707")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20578Data.alias)
end

function Quest73007:OnSubStart7300708(arg1)
    print("OnSubStart7300708")
end

function Quest73007:OnSubFinish7300708(arg1)
    print("OnSubFinish7300708")
end

function Quest73007:OnSubStart7300709(arg1)
    print("OnSubStart7300709")
    self:CreateQuestNpc(arg1, npcs.Npc20578Data.id, 1)
end

function Quest73007:OnSubFinish7300709(arg1)
    print("OnSubFinish7300709")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20578Data.alias)
end

function Quest73007:OnSubStart7300710(arg1)
    print("OnSubStart7300710")
end

function Quest73007:OnSubFinish7300710(arg1)
    print("OnSubFinish7300710")
end

function Quest73007:OnSubStart7300711(arg1)
    print("OnSubStart7300711")
    self:CreateQuestNpc(arg1, npcs.Npc20578Data.id, 1)
end

function Quest73007:OnSubFinish7300711(arg1)
    print("OnSubFinish7300711")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20578Data.alias)
end

function Quest73007:OnSubStart7300712(arg1)
    print("OnSubStart7300712")
end

function Quest73007:OnSubFinish7300712(arg1)
    print("OnSubFinish7300712")
end

function Quest73007:OnSubStart7300713(arg1)
    print("OnSubStart7300713")
end

function Quest73007:OnSubFinish7300713(arg1)
    print("OnSubFinish7300713")
end

function Quest73007:OnSubStart7300714(arg1)
    print("OnSubStart7300714")
    self:CreateQuestNpc(arg1, npcs.Npc20578Data.id, 1)
end

function Quest73007:OnSubFinish7300714(arg1)
    print("OnSubFinish7300714")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20578Data.alias)
end

function Quest73007:OnSubStart7300715(arg1)
    print("OnSubStart7300715")
    self:CreateQuestNpc(arg1, npcs.Npc20578Data.id, 1)
end

function Quest73007:OnSubFinish7300715(arg1)
    print("OnSubFinish7300715")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20578Data.alias)
end

return Quest73007

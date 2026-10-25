require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79067 = class("Quest79067", QuestActorProxy)
Quest79067.defaultAlias = "Quest79067"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest79067:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest79067:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7906710"] = self.OnSubStart7906710,
        ["7906714"] = self.OnSubStart7906714,
        ["7906719"] = self.OnSubStart7906719,
        ["7906701"] = self.OnSubStart7906701,
        ["7906702"] = self.OnSubStart7906702,
        ["7906704"] = self.OnSubStart7906704,
        ["7906715"] = self.OnSubStart7906715,
        ["7906705"] = self.OnSubStart7906705,
        ["7906716"] = self.OnSubStart7906716,
        ["7906703"] = self.OnSubStart7906703,
        ["7906706"] = self.OnSubStart7906706,
        ["7906717"] = self.OnSubStart7906717,
        ["7906718"] = self.OnSubStart7906718,
        ["7906707"] = self.OnSubStart7906707,
        ["7906712"] = self.OnSubStart7906712,
        ["7906708"] = self.OnSubStart7906708,
        ["7906713"] = self.OnSubStart7906713,
        ["7906709"] = self.OnSubStart7906709,
        ["7906711"] = self.OnSubStart7906711
    }
end

function Quest79067:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7906710"] = self.OnSubFinish7906710,
        ["7906714"] = self.OnSubFinish7906714,
        ["7906719"] = self.OnSubFinish7906719,
        ["7906701"] = self.OnSubFinish7906701,
        ["7906702"] = self.OnSubFinish7906702,
        ["7906704"] = self.OnSubFinish7906704,
        ["7906715"] = self.OnSubFinish7906715,
        ["7906705"] = self.OnSubFinish7906705,
        ["7906716"] = self.OnSubFinish7906716,
        ["7906703"] = self.OnSubFinish7906703,
        ["7906706"] = self.OnSubFinish7906706,
        ["7906717"] = self.OnSubFinish7906717,
        ["7906718"] = self.OnSubFinish7906718,
        ["7906707"] = self.OnSubFinish7906707,
        ["7906712"] = self.OnSubFinish7906712,
        ["7906708"] = self.OnSubFinish7906708,
        ["7906713"] = self.OnSubFinish7906713,
        ["7906709"] = self.OnSubFinish7906709,
        ["7906711"] = self.OnSubFinish7906711
    }
end

function Quest79067:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest79067:Start()
    print("Start")
end

function Quest79067:OnDestroy()
    print("OnDestroy")
end

function Quest79067:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79067:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79067:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79067:NpcDestroyWithBlackscreen(arg1, arg2)
    this:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        this:DestroyQuestNpcActor(arg2, arg1)
    end, nil, nil, "")
end

function Quest79067:NpcCreateWithNpcTrigger(arg1, arg2, arg3, arg4)
    this:CreateQuestNpcWithTrigger("Q" .. arg2 .. "N" .. arg1 .. "Trigger", arg2, arg1, arg3, arg4, 2)
end

function Quest79067:NpcDestroyWithDither(arg1, arg2)
    this:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    this:CallDelay(1, function(arg1_2)
        this:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest79067:OnSubStart7906710(arg1)
    print("OnSubStart7906710")
end

function Quest79067:OnSubFinish7906710(arg1)
    print("OnSubFinish7906710")
end

function Quest79067:OnSubStart7906714(arg1)
    print("OnSubStart7906714")
end

function Quest79067:OnSubFinish7906714(arg1)
    print("OnSubFinish7906714")
end

function Quest79067:OnSubStart7906719(arg1)
    print("OnSubStart7906719")
end

function Quest79067:OnSubFinish7906719(arg1)
    print("OnSubFinish7906719")
    this:QuestNarratorTask(datas.NarratorWithId1)
    self:SetNavigationByMainId(79067, true)
end

function Quest79067:OnSubStart7906701(arg1)
    print("OnSubStart7906701")
    this:CreateQuestNpc(arg1, npcs.Npc21466Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21470Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21471Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21472Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21467Data.id, 0, false, 0)
end

function Quest79067:OnSubFinish7906701(arg1)
    print("OnSubFinish7906701")
end

function Quest79067:OnSubStart7906702(arg1)
    print("OnSubStart7906702")
    this:CreateQuestNpc(arg1, npcs.Npc21466Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21470Data.id, 0, false, 0)
end

function Quest79067:OnSubFinish7906702(arg1)
    print("OnSubFinish7906702")
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21466Data.alias)
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21470Data.alias)
end

function Quest79067:OnSubStart7906704(arg1)
    print("OnSubStart7906704")
end

function Quest79067:OnSubFinish7906704(arg1)
    print("OnSubFinish7906704")
end

function Quest79067:OnSubStart7906715(arg1)
    print("OnSubStart7906715")
end

function Quest79067:OnSubFinish7906715(arg1)
    print("OnSubFinish7906715")
end

function Quest79067:OnSubStart7906705(arg1)
    print("OnSubStart7906705")
    this:CreateQuestNpc(arg1, npcs.Npc21466Data.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc21470Data.id, 7906705, 0, 20)
    this:CreateQuestNpc(arg1, npcs.Npc21479Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21480Data.id, 0, false, 0)
end

function Quest79067:OnSubFinish7906705(arg1)
    print("OnSubFinish7906705")
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21466Data.alias)
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21470Data.alias)
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21479Data.alias)
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21480Data.alias)
end

function Quest79067:OnSubStart7906716(arg1)
    print("OnSubStart7906716")
end

function Quest79067:OnSubFinish7906716(arg1)
    print("OnSubFinish7906716")
end

function Quest79067:OnSubStart7906703(arg1)
    print("OnSubStart7906703")
    this:NpcCreateWithNpcTrigger(npcs.Npc21466Data.id, 7906703, 0, 21)
    this:CreateQuestNpc(arg1, npcs.Npc21470Data.id, 0, false, 0)
end

function Quest79067:OnSubFinish7906703(arg1)
    print("OnSubFinish7906703")
    this:NpcDestroyWithDither(npcs.Npc21466Data.alias, 100)
    this:NpcDestroyWithDither(npcs.Npc21470Data.alias, 100)
end

function Quest79067:OnSubStart7906706(arg1)
    print("OnSubStart7906706")
end

function Quest79067:OnSubFinish7906706(arg1)
    print("OnSubFinish7906706")
end

function Quest79067:OnSubStart7906717(arg1)
    print("OnSubStart7906717")
    this:NpcCreateWithNpcTrigger(npcs.Npc21466Data.id, 7906717, 0, 15)
    this:NpcCreateWithNpcTrigger(npcs.Npc21470Data.id, 7906717, 0, 15)
end

function Quest79067:OnSubFinish7906717(arg1)
    print("OnSubFinish7906717")
    this:NpcDestroyWithDither(npcs.Npc21466Data.alias, 100)
    this:NpcDestroyWithDither(npcs.Npc21470Data.alias, 100)
end

function Quest79067:OnSubStart7906718(arg1)
    print("OnSubStart7906718")
end

function Quest79067:OnSubFinish7906718(arg1)
    print("OnSubFinish7906718")
end

function Quest79067:OnSubStart7906707(arg1)
    print("OnSubStart7906707")
    this:CreateQuestNpc(arg1, npcs.Npc21466Data.id, 0, false, 0)
    this:CreateQuestNpc(arg1, npcs.Npc21470Data.id, 0, false, 0)
end

function Quest79067:OnSubFinish7906707(arg1)
    print("OnSubFinish7906707")
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21466Data.alias)
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21470Data.alias)
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21471Data.alias)
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21472Data.alias)
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21467Data.alias)
end

function Quest79067:OnSubStart7906712(arg1)
    print("OnSubStart7906712")
    this:PlayCutsceneIndex(7906712, function(arg1)
        actorUtils.FinishQuestID(false, 7906712)
    end, nil, nil, false)
end

function Quest79067:OnSubFinish7906712(arg1)
    print("OnSubFinish7906712")
end

function Quest79067:OnSubStart7906708(arg1)
    print("OnSubStart7906708")
end

function Quest79067:OnSubFinish7906708(arg1)
    print("OnSubFinish7906708")
end

function Quest79067:OnSubStart7906713(arg1)
    print("OnSubStart7906713")
end

function Quest79067:OnSubFinish7906713(arg1)
    print("OnSubFinish7906713")
end

function Quest79067:OnSubStart7906709(arg1)
    print("OnSubStart7906709")
    this:CreateQuestNpc(arg1, npcs.Npc21466Data.id, 0, false, 0)
    this:NpcCreateWithNpcTrigger(npcs.Npc21470Data.id, 7906709, 0, 10)
end

function Quest79067:OnSubFinish7906709(arg1)
    print("OnSubFinish7906709")
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21466Data.alias)
    this:NpcDestroyWithBlackscreen(100, npcs.Npc21470Data.alias)
end

function Quest79067:OnSubStart7906711(arg1)
    print("OnSubStart7906711")
end

function Quest79067:OnSubFinish7906711(arg1)
    print("OnSubFinish7906711")
end

return Quest79067

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71037 = class("Quest71037", QuestActorProxy)
Quest71037.defaultAlias = "Quest71037"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest71037:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest71037:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7103701"] = self.OnSubStart7103701,
        ["7103702"] = self.OnSubStart7103702,
        ["7103703"] = self.OnSubStart7103703,
        ["7103704"] = self.OnSubStart7103704,
        ["7103723"] = self.OnSubStart7103723,
        ["7103724"] = self.OnSubStart7103724,
        ["7103705"] = self.OnSubStart7103705,
        ["7103706"] = self.OnSubStart7103706,
        ["7103707"] = self.OnSubStart7103707,
        ["7103708"] = self.OnSubStart7103708,
        ["7103721"] = self.OnSubStart7103721,
        ["7103709"] = self.OnSubStart7103709,
        ["7103725"] = self.OnSubStart7103725,
        ["7103710"] = self.OnSubStart7103710,
        ["7103711"] = self.OnSubStart7103711,
        ["7103712"] = self.OnSubStart7103712,
        ["7103713"] = self.OnSubStart7103713,
        ["7103714"] = self.OnSubStart7103714,
        ["7103719"] = self.OnSubStart7103719,
        ["7103720"] = self.OnSubStart7103720,
        ["7103722"] = self.OnSubStart7103722,
        ["7103715"] = self.OnSubStart7103715,
        ["7103716"] = self.OnSubStart7103716
    }
end

function Quest71037:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7103701"] = self.OnSubFinish7103701,
        ["7103702"] = self.OnSubFinish7103702,
        ["7103703"] = self.OnSubFinish7103703,
        ["7103704"] = self.OnSubFinish7103704,
        ["7103723"] = self.OnSubFinish7103723,
        ["7103724"] = self.OnSubFinish7103724,
        ["7103705"] = self.OnSubFinish7103705,
        ["7103706"] = self.OnSubFinish7103706,
        ["7103707"] = self.OnSubFinish7103707,
        ["7103708"] = self.OnSubFinish7103708,
        ["7103721"] = self.OnSubFinish7103721,
        ["7103709"] = self.OnSubFinish7103709,
        ["7103725"] = self.OnSubFinish7103725,
        ["7103710"] = self.OnSubFinish7103710,
        ["7103711"] = self.OnSubFinish7103711,
        ["7103712"] = self.OnSubFinish7103712,
        ["7103713"] = self.OnSubFinish7103713,
        ["7103714"] = self.OnSubFinish7103714,
        ["7103719"] = self.OnSubFinish7103719,
        ["7103720"] = self.OnSubFinish7103720,
        ["7103722"] = self.OnSubFinish7103722,
        ["7103715"] = self.OnSubFinish7103715,
        ["7103716"] = self.OnSubFinish7103716
    }
end

function Quest71037:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest71037:Start()
    print("Start")
end

function Quest71037:OnDestroy()
    print("OnDestroy")
end

function Quest71037:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71037:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71037:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest71037:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest71037:NpcCreateWithBlackscreenInteraction(arg1, arg2, arg3, arg4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
        arg1_2:RequestInteraction(arg4)
    end)
end

function Quest71037:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest71037:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest71037:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("Finish7103723")
        self:FinishQuestID(false, 7103723)
    elseif arg1 == 2 then
        print("Finish7103724")
        self:FinishQuestID(false, 7103724)
    end
end

function Quest71037:OnSubStart7103701(arg1)
    print("OnSubStart7103701")
end

function Quest71037:OnSubFinish7103701(arg1)
    print("OnSubFinish7103701")
end

function Quest71037:OnSubStart7103702(arg1)
    print("OnSubStart7103702")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20523Data.id, 1)
    self:LevelLoadFinishSafeCall(function(arg1_2)
        arg1_2:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20580Data.id, 2, npcs.Npc20580Data.alias)
    end)
end

function Quest71037:OnSubFinish7103702(arg1)
    print("OnSubFinish7103702")
    self:NpcDestroy(npcs.Npc20523Data.alias, 6)
    self:NpcDestroy(npcs.Npc20580Data.alias, 6)
end

function Quest71037:OnSubStart7103703(arg1)
    print("OnSubStart7103703")
end

function Quest71037:OnSubFinish7103703(arg1)
    print("OnSubFinish7103703")
end

function Quest71037:OnSubStart7103704(arg1)
    print("OnSubStart7103704")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20523Data.id, 1)
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20580Data.id, 2, npcs.Npc20580Data.alias)
    self:TransmitPlayerById(arg1, 3)
end

function Quest71037:OnSubFinish7103704(arg1)
    print("OnSubFinish7103704")
    self:ShowBlackScreen(0, 2, 0.5, function(arg1)
        arg1:NpcDestroy(npcs.Npc20523Data.alias, 6)
    end, nil, nil, "", false, true)
end

function Quest71037:OnSubStart7103723(arg1)
    print("OnSubStart7103723")
end

function Quest71037:OnSubFinish7103723(arg1)
    print("OnSubFinish7103723")
end

function Quest71037:OnSubStart7103724(arg1)
    print("OnSubStart7103724")
end

function Quest71037:OnSubFinish7103724(arg1)
    print("OnSubFinish7103724")
end

function Quest71037:OnSubStart7103705(arg1)
    print("OnSubStart7103705")
end

function Quest71037:OnSubFinish7103705(arg1)
    print("OnSubFinish7103705")
end

function Quest71037:OnSubStart7103706(arg1)
    print("OnSubStart7103706")
end

function Quest71037:OnSubFinish7103706(arg1)
    print("OnSubFinish7103706")
end

function Quest71037:OnSubStart7103707(arg1)
    print("OnSubStart7103707")
end

function Quest71037:OnSubFinish7103707(arg1)
    print("OnSubFinish7103707")
end

function Quest71037:OnSubStart7103708(arg1)
    print("OnSubStart7103708")
end

function Quest71037:OnSubFinish7103708(arg1)
    print("OnSubFinish7103708")
end

function Quest71037:OnSubStart7103721(arg1)
    print("OnSubStart7103721")
end

function Quest71037:OnSubFinish7103721(arg1)
    print("OnSubFinish7103721")
end

function Quest71037:OnSubStart7103709(arg1)
    print("OnSubStart7103709")
    self:CreateQuestNpc(arg1, npcs.Npc20580Data.id, 1)
end

function Quest71037:OnSubFinish7103709(arg1)
    print("OnSubFinish7103709")
    self:NpcDestroyWithBlackscreen(6, npcs.Npc20580Data.alias)
end

function Quest71037:OnSubStart7103725(arg1)
    print("OnSubStart7103725")
end

function Quest71037:OnSubFinish7103725(arg1)
    print("OnSubFinish7103725")
end

function Quest71037:OnSubStart7103710(arg1)
    print("OnSubStart7103710")
end

function Quest71037:OnSubFinish7103710(arg1)
    print("OnSubFinish7103710")
end

function Quest71037:OnSubStart7103711(arg1)
    print("OnSubStart7103711")
    self:TransmitPlayerByQuestId(7103711, 4)
    self:NpcCreateWithBlackscreenInteraction(arg1, npcs.Npc20580Data.id, 1, npcs.Npc20580Data.alias)
end

function Quest71037:OnSubFinish7103711(arg1)
    print("OnSubFinish7103711")
    self:ShowBlackScreen(0.2, 2, 0.2, function(arg1)
        arg1:DestroyQuestNpcActor(npcs.Npc20580Data.alias, 6)
    end, nil, nil, "", false, true)
end

function Quest71037:OnSubStart7103712(arg1)
    print("OnSubStart7103712")
    self:CreateQuestNpc(arg1, npcs.Npc20523Data.id, 1)
end

function Quest71037:OnSubFinish7103712(arg1)
    print("OnSubFinish7103712")
end

function Quest71037:OnSubStart7103713(arg1)
    print("OnSubStart7103713")
end

function Quest71037:OnSubFinish7103713(arg1)
    print("OnSubFinish7103713")
    self:NpcDestroyWithBlackscreen(6, npcs.Npc20523Data.alias)
end

function Quest71037:OnSubStart7103714(arg1)
    print("OnSubStart7103714")
end

function Quest71037:OnSubFinish7103714(arg1)
    print("OnSubFinish7103714")
end

function Quest71037:OnSubStart7103719(arg1)
    print("OnSubStart7103719")
end

function Quest71037:OnSubFinish7103719(arg1)
    print("OnSubFinish7103719")
end

function Quest71037:OnSubStart7103720(arg1)
    print("OnSubStart7103720")
end

function Quest71037:OnSubFinish7103720(arg1)
    print("OnSubFinish7103720")
end

function Quest71037:OnSubStart7103722(arg1)
    print("OnSubStart7103722")
end

function Quest71037:OnSubFinish7103722(arg1)
    print("OnSubFinish7103722")
end

function Quest71037:OnSubStart7103715(arg1)
    print("OnSubStart7103715")
end

function Quest71037:OnSubFinish7103715(arg1)
    print("OnSubFinish7103715")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    self:TransmitPlayerById(arg1, 2)
end

function Quest71037:OnSubStart7103716(arg1)
    print("OnSubStart7103716")
end

function Quest71037:OnSubFinish7103716(arg1)
    print("OnSubFinish7103716")
end

return Quest71037

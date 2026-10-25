require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73077 = class("Quest73077", QuestActorProxy)
Quest73077.defaultAlias = "Quest73077"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73077:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73077:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7307701"] = self.OnSubStart7307701,
        ["7307704"] = self.OnSubStart7307704,
        ["7307705"] = self.OnSubStart7307705,
        ["7307706"] = self.OnSubStart7307706,
        ["7307707"] = self.OnSubStart7307707,
        ["7307708"] = self.OnSubStart7307708,
        ["7307709"] = self.OnSubStart7307709,
        ["7307710"] = self.OnSubStart7307710,
        ["7307711"] = self.OnSubStart7307711,
        ["7307712"] = self.OnSubStart7307712,
        ["7307713"] = self.OnSubStart7307713,
        ["7307714"] = self.OnSubStart7307714,
        ["7307715"] = self.OnSubStart7307715,
        ["7307716"] = self.OnSubStart7307716,
        ["7307717"] = self.OnSubStart7307717,
        ["7307718"] = self.OnSubStart7307718,
        ["7307719"] = self.OnSubStart7307719,
        ["7307720"] = self.OnSubStart7307720,
        ["7307721"] = self.OnSubStart7307721,
        ["7307723"] = self.OnSubStart7307723,
        ["7307724"] = self.OnSubStart7307724,
        ["7307725"] = self.OnSubStart7307725,
        ["7307728"] = self.OnSubStart7307728,
        ["7307729"] = self.OnSubStart7307729,
        ["7307730"] = self.OnSubStart7307730,
        ["7307731"] = self.OnSubStart7307731,
        ["7307732"] = self.OnSubStart7307732,
        ["7307722"] = self.OnSubStart7307722,
        ["7307702"] = self.OnSubStart7307702,
        ["7307703"] = self.OnSubStart7307703,
        ["7307733"] = self.OnSubStart7307733,
        ["7307726"] = self.OnSubStart7307726,
        ["7307727"] = self.OnSubStart7307727
    }
end

function Quest73077:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7307701"] = self.OnSubFinish7307701,
        ["7307704"] = self.OnSubFinish7307704,
        ["7307705"] = self.OnSubFinish7307705,
        ["7307706"] = self.OnSubFinish7307706,
        ["7307707"] = self.OnSubFinish7307707,
        ["7307708"] = self.OnSubFinish7307708,
        ["7307709"] = self.OnSubFinish7307709,
        ["7307710"] = self.OnSubFinish7307710,
        ["7307711"] = self.OnSubFinish7307711,
        ["7307712"] = self.OnSubFinish7307712,
        ["7307713"] = self.OnSubFinish7307713,
        ["7307714"] = self.OnSubFinish7307714,
        ["7307715"] = self.OnSubFinish7307715,
        ["7307716"] = self.OnSubFinish7307716,
        ["7307717"] = self.OnSubFinish7307717,
        ["7307718"] = self.OnSubFinish7307718,
        ["7307719"] = self.OnSubFinish7307719,
        ["7307720"] = self.OnSubFinish7307720,
        ["7307721"] = self.OnSubFinish7307721,
        ["7307723"] = self.OnSubFinish7307723,
        ["7307724"] = self.OnSubFinish7307724,
        ["7307725"] = self.OnSubFinish7307725,
        ["7307728"] = self.OnSubFinish7307728,
        ["7307729"] = self.OnSubFinish7307729,
        ["7307730"] = self.OnSubFinish7307730,
        ["7307731"] = self.OnSubFinish7307731,
        ["7307732"] = self.OnSubFinish7307732,
        ["7307722"] = self.OnSubFinish7307722,
        ["7307702"] = self.OnSubFinish7307702,
        ["7307703"] = self.OnSubFinish7307703,
        ["7307733"] = self.OnSubFinish7307733,
        ["7307726"] = self.OnSubFinish7307726,
        ["7307727"] = self.OnSubFinish7307727
    }
end

function Quest73077:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73077:Start()
    print("Start")
end

function Quest73077:OnDestroy()
    print("OnDestroy")
end

function Quest73077:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73077:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73077:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest73077:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest73077:OnSubStart7307701(arg1)
    print("OnSubStart7307701")
end

function Quest73077:OnSubFinish7307701(arg1)
    print("OnSubFinish7307701")
end

function Quest73077:OnSubStart7307704(arg1)
    print("OnSubStart7307704")
end

function Quest73077:OnSubFinish7307704(arg1)
    print("OnSubFinish7307704")
end

function Quest73077:OnSubStart7307705(arg1)
    print("OnSubStart7307705")
end

function Quest73077:OnSubFinish7307705(arg1)
    print("OnSubFinish7307705")
end

function Quest73077:OnSubStart7307706(arg1)
    print("OnSubStart7307706")
end

function Quest73077:OnSubFinish7307706(arg1)
    print("OnSubFinish7307706")
end

function Quest73077:OnSubStart7307707(arg1)
    print("OnSubStart7307707")
end

function Quest73077:OnSubFinish7307707(arg1)
    print("OnSubFinish7307707")
end

function Quest73077:OnSubStart7307708(arg1)
    print("OnSubStart7307708")
end

function Quest73077:OnSubFinish7307708(arg1)
    print("OnSubFinish7307708")
end

function Quest73077:OnSubStart7307709(arg1)
    print("OnSubStart7307709")
end

function Quest73077:OnSubFinish7307709(arg1)
    print("OnSubFinish7307709")
end

function Quest73077:OnSubStart7307710(arg1)
    print("OnSubStart7307710")
end

function Quest73077:OnSubFinish7307710(arg1)
    print("OnSubFinish7307710")
end

function Quest73077:OnSubStart7307711(arg1)
    print("OnSubStart7307711")
end

function Quest73077:OnSubFinish7307711(arg1)
    print("OnSubFinish7307711")
end

function Quest73077:OnSubStart7307712(arg1)
    print("OnSubStart7307712")
end

function Quest73077:OnSubFinish7307712(arg1)
    print("OnSubFinish7307712")
end

function Quest73077:OnSubStart7307713(arg1)
    print("OnSubStart7307713")
end

function Quest73077:OnSubFinish7307713(arg1)
    print("OnSubFinish7307713")
end

function Quest73077:OnSubStart7307714(arg1)
    print("OnSubStart7307714")
end

function Quest73077:OnSubFinish7307714(arg1)
    print("OnSubFinish7307714")
end

function Quest73077:OnSubStart7307715(arg1)
    print("OnSubStart7307715")
end

function Quest73077:OnSubFinish7307715(arg1)
    print("OnSubFinish7307715")
end

function Quest73077:OnSubStart7307716(arg1)
    print("OnSubStart7307716")
end

function Quest73077:OnSubFinish7307716(arg1)
    print("OnSubFinish7307716")
end

function Quest73077:OnSubStart7307717(arg1)
    print("OnSubStart7307717")
end

function Quest73077:OnSubFinish7307717(arg1)
    print("OnSubFinish7307717")
end

function Quest73077:OnSubStart7307718(arg1)
    print("OnSubStart7307718")
end

function Quest73077:OnSubFinish7307718(arg1)
    print("OnSubFinish7307718")
end

function Quest73077:OnSubStart7307719(arg1)
    print("OnSubStart7307719")
end

function Quest73077:OnSubFinish7307719(arg1)
    print("OnSubFinish7307719")
end

function Quest73077:OnSubStart7307720(arg1)
    print("OnSubStart7307720")
end

function Quest73077:OnSubFinish7307720(arg1)
    print("OnSubFinish7307720")
end

function Quest73077:OnSubStart7307721(arg1)
    print("OnSubStart7307721")
    self:CreateQuestNpc(arg1, npcs.Npc4225Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4226Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc4227Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc4228Data.id, 4)
end

function Quest73077:OnSubFinish7307721(arg1)
    print("OnSubFinish7307721")
end

function Quest73077:OnSubStart7307723(arg1)
    print("OnSubStart7307723")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc4225Data.id, 1)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc4226Data.id, 2)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc4227Data.id, 3)
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc4228Data.id, 4)
    actorMgr:CreateActorWithPos("Q7307723Trigger", "Actor/Gadget/Q7307723Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "wq7307723_trg").pos, sceneData:GetDummyPoint(3, "wq7307723_trg").rot, true, false, 3)
end

function Quest73077:OnSubFinish7307723(arg1)
    print("OnSubFinish7307723")
end

function Quest73077:OnSubStart7307724(arg1)
    print("OnSubStart7307724")
    self:CreateQuestNpc(arg1, npcs.Npc4225Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4226Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc4227Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc4228Data.id, 4)
end

function Quest73077:OnSubFinish7307724(arg1)
    print("OnSubFinish7307724")
end

function Quest73077:OnSubStart7307725(arg1)
    print("OnSubStart7307725")
    self:CreateQuestNpc(arg1, npcs.Npc4225Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4226Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc4227Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc4228Data.id, 4)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:RequestInteraction(npcs.Npc4225Data.alias)
    end, nil, nil, "", false, true)
end

function Quest73077:OnSubFinish7307725(arg1)
    print("OnSubFinish7307725")
    self:SafeDestroyQuestNpc(npcs.Npc4225Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4226Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4227Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4228Data.alias, 3)
end

function Quest73077:OnSubStart7307728(arg1)
    print("OnSubStart7307728")
end

function Quest73077:OnSubFinish7307728(arg1)
    print("OnSubFinish7307728")
end

function Quest73077:OnSubStart7307729(arg1)
    print("OnSubStart7307729")
end

function Quest73077:OnSubFinish7307729(arg1)
    print("OnSubFinish7307729")
end

function Quest73077:OnSubStart7307730(arg1)
    print("OnSubStart7307730")
end

function Quest73077:OnSubFinish7307730(arg1)
    print("OnSubFinish7307730")
end

function Quest73077:OnSubStart7307731(arg1)
    print("OnSubStart7307731")
end

function Quest73077:OnSubFinish7307731(arg1)
    print("OnSubFinish7307731")
end

function Quest73077:OnSubStart7307732(arg1)
    print("OnSubStart7307732")
end

function Quest73077:OnSubFinish7307732(arg1)
    print("OnSubFinish7307732")
end

function Quest73077:OnSubStart7307722(arg1)
    print("OnSubStart7307722")
end

function Quest73077:OnSubFinish7307722(arg1)
    print("OnSubFinish7307722")
end

function Quest73077:OnSubStart7307702(arg1)
    print("OnSubStart7307702")
end

function Quest73077:OnSubFinish7307702(arg1)
    print("OnSubFinish7307702")
end

function Quest73077:OnSubStart7307703(arg1)
    print("OnSubStart7307703")
end

function Quest73077:OnSubFinish7307703(arg1)
    print("OnSubFinish7307703")
end

function Quest73077:OnSubStart7307733(arg1)
    print("OnSubStart7307733")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcById(7307733, 4225, 1)
        arg1:RequestInteraction(npcs.Npc4225Data.alias)
    end, nil, nil, "", false, true)
end

function Quest73077:OnSubFinish7307733(arg1)
    print("OnSubFinish7307733")
end

function Quest73077:OnSubStart7307726(arg1)
    print("OnSubStart7307726")
end

function Quest73077:OnSubFinish7307726(arg1)
    print("OnSubFinish7307726")
    self:NarratorOnlyTask(datas.NarratorTable_paim, nil, "")
end

function Quest73077:OnSubStart7307727(arg1)
    print("OnSubStart7307727")
end

function Quest73077:OnSubFinish7307727(arg1)
    print("OnSubFinish7307727")
end

return Quest73077

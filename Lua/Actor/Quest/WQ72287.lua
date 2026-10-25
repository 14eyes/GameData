require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72287 = class("Quest72287", QuestActorProxy)
Quest72287.defaultAlias = "Quest72287"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest72287:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest72287:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7228727"] = self.OnSubStart7228727,
        ["7228701"] = self.OnSubStart7228701,
        ["7228702"] = self.OnSubStart7228702,
        ["7228728"] = self.OnSubStart7228728,
        ["7228723"] = self.OnSubStart7228723,
        ["7228703"] = self.OnSubStart7228703,
        ["7228704"] = self.OnSubStart7228704,
        ["7228725"] = self.OnSubStart7228725,
        ["7228705"] = self.OnSubStart7228705,
        ["7228729"] = self.OnSubStart7228729,
        ["7228706"] = self.OnSubStart7228706,
        ["7228726"] = self.OnSubStart7228726,
        ["7228707"] = self.OnSubStart7228707,
        ["7228709"] = self.OnSubStart7228709,
        ["7228710"] = self.OnSubStart7228710,
        ["7228711"] = self.OnSubStart7228711,
        ["7228712"] = self.OnSubStart7228712,
        ["7228713"] = self.OnSubStart7228713,
        ["7228714"] = self.OnSubStart7228714,
        ["7228715"] = self.OnSubStart7228715,
        ["7228708"] = self.OnSubStart7228708,
        ["7228716"] = self.OnSubStart7228716,
        ["7228717"] = self.OnSubStart7228717,
        ["7228718"] = self.OnSubStart7228718,
        ["7228719"] = self.OnSubStart7228719,
        ["7228720"] = self.OnSubStart7228720,
        ["7228721"] = self.OnSubStart7228721,
        ["7228722"] = self.OnSubStart7228722,
        ["7228724"] = self.OnSubStart7228724
    }
end

function Quest72287:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7228727"] = self.OnSubFinish7228727,
        ["7228701"] = self.OnSubFinish7228701,
        ["7228702"] = self.OnSubFinish7228702,
        ["7228728"] = self.OnSubFinish7228728,
        ["7228723"] = self.OnSubFinish7228723,
        ["7228703"] = self.OnSubFinish7228703,
        ["7228704"] = self.OnSubFinish7228704,
        ["7228725"] = self.OnSubFinish7228725,
        ["7228705"] = self.OnSubFinish7228705,
        ["7228729"] = self.OnSubFinish7228729,
        ["7228706"] = self.OnSubFinish7228706,
        ["7228726"] = self.OnSubFinish7228726,
        ["7228707"] = self.OnSubFinish7228707,
        ["7228709"] = self.OnSubFinish7228709,
        ["7228710"] = self.OnSubFinish7228710,
        ["7228711"] = self.OnSubFinish7228711,
        ["7228712"] = self.OnSubFinish7228712,
        ["7228713"] = self.OnSubFinish7228713,
        ["7228714"] = self.OnSubFinish7228714,
        ["7228715"] = self.OnSubFinish7228715,
        ["7228708"] = self.OnSubFinish7228708,
        ["7228716"] = self.OnSubFinish7228716,
        ["7228717"] = self.OnSubFinish7228717,
        ["7228718"] = self.OnSubFinish7228718,
        ["7228719"] = self.OnSubFinish7228719,
        ["7228720"] = self.OnSubFinish7228720,
        ["7228721"] = self.OnSubFinish7228721,
        ["7228722"] = self.OnSubFinish7228722,
        ["7228724"] = self.OnSubFinish7228724
    }
end

function Quest72287:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72287:Start()
    print("Start")
end

function Quest72287:OnDestroy()
    print("OnDestroy")
end

function Quest72287:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72287:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72287:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72287:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest72287:NpcCreateWithBlackscreen(arg1, arg2, arg3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest72287:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72287:NpcCreateWithActionSafeCall(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, arg2, arg3)
    end)
end

function Quest72287:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:ShowReadingDialog(101765)
    elseif arg1 == 2 then
        self:ShowReadingDialog(101780)
    elseif arg1 == 3 then
        self:ShowReadingDialog(101781)
    elseif arg1 == 701 then
        actorUtils.FinishQuestID(false, 7228706)
    elseif arg1 == 702 then
        actorUtils.FinishQuestID(true, 7228706)
    elseif arg1 == 1901 then
        actorUtils.FinishQuestID(false, 7228719)
    elseif arg1 == 1902 then
        actorUtils.FinishQuestID(true, 7228719)
    elseif arg1 == 2101 then
        actorUtils.FinishQuestID(false, 7228721)
    elseif arg1 == 2102 then
        actorUtils.FinishQuestID(true, 7228721)
    elseif arg1 == 26 then
        actorUtils.FinishQuestID(false, 7228726)
    end
end

function Quest72287:OnSubStart7228727(arg1)
    print("OnSubStart7228727")
    actorUtils.FinishQuestID(false, 7228727)
end

function Quest72287:OnSubFinish7228727(arg1)
    print("OnSubFinish7228727")
end

function Quest72287:OnSubStart7228701(arg1)
    print("OnSubStart7228701")
end

function Quest72287:OnSubFinish7228701(arg1)
    print("OnSubFinish7228701")
end

function Quest72287:OnSubStart7228702(arg1)
    print("OnSubStart7228702")
end

function Quest72287:OnSubFinish7228702(arg1)
    print("OnSubFinish7228702")
end

function Quest72287:OnSubStart7228728(arg1)
    print("OnSubStart7228728")
end

function Quest72287:OnSubFinish7228728(arg1)
    print("OnSubFinish7228728")
end

function Quest72287:OnSubStart7228723(arg1)
    print("OnSubStart7228723")
end

function Quest72287:OnSubFinish7228723(arg1)
    print("OnSubFinish7228723")
    self:DestroyQuestNpcActor(npcs.Npc3102Data.alias, 3)
    self:DestroyQuestNpcActor(npcs.Npc3073Data.alias, 3)
end

function Quest72287:OnSubStart7228703(arg1)
    print("OnSubStart7228703")
    self:CreateQuestNpc(arg1, npcs.Npc3162Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20625Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20626Data.id, 3)
    self:DailyNpcSafeHideSelf(npcs.Npc3102Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3073Data.alias, 1, true)
end

function Quest72287:OnSubFinish7228703(arg1)
    print("OnSubFinish7228703")
end

function Quest72287:OnSubStart7228704(arg1)
    print("OnSubStart7228704")
    self:DailyNpcSafeHideSelf(npcs.Npc3102Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3073Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7228704Trigger", "Actor/Gadget/Q7228704Trigger", 70900002, 0, sceneData:GetDummyPoint(1060, "7228704_trigger").pos, sceneData:GetDummyPoint(1060, "7228704_trigger").rot, true, false, 1060)
end

function Quest72287:OnSubFinish7228704(arg1)
    print("OnSubFinish7228704")
    self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
end

function Quest72287:OnSubStart7228725(arg1)
    print("OnSubStart7228725")
end

function Quest72287:OnSubFinish7228725(arg1)
    print("OnSubFinish7228725")
end

function Quest72287:OnSubStart7228705(arg1)
    print("OnSubStart7228705")
    self:DailyNpcSafeHideSelf(npcs.Npc3102Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3073Data.alias, 1, true)
    self:ActionSafeCall(function(arg1)
        arg1:CallDelay(0.5, function(arg1)
            arg1:CreateQuestNpcById(7228705, npcs.Npc20625Data.id, 1)
            arg1:CreateQuestNpcById(7228705, npcs.Npc20626Data.id, 2)
        end)
    end)
end

function Quest72287:OnSubFinish7228705(arg1)
    print("OnSubFinish7228705")
    self:SafeDestroyQuestNpc(npcs.Npc20625Data.alias, 1060)
    self:SafeDestroyQuestNpc(npcs.Npc20626Data.alias, 1060)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcById(7228705, npcs.Npc20718Data.id, 3)
        arg1:CreateQuestNpcById(7228705, npcs.Npc20719Data.id, 4)
        arg1:GetQuestNpcActor(npcs.Npc20718Data.alias, 72287)
        arg1:GetQuestNpcActor(npcs.Npc20718Data.alias):SitOnChair(0)
        arg1:GetQuestNpcActor(npcs.Npc20719Data.alias, 72287)
        arg1:GetQuestNpcActor(npcs.Npc20719Data.alias):SitOnChair(0)
        arg1:RequestInteraction(npcs.Npc20718Data.alias)
    end, nil, nil, "", false, true)
end

function Quest72287:OnSubStart7228729(arg1)
    print("OnSubStart7228729")
    self:CallDelay(1, function(arg1)
        actorUtils.FinishQuestID(false, 7228729)
    end)
end

function Quest72287:OnSubFinish7228729(arg1)
    print("OnSubFinish7228729")
end

function Quest72287:OnSubStart7228706(arg1)
    print("OnSubStart7228706")
    self:DailyNpcSafeHideSelf(npcs.Npc3102Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3073Data.alias, 1, true)
end

function Quest72287:OnSubFinish7228706(arg1)
    print("OnSubFinish7228706")
    self:NpcDestroyWithBlackscreen(1060, npcs.Npc20718Data.alias)
    self:NpcDestroyWithBlackscreen(1060, npcs.Npc20719Data.alias)
end

function Quest72287:OnSubStart7228726(arg1)
    print("OnSubStart7228726")
end

function Quest72287:OnSubFinish7228726(arg1)
    print("OnSubFinish7228726")
end

function Quest72287:OnSubStart7228707(arg1)
    print("OnSubStart7228707")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20625Data.id, 2)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20626Data.id, 3)
    self:DailyNpcSafeHideSelf(npcs.Npc3102Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3073Data.alias, 1, true)
    self:RequestInteraction(npcs.Npc3162Data.alias)
end

function Quest72287:OnSubFinish7228707(arg1)
    print("OnSubFinish7228707")
    self:NpcDestroyWithBlackscreen(1060, npcs.Npc3162Data.alias)
    self:NpcDestroyWithBlackscreen(1060, npcs.Npc20625Data.alias)
    self:NpcDestroyWithBlackscreen(1060, npcs.Npc20626Data.alias)
end

function Quest72287:OnSubStart7228709(arg1)
    print("OnSubStart7228709")
    self:DailyNpcSafeHideSelf(npcs.Npc3102Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3073Data.alias, 1, true)
end

function Quest72287:OnSubFinish7228709(arg1)
    print("OnSubFinish7228709")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc3162Data.id, 1)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20625Data.id, 2)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20626Data.id, 3)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20634Data.id, 4)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20635Data.id, 5)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20636Data.id, 6)
end

function Quest72287:OnSubStart7228710(arg1)
    print("OnSubStart7228710")
    self:DailyNpcSafeHideSelf(npcs.Npc3102Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3073Data.alias, 1, true)
end

function Quest72287:OnSubFinish7228710(arg1)
    print("OnSubFinish7228710")
    self:SafeDestroyQuestNpc(npcs.Npc3162Data.alias, 1060)
    self:SafeDestroyQuestNpc(npcs.Npc20625Data.alias, 1060)
    self:SafeDestroyQuestNpc(npcs.Npc20626Data.alias, 1060)
    self:SafeDestroyQuestNpc(npcs.Npc20634Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20635Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20636Data.alias, 3)
end

function Quest72287:OnSubStart7228711(arg1)
    print("OnSubStart7228711")
    self:DailyNpcSafeHideSelf(npcs.Npc3102Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3073Data.alias, 1, true)
end

function Quest72287:OnSubFinish7228711(arg1)
    print("OnSubFinish7228711")
    self:CreateQuestNpc(arg1, npcs.Npc20625Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20626Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc20634Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc20635Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc20636Data.id, 6)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcById(7228711, npcs.Npc3162Data.id, 1)
        arg1:RequestInteraction(npcs.Npc3162Data.alias)
    end, nil, nil, "", false, true)
end

function Quest72287:OnSubStart7228712(arg1)
    print("OnSubStart7228712")
    self:DailyNpcSafeHideSelf(npcs.Npc3102Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3073Data.alias, 1, true)
end

function Quest72287:OnSubFinish7228712(arg1)
    print("OnSubFinish7228712")
end

function Quest72287:OnSubStart7228713(arg1)
    print("OnSubStart7228713")
    self:DailyNpcSafeHideSelf(npcs.Npc3102Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3073Data.alias, 1, true)
end

function Quest72287:OnSubFinish7228713(arg1)
    print("OnSubFinish7228713")
end

function Quest72287:OnSubStart7228714(arg1)
    print("OnSubStart7228714")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20634Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20635Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20636Data.alias)
    self:DailyNpcSafeHideSelf(npcs.Npc3102Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3073Data.alias, 1, true)
    self:TransmitPlayerByQuestId(7228714, 1)
end

function Quest72287:OnSubFinish7228714(arg1)
    print("OnSubFinish7228714")
end

function Quest72287:OnSubStart7228715(arg1)
    print("OnSubStart7228715")
    self:DailyNpcSafeHideSelf(npcs.Npc3102Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3073Data.alias, 1, true)
    self:RequestInteraction(npcs.Npc3162Data.alias)
end

function Quest72287:OnSubFinish7228715(arg1)
    print("OnSubFinish7228715")
    self:NpcDestroyWithBlackscreen(1060, npcs.Npc3162Data.alias)
    self:SafeDestroyQuestNpc(npcs.Npc20625Data.alias, 1060)
    self:SafeDestroyQuestNpc(npcs.Npc20626Data.alias, 1060)
end

function Quest72287:OnSubStart7228708(arg1)
    print("OnSubStart7228708")
    self:DailyNpcSafeHideSelf(npcs.Npc3162Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3102Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3073Data.alias, 1, true)
end

function Quest72287:OnSubFinish7228708(arg1)
    print("OnSubFinish7228708")
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc3162Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20625Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20626Data.id, 3)
end

function Quest72287:OnSubStart7228716(arg1)
    print("OnSubStart7228716")
    self:DailyNpcSafeHideSelf(npcs.Npc3102Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3073Data.alias, 1, true)
end

function Quest72287:OnSubFinish7228716(arg1)
    print("OnSubFinish7228716")
end

function Quest72287:OnSubStart7228717(arg1)
    print("OnSubStart7228717")
    self:DailyNpcSafeHideSelf(npcs.Npc3102Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3073Data.alias, 1, true)
    self:RequestInteraction(npcs.Npc3162Data.alias)
end

function Quest72287:OnSubFinish7228717(arg1)
    print("OnSubFinish7228717")
end

function Quest72287:OnSubStart7228718(arg1)
    print("OnSubStart7228718")
    self:DailyNpcSafeHideSelf(npcs.Npc3102Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3073Data.alias, 1, true)
end

function Quest72287:OnSubFinish7228718(arg1)
    print("OnSubFinish7228718")
    self:SafeDestroyQuestNpc(npcs.Npc20625Data.alias, 1060)
    self:SafeDestroyQuestNpc(npcs.Npc20626Data.alias, 1060)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcById(7228718, npcs.Npc20642Data.id, 1)
        arg1:CreateQuestNpcById(7228718, npcs.Npc20719Data.id, 2)
        arg1:RequestInteraction(npcs.Npc20719Data.alias)
    end, nil, nil, "", false, true)
end

function Quest72287:OnSubStart7228719(arg1)
    print("OnSubStart7228719")
    self:DailyNpcSafeHideSelf(npcs.Npc3102Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3073Data.alias, 1, true)
end

function Quest72287:OnSubFinish7228719(arg1)
    print("OnSubFinish7228719")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20642Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20719Data.alias)
end

function Quest72287:OnSubStart7228720(arg1)
    print("OnSubStart7228720")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc3162Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20626Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc3102Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3073Data.alias, 1, true)
    self:TransmitPlayerByQuestId(7228720, 3)
end

function Quest72287:OnSubFinish7228720(arg1)
    print("OnSubFinish7228720")
    self:SafeDestroyQuestNpc(npcs.Npc3162Data.alias, 1060)
    self:SafeDestroyQuestNpc(npcs.Npc20626Data.alias, 3)
    self:NpcCreateWithBlackscreen(arg1, npcs.Npc20719Data.id, 3)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:CreateQuestNpcById(7228720, npcs.Npc20728Data.id, 4)
        arg1:RequestInteraction(npcs.Npc20728Data.alias)
    end, nil, nil, "", false, true)
end

function Quest72287:OnSubStart7228721(arg1)
    print("OnSubStart7228721")
    self:DailyNpcSafeHideSelf(npcs.Npc3102Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3073Data.alias, 1, true)
end

function Quest72287:OnSubFinish7228721(arg1)
    print("OnSubFinish7228721")
    self:SafeDestroyQuestNpc(npcs.Npc20719Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20728Data.alias, 3)
    self:ShowBlackScreen(0, 2, 0.5, function(arg1)
        arg1:TransmitPlayerByQuestId(7228721, 6, function(arg1)
            arg1:CallDelay(2, function(arg1)
                arg1:NarratorOnlyTask(datas.paimtalk, nil, "")
            end)
        end)
    end, nil, nil, "", false, true)
end

function Quest72287:OnSubStart7228722(arg1)
    print("OnSubStart7228722")
end

function Quest72287:OnSubFinish7228722(arg1)
    print("OnSubFinish7228722")
end

function Quest72287:OnSubStart7228724(arg1)
    print("OnSubStart7228724")
    self:NpcCreateWithActionSafeCall(arg1, npcs.Npc3162Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20625Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20626Data.id, 3)
    self:DailyNpcSafeHideSelf(npcs.Npc3102Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3073Data.alias, 1, true)
end

function Quest72287:OnSubFinish7228724(arg1)
    print("OnSubFinish7228724")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc3162Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20625Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20626Data.alias)
    self:LightNotifyTo(npcs.Npc3102Data.alias, 0, true)
end

return Quest72287

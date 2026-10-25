require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest72286 = class("Quest72286", QuestActorProxy)
Quest72286.defaultAlias = "Quest72286"
local clientData
local mainID
local actorAlias
local subIDs
local npcs

function Quest72286:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest72286:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7228601"] = self.OnSubStart7228601,
        ["7228602"] = self.OnSubStart7228602,
        ["7228603"] = self.OnSubStart7228603,
        ["7228604"] = self.OnSubStart7228604,
        ["7228605"] = self.OnSubStart7228605,
        ["7228606"] = self.OnSubStart7228606,
        ["7228610"] = self.OnSubStart7228610,
        ["7228611"] = self.OnSubStart7228611,
        ["7228607"] = self.OnSubStart7228607,
        ["7228608"] = self.OnSubStart7228608,
        ["7228609"] = self.OnSubStart7228609,
        ["7228615"] = self.OnSubStart7228615,
        ["7228616"] = self.OnSubStart7228616,
        ["7228614"] = self.OnSubStart7228614,
        ["7228612"] = self.OnSubStart7228612,
        ["7228613"] = self.OnSubStart7228613
    }
end

function Quest72286:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7228601"] = self.OnSubFinish7228601,
        ["7228602"] = self.OnSubFinish7228602,
        ["7228603"] = self.OnSubFinish7228603,
        ["7228604"] = self.OnSubFinish7228604,
        ["7228605"] = self.OnSubFinish7228605,
        ["7228606"] = self.OnSubFinish7228606,
        ["7228610"] = self.OnSubFinish7228610,
        ["7228611"] = self.OnSubFinish7228611,
        ["7228607"] = self.OnSubFinish7228607,
        ["7228608"] = self.OnSubFinish7228608,
        ["7228609"] = self.OnSubFinish7228609,
        ["7228615"] = self.OnSubFinish7228615,
        ["7228616"] = self.OnSubFinish7228616,
        ["7228614"] = self.OnSubFinish7228614,
        ["7228612"] = self.OnSubFinish7228612,
        ["7228613"] = self.OnSubFinish7228613
    }
end

function Quest72286:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest72286:Start()
    print("Start")
end

function Quest72286:OnDestroy()
    print("OnDestroy")
end

function Quest72286:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest72286:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest72286:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest72286:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest72286:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest72286:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:ShowReadingDialog(101764)
    elseif arg1 == 1101 then
        actorUtils.FinishQuestID(false, 7228605)
    elseif arg1 == 1102 then
        actorUtils.FinishQuestID(true, 7228605)
        self:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
    elseif arg1 == 141 then
        self:DestroyQuestNpcActor(npcs.Npc3162Data.alias, 3)
    elseif arg1 == 16 then
        actorUtils.FinishQuestID(false, 7228616)
    elseif arg1 == 14 then
        actorUtils.FinishQuestID(false, 7228614)
    end
end

function Quest72286:OnSubStart7228601(arg1)
    print("OnSubStart7228601")
end

function Quest72286:OnSubFinish7228601(arg1)
    print("OnSubFinish7228601")
end

function Quest72286:OnSubStart7228602(arg1)
    print("OnSubStart7228602")
    self:CreateQuestNpc(arg1, npcs.Npc3162Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20625Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc20626Data.id, 3)
    self:DailyNpcSafeHideSelf(npcs.Npc3102Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3073Data.alias, 1, true)
end

function Quest72286:OnSubFinish7228602(arg1)
    print("OnSubFinish7228602")
end

function Quest72286:OnSubStart7228603(arg1)
    print("OnSubStart7228603")
    self:DailyNpcSafeHideSelf(npcs.Npc3102Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3073Data.alias, 1, true)
    self:RequestInteraction(npcs.Npc3162Data.alias)
end

function Quest72286:OnSubFinish7228603(arg1)
    print("OnSubFinish7228603")
end

function Quest72286:OnSubStart7228604(arg1)
    print("OnSubStart7228604")
    self:DailyNpcSafeHideSelf(npcs.Npc3102Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3073Data.alias, 1, true)
end

function Quest72286:OnSubFinish7228604(arg1)
    print("OnSubFinish7228604")
end

function Quest72286:OnSubStart7228605(arg1)
    print("OnSubStart7228605")
    self:DailyNpcSafeHideSelf(npcs.Npc3102Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3073Data.alias, 1, true)
    self:RequestInteraction(npcs.Npc3162Data.alias)
end

function Quest72286:OnSubFinish7228605(arg1)
    print("OnSubFinish7228605")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20625Data.alias)
    self:NpcDestroyWithBlackscreen(3, npcs.Npc20626Data.alias)
end

function Quest72286:OnSubStart7228606(arg1)
    print("OnSubStart7228606")
    self:DailyNpcSafeHideSelf(npcs.Npc3102Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3073Data.alias, 1, true)
    self:TransmitPlayerByQuestId(7228606, 1)
end

function Quest72286:OnSubFinish7228606(arg1)
    print("OnSubFinish7228606")
end

function Quest72286:OnSubStart7228610(arg1)
    print("OnSubStart7228610")
end

function Quest72286:OnSubFinish7228610(arg1)
    print("OnSubFinish7228610")
    self:CreateQuestNpc(arg1, npcs.Npc20625Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20626Data.id, 2)
end

function Quest72286:OnSubStart7228611(arg1)
    print("OnSubStart7228611")
end

function Quest72286:OnSubFinish7228611(arg1)
    print("OnSubFinish7228611")
    self:SafeDestroyQuestNpc(npcs.Npc20625Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20626Data.alias, 3)
end

function Quest72286:OnSubStart7228607(arg1)
    print("OnSubStart7228607")
    self:CreateQuestNpc(arg1, npcs.Npc20625Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20626Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.PaimonData.id, 3)
    self:DailyNpcSafeHideSelf(npcs.Npc3102Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3073Data.alias, 1, true)
    self:RequestInteraction(npcs.Npc3162Data.alias)
end

function Quest72286:OnSubFinish7228607(arg1)
    print("OnSubFinish7228607")
    self:SafeDestroyQuestNpc(npcs.Npc20625Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20626Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
end

function Quest72286:OnSubStart7228608(arg1)
    print("OnSubStart7228608")
    self:CreateQuestNpc(arg1, npcs.Npc3162Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc3007Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc3102Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3073Data.alias, 1, true)
    self:GetQuestNpcActor(npcs.Npc3162Data.alias, 72286)
    self:GetQuestNpcActor(npcs.Npc3162Data.alias):SitOnChair(0)
end

function Quest72286:OnSubFinish7228608(arg1)
    print("OnSubFinish7228608")
end

function Quest72286:OnSubStart7228609(arg1)
    print("OnSubStart7228609")
    self:DailyNpcSafeHideSelf(npcs.Npc3102Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3073Data.alias, 1, true)
end

function Quest72286:OnSubFinish7228609(arg1)
    print("OnSubFinish7228609")
end

function Quest72286:OnSubStart7228615(arg1)
    print("OnSubStart7228615")
    self:DailyNpcSafeHideSelf(npcs.Npc3102Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3073Data.alias, 1, true)
    actorMgr:CreateActorWithPos("Q7228609Trigger", "Actor/Gadget/Q7228609Trigger", 70900002, 0, sceneData:GetDummyPoint(1066, "7228609_trigger").pos, sceneData:GetDummyPoint(1066, "7228609_trigger").rot, true, false, 1066)
end

function Quest72286:OnSubFinish7228615(arg1)
    print("OnSubFinish7228615")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc3162Data.alias)
    self:NpcDestroyWithBlackscreen(1066, npcs.Npc3007Data.alias)
end

function Quest72286:OnSubStart7228616(arg1)
    print("OnSubStart7228616")
end

function Quest72286:OnSubFinish7228616(arg1)
    print("OnSubFinish7228616")
end

function Quest72286:OnSubStart7228614(arg1)
    print("OnSubStart7228614")
end

function Quest72286:OnSubFinish7228614(arg1)
    print("OnSubFinish7228614")
end

function Quest72286:OnSubStart7228612(arg1)
    print("OnSubStart7228612")
    self:CreateQuestNpc(arg1, npcs.Npc3162Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3102Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3073Data.alias, 1, true)
end

function Quest72286:OnSubFinish7228612(arg1)
    print("OnSubFinish7228612")
    actorMgr:CreateActorWithPos("Q7228612Trigger", "Actor/Gadget/Q7228612Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "7228612_trigger").pos, sceneData:GetDummyPoint(3, "7228612_trigger").rot, true, false, 3)
end

function Quest72286:OnSubStart7228613(arg1)
    print("OnSubStart7228613")
    self:CreateQuestNpc(arg1, npcs.Npc3162Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc3102Data.alias, 1, true)
    self:DailyNpcSafeHideSelf(npcs.Npc3073Data.alias, 1, true)
end

function Quest72286:OnSubFinish7228613(arg1)
    print("OnSubFinish7228613")
end

return Quest72286

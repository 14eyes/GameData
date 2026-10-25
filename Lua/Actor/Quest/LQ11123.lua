require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11123 = class("Quest11123", QuestActorProxy)
Quest11123.defaultAlias = "Quest11123"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest11123:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest11123:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1112309"] = self.OnSubStart1112309,
        ["1112301"] = self.OnSubStart1112301,
        ["1112302"] = self.OnSubStart1112302,
        ["1112303"] = self.OnSubStart1112303,
        ["1112311"] = self.OnSubStart1112311,
        ["1112304"] = self.OnSubStart1112304,
        ["1112305"] = self.OnSubStart1112305,
        ["1112306"] = self.OnSubStart1112306,
        ["1112310"] = self.OnSubStart1112310,
        ["1112307"] = self.OnSubStart1112307,
        ["1112312"] = self.OnSubStart1112312,
        ["1112308"] = self.OnSubStart1112308
    }
end

function Quest11123:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1112309"] = self.OnSubFinish1112309,
        ["1112301"] = self.OnSubFinish1112301,
        ["1112302"] = self.OnSubFinish1112302,
        ["1112303"] = self.OnSubFinish1112303,
        ["1112311"] = self.OnSubFinish1112311,
        ["1112304"] = self.OnSubFinish1112304,
        ["1112305"] = self.OnSubFinish1112305,
        ["1112306"] = self.OnSubFinish1112306,
        ["1112310"] = self.OnSubFinish1112310,
        ["1112307"] = self.OnSubFinish1112307,
        ["1112312"] = self.OnSubFinish1112312,
        ["1112308"] = self.OnSubFinish1112308
    }
end

function Quest11123:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1112309"] = self.OnSubFailed1112309,
        ["1112301"] = self.OnSubFailed1112301,
        ["1112302"] = self.OnSubFailed1112302,
        ["1112303"] = self.OnSubFailed1112303,
        ["1112311"] = self.OnSubFailed1112311,
        ["1112304"] = self.OnSubFailed1112304,
        ["1112305"] = self.OnSubFailed1112305,
        ["1112306"] = self.OnSubFailed1112306,
        ["1112310"] = self.OnSubFailed1112310,
        ["1112307"] = self.OnSubFailed1112307,
        ["1112312"] = self.OnSubFailed1112312,
        ["1112308"] = self.OnSubFailed1112308
    }
end

function Quest11123:Start()
    print("Start")
end

function Quest11123:OnDestroy()
    print("OnDestroy")
end

function Quest11123:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11123:OnMainFailed(arg1)
    print("OnMainFailed")
    self:ClearData()
end

function Quest11123:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:ClearData()
end

function Quest11123:ClearData()
    print("ClearData")
    self:SafeDestroyQuestNpc(npcs.Npc10232Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10376Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2123Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10383Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10384Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10385Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10377Data.alias, 3)
end

function Quest11123:NarratorWithId_1112307()
    print("NarratorWithId_1112307")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1112307)
end

function Quest11123:InvokeOnInteraction(arg1)
    if arg1 == 1112303 then
        print("111203______\232\191\155\229\156\176\229\159\142\239\188\129\239\188\129\239\188\129\239\188\129\239\188\129")
        self:FinishQuestID(false, 1112311)
    elseif arg1 == 1112306 then
    elseif arg1 == 1112307 then
        print("1112307______\229\156\176\229\159\142\229\133\137\230\159\177\231\137\185\230\149\136\239\188\129\239\188\129\239\188\129\239\188\129\239\188\129\239\188\129\239\188\129")
        self:ShowBlackScreen(0.5, 2.5, 0, nil, nil, nil, "")
    end
end

function Quest11123:BlackFinish_1112308()
    print("BlackFinish_1112308")
    self:FinishQuestID(false, 1112312)
end

function Quest11123:CS_Finish_1112303()
    print("CS_Finish_1112303")
    self:ShowBlackScreen(0, 0.6, 0.4, self.BlackFinish_1112303, nil, nil, "")
end

function Quest11123:BlackFinish_1112303()
    print("BlackFinish_1112303")
    self:FinishQuestID(false, 1112311)
    globalActor:PlayerEnterDungeon(269, 107)
end

function Quest11123:BlackCallback_1112307()
    print("BlackCallback_1112307")
    self:ShowBlackScreen(0.1, 1, 0, self.BlackFinish_1112308, nil, nil, "")
end

function Quest11123:PlayCS_1112312()
    print("PlayCS_1112312")
    self:PlayCutsceneIndex("111230701", self.BlackCallback_1112307, nil, nil, false)
end

function Quest11123:OnSubStart1112309(arg1)
    print("OnSubStart1112309")
    self:CreateQuestNpc(arg1, npcs.Npc10376Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc10382Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc10382Data.alias):DoFreeStyle(4130, true, nil, true, true)
    self:UnSpawn(gadgets.Gadget70710346Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710346Data.id, 1, 0)
end

function Quest11123:OnSubFinish1112309(arg1)
    print("OnSubFinish1112309")
    self:SafeDestroyQuestNpc(npcs.Npc10376Data.alias, 3)
end

function Quest11123:OnSubFailed1112309(arg1)
    print("OnSubFailed1112309")
end

function Quest11123:OnSubStart1112301(arg1)
    print("OnSubStart1112301")
    self:GetQuestNpcActor(npcs.Npc10382Data.alias):DoFreeStyle(4130, true, nil, true, true)
    self:CreateQuestNpc(arg1, npcs.Npc10408Data.id, 3)
    actorMgr:CreateActorWithPos(datas.Q1112301Trigger_.alias, datas.Q1112301Trigger_.script, datas.Q1112301Trigger_.id, 0, datas.Q1112301Trigger_.point.pos, datas.Q1112301Trigger_.point.rot, true, false, 3)
end

function Quest11123:OnSubFinish1112301(arg1)
    print("OnSubFinish1112301")
    self:SafeDestroyQuestNpc(npcs.Npc10408Data.alias, 3)
end

function Quest11123:OnSubFailed1112301(arg1)
    print("OnSubFailed1112301")
end

function Quest11123:OnSubStart1112302(arg1)
    print("OnSubStart1112302")
    self:CreateQuestNpc(arg1, npcs.Npc10232Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc10382Data.alias):DoFreeStyle(4130, true, nil, true, true)
    actorMgr:CreateActorWithPos(datas.Q11123Trigger_Talk_.alias, datas.Q11123Trigger_Talk_.script, datas.Q11123Trigger_Talk_.id, 0, datas.Q11123Trigger_Talk_.point.pos, datas.Q11123Trigger_Talk_.point.rot, true, false, 3)
end

function Quest11123:OnSubFinish1112302(arg1)
    print("OnSubFinish1112302")
    self:SafeDestroyQuestNpc(npcs.Npc10232Data.alias, 3)
    actorMgr:DestroyEntityActor(datas.Q11123Trigger_Talk_.alias, 3, false)
end

function Quest11123:OnSubFailed1112302(arg1)
    print("OnSubFailed1112302")
end

function Quest11123:OnSubStart1112303(arg1)
    print("OnSubStart1112303")
    self:GetQuestNpcActor(npcs.Npc10382Data.alias):DoFreeStyle(4130, true, nil, true, true)
    actorMgr:CreateActorWithPos(datas.Q11123Trigger_InCave_.alias, datas.Q11123Trigger_InCave_.script, datas.Q11123Trigger_InCave_.id, 0, datas.Q11123Trigger_InCave_.point.pos, datas.Q11123Trigger_InCave_.point.rot, true, false, 3)
end

function Quest11123:OnSubFinish1112303(arg1)
    print("OnSubFinish1112303")
end

function Quest11123:OnSubFailed1112303(arg1)
    print("OnSubFailed1112303")
end

function Quest11123:OnSubStart1112311(arg1)
    print("1112311 Start : Cutscene")
    self:ActionSafeCall(function(arg1)
        arg1:PlayCutsceneIndex(111230301, arg1.CS_Finish_1112303, nil, nil, false)
    end)
end

function Quest11123:OnSubFinish1112311(arg1)
    print("OnSubFinish1112311")
end

function Quest11123:OnSubFailed1112311(arg1)
    print("OnSubFailed1112311")
end

function Quest11123:OnSubStart1112304(arg1)
    print("OnSubStart1112304")
    self:CreateQuestNpc(arg1, npcs.Npc10383Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc10383Data.alias):DoFreeStyle(4130, true, nil, true, true)
    self:CreateQuestNpc(arg1, npcs.Npc10384Data.id, 2)
    self:GetQuestNpcActor(npcs.Npc10384Data.alias):DoFreeStyle(4130, true, nil, true, true)
    self:CreateQuestNpc(arg1, npcs.Npc10385Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc10385Data.alias):DoFreeStyle(4130, true, nil, true, true)
    self:GetQuestNpcActor(npcs.Npc10382Data.alias):DoFreeStyle(4130, true, nil, true, true)
end

function Quest11123:OnSubFinish1112304(arg1)
    print("OnSubFinish1112304")
    self:SafeDestroyQuestNpc(npcs.Npc10383Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10384Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10385Data.alias, 3)
end

function Quest11123:OnSubFailed1112304(arg1)
    print("OnSubFailed1112304")
end

function Quest11123:OnSubStart1112305(arg1)
    print("OnSubStart1112305")
    self:GetQuestNpcActor(npcs.Npc10382Data.alias):DoFreeStyle(4130, true, nil, true, true)
end

function Quest11123:OnSubFinish1112305(arg1)
    print("OnSubFinish1112305")
end

function Quest11123:OnSubFailed1112305(arg1)
    print("OnSubFailed1112305")
end

function Quest11123:OnSubStart1112306(arg1)
    print("OnSubStart1112306")
    self.CallDelay(self, 0.5, function()
        self:CreateQuestNpc(arg1, npcs.Npc10408Data.id, 1)
        self:RequestInteraction(npcs.Npc10408Data.alias)
        self:UnSpawn(gadgets.Gadget70710383Data.alias)
        self:DelaySpawnGadget(arg1, gadgets.Gadget70710383Data.id, 1, 0)
    end)
end

function Quest11123:OnSubFinish1112306(arg1)
    print("OnSubFinish1112306")
    self:SafeDestroyQuestNpc(npcs.Npc10408Data.alias, 20107)
end

function Quest11123:OnSubFailed1112306(arg1)
    print("OnSubFailed1112306")
end

function Quest11123:OnSubStart1112310(arg1)
    print("OnSubStart1112310")
    self:GetQuestNpcActor(npcs.Npc10382Data.alias):DoFreeStyle(4130, true, nil, true, true)
end

function Quest11123:OnSubFinish1112310(arg1)
    print("OnSubFinish1112310")
end

function Quest11123:OnSubFailed1112310(arg1)
    print("OnSubFailed1112310")
end

function Quest11123:OnSubStart1112307(arg1)
    print("OnSubStart1112307")
    self:CreateQuestNpc(arg1, npcs.Npc10383Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc10383Data.alias):DoFreeStyle(4130, true, nil, true, true)
    self:CreateQuestNpc(arg1, npcs.Npc10384Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc10384Data.alias):DoFreeStyle(4130, true, nil, true, true)
    self:CreateQuestNpc(arg1, npcs.Npc10385Data.id, 5)
    self:GetQuestNpcActor(npcs.Npc10385Data.alias):DoFreeStyle(4130, true, nil, true, true)
    self:CreateQuestNpc(arg1, npcs.Npc10377Data.id, 6)
    self:GetQuestNpcActor(npcs.Npc10382Data.alias):DoFreeStyle(4130, true, nil, true, true)
    self:ActionSafeCall(self.NarratorWithId_1112307)
end

function Quest11123:OnSubFinish1112307(arg1)
    print("OnSubFinish1112307")
    self:SafeDestroyQuestNpc(npcs.Npc10383Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10384Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10385Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10377Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10382Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710346Data.alias)
end

function Quest11123:OnSubFailed1112307(arg1)
    print("OnSubFailed1112307")
end

function Quest11123:OnSubStart1112312(arg1)
    print("OnSubStart1112312")
    self:ActionSafeCall(self.PlayCS_1112312)
end

function Quest11123:OnSubFinish1112312(arg1)
    print("OnSubFinish1112312")
end

function Quest11123:OnSubFailed1112312(arg1)
    print("OnSubFailed1112312")
end

function Quest11123:OnSubStart1112308(arg1)
    print("OnSubStart1112308")
    self:CreateQuestNpc(arg1, npcs.Npc10232Data.id, 1)
    self:RequestInteraction(npcs.Npc10232Data.alias)
end

function Quest11123:OnSubFinish1112308(arg1)
    print("OnSubFinish1112308")
end

function Quest11123:OnSubFailed1112308(arg1)
    print("OnSubFailed1112308")
end

return Quest11123

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11122 = class("Quest11122", QuestActorProxy)
Quest11122.defaultAlias = "Quest11122"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest11122:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest11122:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1112201"] = self.OnSubStart1112201,
        ["1112202"] = self.OnSubStart1112202,
        ["1112203"] = self.OnSubStart1112203,
        ["1112210"] = self.OnSubStart1112210,
        ["1112211"] = self.OnSubStart1112211,
        ["1112204"] = self.OnSubStart1112204,
        ["1112205"] = self.OnSubStart1112205,
        ["1112206"] = self.OnSubStart1112206,
        ["1112207"] = self.OnSubStart1112207,
        ["1112212"] = self.OnSubStart1112212,
        ["1112208"] = self.OnSubStart1112208,
        ["1112209"] = self.OnSubStart1112209
    }
end

function Quest11122:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1112201"] = self.OnSubFinish1112201,
        ["1112202"] = self.OnSubFinish1112202,
        ["1112203"] = self.OnSubFinish1112203,
        ["1112210"] = self.OnSubFinish1112210,
        ["1112211"] = self.OnSubFinish1112211,
        ["1112204"] = self.OnSubFinish1112204,
        ["1112205"] = self.OnSubFinish1112205,
        ["1112206"] = self.OnSubFinish1112206,
        ["1112207"] = self.OnSubFinish1112207,
        ["1112212"] = self.OnSubFinish1112212,
        ["1112208"] = self.OnSubFinish1112208,
        ["1112209"] = self.OnSubFinish1112209
    }
end

function Quest11122:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1112201"] = self.OnSubFailed1112201,
        ["1112202"] = self.OnSubFailed1112202,
        ["1112203"] = self.OnSubFailed1112203,
        ["1112210"] = self.OnSubFailed1112210,
        ["1112211"] = self.OnSubFailed1112211,
        ["1112204"] = self.OnSubFailed1112204,
        ["1112205"] = self.OnSubFailed1112205,
        ["1112206"] = self.OnSubFailed1112206,
        ["1112207"] = self.OnSubFailed1112207,
        ["1112212"] = self.OnSubFailed1112212,
        ["1112208"] = self.OnSubFailed1112208,
        ["1112209"] = self.OnSubFailed1112209
    }
end

function Quest11122:Start()
    print("Start")
end

function Quest11122:OnDestroy()
    print("OnDestroy")
end

function Quest11122:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest11122:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest11122:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest11122:ClearData()
    print("ClearData")
    self:SafeDestroyQuestNpc(npcs.Npc10232Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10376Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10382Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10379Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10380Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10381Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10395Data.alias, 3)
end

function Quest11122:InvokeOnInteraction(arg1)
    if arg1 == 1112241 then
        print("\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\1481112241")
    elseif arg1 == 1112242 then
        print("\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\1481112242")
    elseif arg1 == 1112209 then
        print("\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\1481112209")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        self:UnSpawn(gadgets.Gadget70710346Data.alias)
        if actor ~= nil then
            self:DelaySpawnGadget(actor, gadgets.Gadget70710346Data.id, 1, 0)
        end
    end
end

function Quest11122:NarratorWithId_1112203()
    print("NarratorWithId_1112203")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1112203)
end

function Quest11122:NarratorWithId_1112205()
    print("NarratorWithId_1112205")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1112205)
end

function Quest11122:NarratorWithId_1112208()
    print("NarratorWithId_1112208")
    self:NarratorOnlyTaskByData(datas.NarratorWithId_1112208)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q11122_Miner_Pos").pos, 0, 3, true, false)
end

function Quest11122:OnSubStart1112201(arg1)
    print("OnSubStart1112201")
    self:CreateQuestNpc(arg1, npcs.Npc10408Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc10424Data.id, 3)
    self:NotifyTo(npcs.Npc1628Data.alias, 1, true)
    actorMgr:CreateActorWithPos(datas.Q11122Trigger_Look_.alias, datas.Q11122Trigger_Look_.script, datas.Q11122Trigger_Look_.id, 0, datas.Q11122Trigger_Look_.point.pos, datas.Q11122Trigger_Look_.point.rot, true, false, 3)
end

function Quest11122:OnSubFinish1112201(arg1)
    print("OnSubFinish1112201")
    self:SafeDestroyQuestNpc(npcs.Npc10424Data.alias, 3)
    self:LightNotifyTo(npcs.Npc1628Data.alias, 0, true)
end

function Quest11122:OnSubFailed1112201(arg1)
    print("OnSubFailed1112201")
end

function Quest11122:OnSubStart1112202(arg1)
    print("OnSubStart1112202")
    self:CreateQuestNpc(arg1, npcs.Npc10408Data.id, 3)
end

function Quest11122:OnSubFinish1112202(arg1)
    print("OnSubFinish1112202")
    self:SafeDestroyQuestNpc(npcs.Npc10408Data.alias, 3)
end

function Quest11122:OnSubFailed1112202(arg1)
    print("OnSubFailed1112202")
end

function Quest11122:OnSubStart1112203(arg1)
    print("OnSubStart1112203")
    actorMgr:CreateActorWithPos(datas.Q11122Trigger_Search2_.alias, datas.Q11122Trigger_Search2_.script, datas.Q11122Trigger_Search2_.id, 0, datas.Q11122Trigger_Search2_.point.pos, datas.Q11122Trigger_Search2_.point.rot, true, false, 3)
end

function Quest11122:OnSubFinish1112203(arg1)
    print("OnSubFinish1112203")
    self:ActionSafeCall(self.NarratorWithId_1112203)
end

function Quest11122:OnSubFailed1112203(arg1)
    print("OnSubFailed1112203")
end

function Quest11122:OnSubStart1112210(arg1)
    print("OnSubStart1112210")
end

function Quest11122:OnSubFinish1112210(arg1)
    print("OnSubFinish1112210")
end

function Quest11122:OnSubFailed1112210(arg1)
    print("OnSubFailed1112210")
end

function Quest11122:OnSubStart1112211(arg1)
    print("OnSubStart1112211")
end

function Quest11122:OnSubFinish1112211(arg1)
    print("OnSubFinish1112211")
end

function Quest11122:OnSubFailed1112211(arg1)
    print("OnSubFailed1112211")
end

function Quest11122:OnSubStart1112204(arg1)
    print("OnSubStart1112204")
    self:CreateQuestNpc(arg1, npcs.Npc10379Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc10380Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc10381Data.id, 5)
end

function Quest11122:OnSubFinish1112204(arg1)
    print("OnSubFinish1112204")
end

function Quest11122:OnSubFailed1112204(arg1)
    print("OnSubFailed1112204")
end

function Quest11122:OnSubStart1112205(arg1)
    print("OnSubStart1112205")
    actorMgr:CreateActorWithPos(datas.Q11122Trigger_Search3_.alias, datas.Q11122Trigger_Search3_.script, datas.Q11122Trigger_Search3_.id, 0, datas.Q11122Trigger_Search3_.point.pos, datas.Q11122Trigger_Search3_.point.rot, true, false, 3)
end

function Quest11122:OnSubFinish1112205(arg1)
    print("OnSubFinish1112205")
    self:SafeDestroyQuestNpc(npcs.Npc10379Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10380Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10381Data.alias, 3)
    self:ActionSafeCall(self.NarratorWithId_1112205)
end

function Quest11122:OnSubFailed1112205(arg1)
    print("OnSubFailed1112205")
end

function Quest11122:OnSubStart1112206(arg1)
    print("OnSubStart1112206")
    self:CreateQuestNpc(arg1, npcs.Npc10395Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc10395Data.alias):DoFreeStyle(4190, true, nil, true, true)
end

function Quest11122:OnSubFinish1112206(arg1)
    print("OnSubFinish1112206")
end

function Quest11122:OnSubFailed1112206(arg1)
    print("OnSubFailed1112206")
end

function Quest11122:OnSubStart1112207(arg1)
    print("OnSubStart1112207")
    self.GetQuestNpcActor(self, npcs.Npc10395Data.alias):DoFreeStateTrigger()
    self.CallDelay(self, 2, function()
        self:RequestInteraction(npcs.Npc10395Data.alias)
    end)
end

function Quest11122:OnSubFinish1112207(arg1)
    print("OnSubFinish1112207")
    self:SafeDestroyQuestNpc(npcs.Npc10395Data.alias, 3)
end

function Quest11122:OnSubFailed1112207(arg1)
    print("OnSubFailed1112207")
end

function Quest11122:OnSubStart1112212(arg1)
    print("OnSubStart1112212")
    self:CreateQuestNpc(arg1, npcs.Npc10424Data.id, 2)
    actorMgr:CreateActorWithPos(datas.Q11122Trigger_Kuanggong_.alias, datas.Q11122Trigger_Kuanggong_.script, datas.Q11122Trigger_Kuanggong_.id, 0, datas.Q11122Trigger_Kuanggong_.point.pos, datas.Q11122Trigger_Kuanggong_.point.rot, true, false, 3)
end

function Quest11122:OnSubFinish1112212(arg1)
    print("OnSubFinish1112212")
    self:ActionSafeCall(self.NarratorWithId_1112208)
end

function Quest11122:OnSubFailed1112212(arg1)
    print("OnSubFailed1112212")
end

function Quest11122:OnSubStart1112208(arg1)
    print("OnSubStart1112208")
    self:CreateQuestNpc(arg1, npcs.Npc10382Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc10382Data.alias):DoFreeStyle(4130, true, nil, true, true)
    self:UnSpawn(gadgets.Gadget70710346Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710346Data.id, 1, 0)
end

function Quest11122:OnSubFinish1112208(arg1)
    print("OnSubFinish1112208")
    self:SafeDestroyQuestNpc(npcs.Npc10382Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10424Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710346Data.alias)
end

function Quest11122:OnSubFailed1112208(arg1)
    print("OnSubFailed1112208")
end

function Quest11122:OnSubStart1112209(arg1)
    print("OnSubStart1112209")
    self:CreateQuestNpc(arg1, npcs.Npc10408Data.id, 4)
end

function Quest11122:OnSubFinish1112209(arg1)
    print("OnSubFinish1112209")
    self:SafeDestroyQuestNpc(npcs.Npc10408Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710346Data.alias)
end

function Quest11122:OnSubFailed1112209(arg1)
    print("OnSubFailed1112209")
end

return Quest11122

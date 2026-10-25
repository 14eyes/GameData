require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest71820 = class("Quest71820", QuestActorProxy)
Quest71820.defaultAlias = "Quest71820"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest71820:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest71820:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7182023"] = self.OnSubStart7182023,
        ["7182001"] = self.OnSubStart7182001,
        ["7182002"] = self.OnSubStart7182002,
        ["7182003"] = self.OnSubStart7182003,
        ["7182004"] = self.OnSubStart7182004,
        ["7182005"] = self.OnSubStart7182005,
        ["7182006"] = self.OnSubStart7182006,
        ["7182007"] = self.OnSubStart7182007,
        ["7182008"] = self.OnSubStart7182008,
        ["7182009"] = self.OnSubStart7182009,
        ["7182010"] = self.OnSubStart7182010,
        ["7182011"] = self.OnSubStart7182011,
        ["7182012"] = self.OnSubStart7182012,
        ["7182013"] = self.OnSubStart7182013,
        ["7182014"] = self.OnSubStart7182014,
        ["7182015"] = self.OnSubStart7182015,
        ["7182016"] = self.OnSubStart7182016,
        ["7182017"] = self.OnSubStart7182017,
        ["7182018"] = self.OnSubStart7182018,
        ["7182019"] = self.OnSubStart7182019,
        ["7182020"] = self.OnSubStart7182020,
        ["7182022"] = self.OnSubStart7182022,
        ["7182021"] = self.OnSubStart7182021
    }
end

function Quest71820:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7182023"] = self.OnSubFinish7182023,
        ["7182001"] = self.OnSubFinish7182001,
        ["7182002"] = self.OnSubFinish7182002,
        ["7182003"] = self.OnSubFinish7182003,
        ["7182004"] = self.OnSubFinish7182004,
        ["7182005"] = self.OnSubFinish7182005,
        ["7182006"] = self.OnSubFinish7182006,
        ["7182007"] = self.OnSubFinish7182007,
        ["7182008"] = self.OnSubFinish7182008,
        ["7182009"] = self.OnSubFinish7182009,
        ["7182010"] = self.OnSubFinish7182010,
        ["7182011"] = self.OnSubFinish7182011,
        ["7182012"] = self.OnSubFinish7182012,
        ["7182013"] = self.OnSubFinish7182013,
        ["7182014"] = self.OnSubFinish7182014,
        ["7182015"] = self.OnSubFinish7182015,
        ["7182016"] = self.OnSubFinish7182016,
        ["7182017"] = self.OnSubFinish7182017,
        ["7182018"] = self.OnSubFinish7182018,
        ["7182019"] = self.OnSubFinish7182019,
        ["7182020"] = self.OnSubFinish7182020,
        ["7182022"] = self.OnSubFinish7182022,
        ["7182021"] = self.OnSubFinish7182021
    }
end

function Quest71820:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7182023"] = self.OnSubFailed7182023,
        ["7182001"] = self.OnSubFailed7182001,
        ["7182002"] = self.OnSubFailed7182002,
        ["7182003"] = self.OnSubFailed7182003,
        ["7182004"] = self.OnSubFailed7182004,
        ["7182005"] = self.OnSubFailed7182005,
        ["7182006"] = self.OnSubFailed7182006,
        ["7182007"] = self.OnSubFailed7182007,
        ["7182008"] = self.OnSubFailed7182008,
        ["7182009"] = self.OnSubFailed7182009,
        ["7182010"] = self.OnSubFailed7182010,
        ["7182011"] = self.OnSubFailed7182011,
        ["7182012"] = self.OnSubFailed7182012,
        ["7182013"] = self.OnSubFailed7182013,
        ["7182014"] = self.OnSubFailed7182014,
        ["7182015"] = self.OnSubFailed7182015,
        ["7182016"] = self.OnSubFailed7182016,
        ["7182017"] = self.OnSubFailed7182017,
        ["7182018"] = self.OnSubFailed7182018,
        ["7182019"] = self.OnSubFailed7182019,
        ["7182020"] = self.OnSubFailed7182020,
        ["7182022"] = self.OnSubFailed7182022,
        ["7182021"] = self.OnSubFailed7182021
    }
end

function Quest71820:Start()
    print("Start")
end

function Quest71820:OnDestroy()
    print("OnDestroy")
end

function Quest71820:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest71820:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest71820:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc220801Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc220401Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc241001Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc30039Data.alias, 3)
    self:NotifyTo("Npc2208", 0, true)
    self:NotifyTo("Npc2204", 0, true)
    self:NotifyTo("Npc2410", 0, true)
    self:UnSpawn(gadgets.Gadget71700192Data.alias)
    self:UnSpawn(gadgets.Gadget71700193Data.alias)
    self:UnSpawn(gadgets.Gadget71700194Data.alias)
    self:UnSpawn(gadgets.Gadget70710301Data.alias)
    self:UnSpawn(gadgets.Gadget70710302Data.alias)
    self:UnSpawn(gadgets.Light01MarkData.alias)
    self:UnSpawn(gadgets.Light02MarkData.alias)
    self:UnSpawn(gadgets.Gadget71700197Data.alias)
    local actor = actorMgr:GetActor(datas.Q7182017Trigger_.alias)
    if actor ~= nil then
        actor:DestroySelf()
    end

    local v = actorMgr:GetActor(datas.Q7182001Trigger_.alias)
    if v ~= nil then
        v:DestroySelf()
    end
end

function Quest71820:HideVor()
    print("HideVor")
    self:NotifyTo("Npc2208", 1, true)
end

function Quest71820:HideYanxiao()
    print("HideYanxiao")
    self:NotifyTo("Npc2204", 1, true)
end

function Quest71820:HideBHZ()
    print("HideBHZ")
    self:NotifyTo("Npc2410", 1, true)
end

function Quest71820:ShowVor()
    print("ShowVor")
    self:NotifyTo("Npc2208", 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc220801Data.alias, 3)
end

function Quest71820:ShowYanxiao()
    print("ShowYanxiao")
    self:NotifyTo("Npc2204", 0, true)
    self:SafeDestroyQuestNpc(npcs.Npc220401Data.alias, 3)
end

function Quest71820:NarratorCJ()
    print("NarratorCJ")
    self:NarratorOnlyTask(datas.NarratorCaiji, nil, "Story")
end

function Quest71820:NarratorGD()
    print("NarratorGD")
    self:NarratorOnlyTask(datas.NarratorGuadeng, nil, "Story")
end

function Quest71820:HideWangya()
    print("HideWangya")
    self:SafeDestroyQuestNpc(npcs.Npc30039Data.alias, 3)
end

function Quest71820:BlackHideWangya()
    print("BlackHideWangya")
    self:ShowBlackScreen(0.5, 1.5, 0.5, self.HideWangya, nil, nil, "")
end

function Quest71820:OnSubStart7182023(arg1)
    print("OnSubStart7182023")
end

function Quest71820:OnSubFinish7182023(arg1)
    print("OnSubFinish7182023")
end

function Quest71820:OnSubFailed7182023(arg1)
    print("OnSubFailed7182023")
end

function Quest71820:OnSubStart7182001(arg1)
    print("OnSubStart7182001")
    self:CreateQuestNpc(arg1, npcs.Npc220801Data.id, 1)
    actorMgr:CreateActorWithPos(datas.Q7182001Trigger_.alias, datas.Q7182001Trigger_.script, datas.Q7182001Trigger_.id, 0, datas.Q7182001Trigger_.point.pos, datas.Q7182001Trigger_.point.rot, true, false, 3)
    self:HideVor()
end

function Quest71820:OnSubFinish7182001(arg1)
    print("OnSubFinish7182001")
end

function Quest71820:OnSubFailed7182001(arg1)
    print("OnSubFailed7182001")
end

function Quest71820:OnSubStart7182002(arg1)
    print("OnSubStart7182002")
    self:HideVor()
end

function Quest71820:OnSubFinish7182002(arg1)
    print("OnSubFinish7182002")
end

function Quest71820:OnSubFailed7182002(arg1)
    print("OnSubFailed7182002")
end

function Quest71820:OnSubStart7182003(arg1)
    print("OnSubStart7182003")
    self:CreateQuestNpc(arg1, npcs.Npc220401Data.id, 1)
    self:HideVor()
    self:HideYanxiao()
end

function Quest71820:OnSubFinish7182003(arg1)
    print("OnSubFinish7182003")
    self:SafeDestroyQuestNpc(npcs.Npc220801Data.alias, 3)
    self:ShowBlackScreen(0.5, 1, 0.5, self.ShowVor, nil, nil, "")
end

function Quest71820:OnSubFailed7182003(arg1)
    print("OnSubFailed7182003")
end

function Quest71820:OnSubStart7182004(arg1)
    print("OnSubStart7182004")
    self:UnSpawn(gadgets.Gadget71700192Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget71700192Data.id, 1, 0)
    self:HideYanxiao()
end

function Quest71820:OnSubFinish7182004(arg1)
    print("OnSubFinish7182004")
end

function Quest71820:OnSubFailed7182004(arg1)
    print("OnSubFailed7182004")
end

function Quest71820:OnSubStart7182005(arg1)
    print("OnSubStart7182005")
    self:UnSpawn(gadgets.Gadget71700193Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget71700193Data.id, 1, 0)
    self:HideYanxiao()
end

function Quest71820:OnSubFinish7182005(arg1)
    print("OnSubFinish7182005")
end

function Quest71820:OnSubFailed7182005(arg1)
    print("OnSubFailed7182005")
end

function Quest71820:OnSubStart7182006(arg1)
    print("OnSubStart7182006")
    self:UnSpawn(gadgets.Gadget71700194Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget71700194Data.id, 1, 0)
    self:HideYanxiao()
end

function Quest71820:OnSubFinish7182006(arg1)
    print("OnSubFinish7182006")
end

function Quest71820:OnSubFailed7182006(arg1)
    print("OnSubFailed7182006")
end

function Quest71820:OnSubStart7182007(arg1)
    print("OnSubStart7182007")
    self:HideYanxiao()
end

function Quest71820:OnSubFinish7182007(arg1)
    print("OnSubFinish7182007")
    self:NarratorCJ()
end

function Quest71820:OnSubFailed7182007(arg1)
    print("OnSubFailed7182007")
end

function Quest71820:OnSubStart7182008(arg1)
    print("OnSubStart7182008")
    self:HideYanxiao()
end

function Quest71820:OnSubFinish7182008(arg1)
    print("OnSubFinish7182008")
end

function Quest71820:OnSubFailed7182008(arg1)
    print("OnSubFailed7182008")
end

function Quest71820:OnSubStart7182009(arg1)
    print("OnSubStart7182009")
    self:FinishQuestID(false, 7182009)
end

function Quest71820:OnSubFinish7182009(arg1)
    print("OnSubFinish7182009")
end

function Quest71820:OnSubFailed7182009(arg1)
    print("OnSubFailed7182009")
end

function Quest71820:OnSubStart7182010(arg1)
    print("OnSubStart7182010")
    self:UnSpawn(gadgets.Gadget70710301Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710301Data.id, 1, 0)
end

function Quest71820:OnSubFinish7182010(arg1)
    print("OnSubFinish7182010")
    self:UnSpawn(gadgets.Gadget70710301Data.alias)
end

function Quest71820:OnSubFailed7182010(arg1)
    print("OnSubFailed7182010")
end

function Quest71820:OnSubStart7182011(arg1)
    print("OnSubStart7182011")
    self:UnSpawn(gadgets.Gadget70710302Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710302Data.id, 1, 0)
end

function Quest71820:OnSubFinish7182011(arg1)
    print("OnSubFinish7182011")
    self:UnSpawn(gadgets.Gadget70710302Data.alias)
end

function Quest71820:OnSubFailed7182011(arg1)
    print("OnSubFailed7182011")
end

function Quest71820:OnSubStart7182012(arg1)
    print("OnSubStart7182012")
end

function Quest71820:OnSubFinish7182012(arg1)
    print("OnSubFinish7182012")
    self:NarratorGD()
end

function Quest71820:OnSubFailed7182012(arg1)
    print("OnSubFailed7182012")
end

function Quest71820:OnSubStart7182013(arg1)
    print("OnSubStart7182013")
end

function Quest71820:OnSubFinish7182013(arg1)
    print("OnSubFinish7182013")
end

function Quest71820:OnSubFailed7182013(arg1)
    print("OnSubFailed7182013")
end

function Quest71820:OnSubStart7182014(arg1)
    print("OnSubStart7182014")
    self:UnSpawn(gadgets.Gadget71700197Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget71700197Data.id, 1, 0)
    self:HideYanxiao()
end

function Quest71820:OnSubFinish7182014(arg1)
    print("OnSubFinish7182014")
    self:UnSpawn(gadgets.Gadget71700197Data.alias)
end

function Quest71820:OnSubFailed7182014(arg1)
    print("OnSubFailed7182014")
end

function Quest71820:OnSubStart7182015(arg1)
    print("OnSubStart7182015")
    self:HideYanxiao()
end

function Quest71820:OnSubFinish7182015(arg1)
    print("OnSubFinish7182015")
    self:ShowBlackScreen(0.5, 1.5, 0.5, self.ShowYanxiao, nil, nil, "")
end

function Quest71820:OnSubFailed7182015(arg1)
    print("OnSubFailed7182015")
end

function Quest71820:OnSubStart7182016(arg1)
    print("OnSubStart7182016")
    self:CreateQuestNpc(arg1, npcs.Npc220801Data.id, 1)
    self:HideVor()
end

function Quest71820:OnSubFinish7182016(arg1)
    print("OnSubFinish7182016")
    self:ShowBlackScreen(0.5, 1.5, 0.5, self.ShowVor, nil, nil, "")
end

function Quest71820:OnSubFailed7182016(arg1)
    print("OnSubFailed7182016")
end

function Quest71820:OnSubStart7182017(arg1)
    print("OnSubStart7182017")
    self:CreateQuestNpc(arg1, npcs.Npc241001Data.id, 1)
    self:GetQuestNpcActor(npcs.Npc241001Data.alias):DoFreeStyle(1070)
    self:CreateQuestNpc(arg1, npcs.Npc30039Data.id, 2)
    actorMgr:CreateActorWithPos(datas.Q7182017Trigger_.alias, datas.Q7182017Trigger_.script, datas.Q7182017Trigger_.id, 0, datas.Q7182017Trigger_.point.pos, datas.Q7182017Trigger_.point.rot, true, false, 3)
    self:HideBHZ()
end

function Quest71820:OnSubFinish7182017(arg1)
    print("OnSubFinish7182017")
    self:NarratorOnlyTask(datas.NarratorBHZ, nil, "Tag")
end

function Quest71820:OnSubFailed7182017(arg1)
    print("OnSubFailed7182017")
end

function Quest71820:OnSubStart7182018(arg1)
    print("OnSubStart7182018")
    self:GetQuestNpcActor(npcs.Npc241001Data.alias):DoFreeStyle(1070)
    self:HideBHZ()
end

function Quest71820:OnSubFinish7182018(arg1)
    print("OnSubFinish7182018")
end

function Quest71820:OnSubFailed7182018(arg1)
    print("OnSubFailed7182018")
end

function Quest71820:OnSubStart7182019(arg1)
    print("OnSubStart7182019")
    self:GetQuestNpcActor(npcs.Npc241001Data.alias):DoFreeStateTrigger()
    self:HideBHZ()
end

function Quest71820:OnSubFinish7182019(arg1)
    print("OnSubFinish7182019")
end

function Quest71820:OnSubFailed7182019(arg1)
    print("OnSubFailed7182019")
end

function Quest71820:OnSubStart7182020(arg1)
    print("OnSubStart7182020")
    self:HideBHZ()
end

function Quest71820:OnSubFinish7182020(arg1)
    print("OnSubFinish7182020")
end

function Quest71820:OnSubFailed7182020(arg1)
    print("OnSubFailed7182020")
end

function Quest71820:OnSubStart7182022(arg1)
    print("OnSubStart7182022")
    self:HideBHZ()
end

function Quest71820:OnSubFinish7182022(arg1)
    print("OnSubFinish7182022")
end

function Quest71820:OnSubFailed7182022(arg1)
    print("OnSubFailed7182022")
end

function Quest71820:OnSubStart7182021(arg1)
    print("OnSubStart7182021")
    self:HideBHZ()
end

function Quest71820:OnSubFinish7182021(arg1)
    print("OnSubFinish7182021")
    self:SafeDestroyQuestNpc(npcs.Npc241001Data.alias, 3)
    self:NotifyTo("Npc2410", 0, true)
    self:ActionSafeCall(self.BlackHideWangya)
end

function Quest71820:OnSubFailed7182021(arg1)
    print("OnSubFailed7182021")
end

return Quest71820

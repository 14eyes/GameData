require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest79027 = class("Quest79027", QuestActorProxy)
Quest79027.defaultAlias = "Quest79027"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest79027:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest79027:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7902701"] = self.OnSubStart7902701,
        ["7902714"] = self.OnSubStart7902714,
        ["7902711"] = self.OnSubStart7902711,
        ["7902702"] = self.OnSubStart7902702,
        ["7902712"] = self.OnSubStart7902712,
        ["7902703"] = self.OnSubStart7902703,
        ["7902704"] = self.OnSubStart7902704,
        ["7902705"] = self.OnSubStart7902705,
        ["7902706"] = self.OnSubStart7902706,
        ["7902713"] = self.OnSubStart7902713,
        ["7902707"] = self.OnSubStart7902707,
        ["7902708"] = self.OnSubStart7902708,
        ["7902709"] = self.OnSubStart7902709,
        ["7902710"] = self.OnSubStart7902710
    }
end

function Quest79027:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7902701"] = self.OnSubFinish7902701,
        ["7902714"] = self.OnSubFinish7902714,
        ["7902711"] = self.OnSubFinish7902711,
        ["7902702"] = self.OnSubFinish7902702,
        ["7902712"] = self.OnSubFinish7902712,
        ["7902703"] = self.OnSubFinish7902703,
        ["7902704"] = self.OnSubFinish7902704,
        ["7902705"] = self.OnSubFinish7902705,
        ["7902706"] = self.OnSubFinish7902706,
        ["7902713"] = self.OnSubFinish7902713,
        ["7902707"] = self.OnSubFinish7902707,
        ["7902708"] = self.OnSubFinish7902708,
        ["7902709"] = self.OnSubFinish7902709,
        ["7902710"] = self.OnSubFinish7902710
    }
end

function Quest79027:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["7902702"] = self.OnSubFailed7902702,
        ["7902712"] = self.OnSubFailed7902712,
        ["7902703"] = self.OnSubFailed7902703,
        ["7902704"] = self.OnSubFailed7902704,
        ["7902705"] = self.OnSubFailed7902705
    }
end

function Quest79027:Start()
    print("Start")
end

function Quest79027:OnDestroy()
    print("OnDestroy")
end

function Quest79027:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest79027:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest79027:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest79027:NpcDestroyWithDither(arg1, arg2)
    self:GetQuestNpcActor(arg1):DestroyWithDither(false, 1)
    self:CallDelay(1, function(arg1_2)
        arg1_2:DestroyQuestNpcActor(arg1, arg2)
    end)
end

function Quest79027:NpcDestroy(arg1, arg2)
    self:SafeDestroyQuestNpc(arg1, arg2)
end

function Quest79027:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 0 then
        self:UnSpawn(gadgets.Gadget45001001Data.alias)
    end
end

function Quest79027:OnSubStart7902701(arg1)
    print("OnSubStart7902701")
    self:CreateQuestNpc(arg1, npcs.Npc20729Data.id, 0)
    self:NarratorOnlyTaskByData(datas.NarratorWithId790271201)
end

function Quest79027:OnSubFinish7902701(arg1)
    print("OnSubFinish7902701")
    self:NpcDestroyWithDither(npcs.Npc20729Data.alias, 9)
end

function Quest79027:OnSubStart7902714(arg1)
    print("OnSubStart7902714")
    self:UnSpawn(gadgets.Gadget45001001Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget45001001Data.id, 1, 0)
end

function Quest79027:OnSubFinish7902714(arg1)
    print("OnSubFinish7902714")
end

function Quest79027:OnSubStart7902711(arg1)
    print("OnSubStart7902711")
end

function Quest79027:OnSubFinish7902711(arg1)
    print("OnSubFinish7902711")
    self:ShowBlackScreen(0.5, 4, 0.5, nil, nil, nil, "Quest_Black_Q79027021", false, true)
end

function Quest79027:OnSubStart7902702(arg1)
    print("OnSubStart7902702")
    actorMgr:CreateActorWithPos("Q7902702Trigger", "Actor/Gadget/Q7902702Trigger", 70900002, 0, {x = 0.0, y = 0.0, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 9)
end

function Quest79027:OnSubFinish7902702(arg1)
    print("OnSubFinish7902702")
end

function Quest79027:OnSubFailed7902702(arg1)
    print("OnSubFailed7902702")
    self:TransmitPlayerWithTextByQuestId(7902702, 1, datas.TextmapIdwutianhuigun, 3)
    self:UnSpawn(gadgets.Gadget45001001Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget45001001Data.id, 1, 0)
end

function Quest79027:OnSubStart7902712(arg1)
    print("OnSubStart7902712")
    actorMgr:CreateActorWithPos("Q7902712Trigger", "Actor/Gadget/Q7902712Trigger", 70900002, 0, {x = 0.0, y = 0.0, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 9)
end

function Quest79027:OnSubFinish7902712(arg1)
    print("OnSubFinish7902712")
end

function Quest79027:OnSubFailed7902712(arg1)
    print("OnSubFailed7902712")
    self:TransmitPlayerWithTextByQuestId(7902712, 2, datas.TextmapIdwutianhuigun, 3)
    self:UnSpawn(gadgets.Gadget45001001Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget45001001Data.id, 1, 0)
end

function Quest79027:OnSubStart7902703(arg1)
    print("OnSubStart7902703")
    actorMgr:CreateActorWithPos("Q7902703Trigger", "Actor/Gadget/Q7902703Trigger", 70900002, 0, {x = 0.0, y = 0.0, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 9)
end

function Quest79027:OnSubFinish7902703(arg1)
    print("OnSubFinish7902703")
end

function Quest79027:OnSubFailed7902703(arg1)
    print("OnSubFailed7902703")
    self:TransmitPlayerWithTextByQuestId(7902703, 3, datas.TextmapIdwutianhuigun, 3)
    self:UnSpawn(gadgets.Gadget45001001Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget45001001Data.id, 1, 0)
end

function Quest79027:OnSubStart7902704(arg1)
    print("OnSubStart7902704")
    actorMgr:CreateActorWithPos("Q7902704Trigger", "Actor/Gadget/Q7902704Trigger", 70900002, 0, {x = 0.0, y = 0.0, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false)
end

function Quest79027:OnSubFinish7902704(arg1)
    print("OnSubFinish7902704")
end

function Quest79027:OnSubFailed7902704(arg1)
    print("OnSubFailed7902704")
    self:TransmitPlayerWithTextByQuestId(7902704, 4, datas.TextmapIdwutianhuigun, 3)
    self:UnSpawn(gadgets.Gadget45001001Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget45001001Data.id, 1, 0)
end

function Quest79027:OnSubStart7902705(arg1)
    print("OnSubStart7902705")
    actorMgr:CreateActorWithPos("Q7902705Trigger", "Actor/Gadget/Q7902705Trigger", 70900002, 0, {x = 0.0, y = 0.0, z = 0.0}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 9)
    self:ShowBlackScreen(0.5, 3, 0.5, nil, nil, nil, "Quest_Black_Q79027051", false, true)
end

function Quest79027:OnSubFinish7902705(arg1)
    print("OnSubFinish7902705")
end

function Quest79027:OnSubFailed7902705(arg1)
    print("OnSubFailed7902705")
    self:TransmitPlayerWithTextByQuestId(7902705, 5, datas.TextmapId1leibaohuigun, 3)
    self:UnSpawn(gadgets.Gadget45001001Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget45001001Data.id, 1, 0)
end

function Quest79027:OnSubStart7902706(arg1)
    print("OnSubStart7902706")
    self:CreateQuestNpcWithTrigger("7902706", 7902706, npcs.Npc20729Data.id, 0, 5)
end

function Quest79027:OnSubFinish7902706(arg1)
    print("OnSubFinish7902706")
    self:NpcDestroyWithDither(npcs.Npc20729Data.alias, 9)
end

function Quest79027:OnSubStart7902713(arg1)
    print("OnSubStart7902713")
    self:CallDelay(1, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId790271301)
    end)
end

function Quest79027:OnSubFinish7902713(arg1)
    print("OnSubFinish7902713")
end

function Quest79027:OnSubStart7902707(arg1)
    print("OnSubStart7902707")
end

function Quest79027:OnSubFinish7902707(arg1)
    print("OnSubFinish7902707")
    self:NarratorOnlyTaskByData(datas.NarratorWithId790270801)
end

function Quest79027:OnSubStart7902708(arg1)
    print("OnSubStart7902708")
    self:CreateQuestNpcWithTrigger("7902708", 7902708, npcs.PaimonData.id, 0, 30)
end

function Quest79027:OnSubFinish7902708(arg1)
    print("OnSubFinish7902708")
    self:NpcDestroy(npcs.PaimonData.alias, 9)
end

function Quest79027:OnSubStart7902709(arg1)
    print("OnSubStart7902709")
end

function Quest79027:OnSubFinish7902709(arg1)
    print("OnSubFinish7902709")
end

function Quest79027:OnSubStart7902710(arg1)
    print("OnSubStart7902710")
    self:CreateQuestNpcWithTrigger("7902710", 7902710, npcs.Npc20729Data.id, 0, 15)
end

function Quest79027:OnSubFinish7902710(arg1)
    print("OnSubFinish7902710")
    self:NpcDestroyWithDither(npcs.Npc20729Data.alias, 9)
end

return Quest79027

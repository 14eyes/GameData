require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest12028 = class("Quest12028", QuestActorProxy)
Quest12028.defaultAlias = "Quest12028"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas

function Quest12028:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest12028:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1202801"] = self.OnSubStart1202801,
        ["1202802"] = self.OnSubStart1202802,
        ["1202803"] = self.OnSubStart1202803,
        ["1202809"] = self.OnSubStart1202809,
        ["1202810"] = self.OnSubStart1202810,
        ["1202804"] = self.OnSubStart1202804,
        ["1202805"] = self.OnSubStart1202805,
        ["1202806"] = self.OnSubStart1202806,
        ["1202807"] = self.OnSubStart1202807,
        ["1202808"] = self.OnSubStart1202808
    }
end

function Quest12028:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1202801"] = self.OnSubFinish1202801,
        ["1202802"] = self.OnSubFinish1202802,
        ["1202803"] = self.OnSubFinish1202803,
        ["1202809"] = self.OnSubFinish1202809,
        ["1202810"] = self.OnSubFinish1202810,
        ["1202804"] = self.OnSubFinish1202804,
        ["1202805"] = self.OnSubFinish1202805,
        ["1202806"] = self.OnSubFinish1202806,
        ["1202807"] = self.OnSubFinish1202807,
        ["1202808"] = self.OnSubFinish1202808
    }
end

function Quest12028:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest12028:Start()
    print("Start")
end

function Quest12028:OnDestroy()
    print("OnDestroy")
end

function Quest12028:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest12028:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest12028:OnMainCanceled(arg1) end

function Quest12028:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest12028:OnSubStart1202801(arg1)
    print("OnSubStart1202801")
    self:CreateQuestNpc(arg1, npcs.Npc12359Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12436Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc12437Data.alias):DoFreeStyle(4040, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12437Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc12438Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc12439Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc12440Data.id, 7)
    self:CreateQuestNpcWithTrigger("1202801", 1202801, npcs.Npc12358Data.id, 1, 8)
    self:CreateSpeechBubbleTask(npcs.Npc12436Data.id, 120282605, 10, true, 20, 20, true)
    self:CreateSpeechBubbleTask(npcs.Npc12437Data.id, 120282606, 10, true, 20, 20, true)
    self:CreateSpeechBubbleTask(npcs.Npc12438Data.id, 120282607, 10, true, 20, 20, true)
    self:CreateSpeechBubbleTask(npcs.Npc12439Data.id, 120282608, 10, true, 20, 20, true)
    self:CreateSpeechBubbleTask(npcs.Npc12440Data.id, 120282609, 10, true, 20, 20, true)
end

function Quest12028:OnSubFinish1202801(arg1)
    print("OnSubFinish1202801")
end

function Quest12028:OnSubStart1202802(arg1)
    print("OnSubStart1202802")
    self:CreateQuestNpc(arg1, npcs.Npc3032Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12436Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12437Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc12438Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc12439Data.id, 6)
    self:CreateQuestNpc(arg1, npcs.Npc12440Data.id, 7)
    self:CreateQuestNpcWithTrigger("1202802", 1202802, npcs.Npc3033Data.id, 1, 8)
    self:CreateSpeechBubbleTask(npcs.Npc12436Data.id, 120282605, 10, true, 20, 20, true)
    self:CreateSpeechBubbleTask(npcs.Npc12437Data.id, 120282606, 10, true, 20, 20, true)
    self:CreateSpeechBubbleTask(npcs.Npc12438Data.id, 120282607, 10, true, 20, 20, true)
    self:CreateSpeechBubbleTask(npcs.Npc12439Data.id, 120282608, 10, true, 20, 20, true)
    self:CreateSpeechBubbleTask(npcs.Npc12440Data.id, 120282609, 10, true, 20, 20, true)
end

function Quest12028:OnSubFinish1202802(arg1)
    print("OnSubFinish1202802")
end

function Quest12028:OnSubStart1202803(arg1)
    print("OnSubStart1202803")
    self:CreateQuestNpc(arg1, npcs.Npc12362Data.id, 2)
    self:DailyNpcSafeHideSelf(npcs.Npc3109Data.alias, 1, true)
    self:CreateQuestNpcWithTrigger("1202803", 1202803, npcs.Npc1034Data.id, 1, 8)
end

function Quest12028:OnSubFinish1202803(arg1)
    print("OnSubFinish1202803")
    self:SafeDestroyQuestNpc(npcs.Npc1034Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12436Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12437Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12438Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12439Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12440Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12362Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId)
    end)
end

function Quest12028:OnSubStart1202809(arg1)
    print("OnSubStart1202809")
    self:DailyNpcSafeHideSelf(npcs.Npc3109Data.alias, 1, true)
    self:CreateQuestNpcWithTriggerBlack("1202809", 1202809, npcs.Npc12362Data.id, 2, 8, 2)
end

function Quest12028:OnSubFinish1202809(arg1)
    print("OnSubFinish1202809")
    self:SafeDestroyQuestNpc(npcs.Npc12358Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3033Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12359Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3032Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12362Data.alias, 3)
end

function Quest12028:OnSubStart1202810(arg1)
    print("OnSubStart1202810")
    self:CreateQuestNpc(arg1, npcs.Npc12415Data.id, 2)
    self:LightNotifyTo(npcs.Npc3109Data.alias, 0, true)
end

function Quest12028:OnSubFinish1202810(arg1)
    print("OnSubFinish1202810")
end

function Quest12028:OnSubStart1202804(arg1)
    print("OnSubStart1202804")
    self:CreateQuestNpc(arg1, npcs.Npc12416Data.id, 2)
end

function Quest12028:OnSubFinish1202804(arg1)
    print("OnSubFinish1202804")
    actorMgr:CreateActorWithPos("Q12028Trigger1", "Actor/Gadget/Q12028Trigger1", 70900002, 1, sceneData:GetDummyPoint(3, "Q1202806_T1202806_N12363").pos, sceneData:GetDummyPoint(3, "Q1202806_T1202806_N12363").rot, true, false)
end

function Quest12028:OnSubStart1202805(arg1)
    print("OnSubStart1202805")
    self:UnSpawn(gadgets.Gadget70710584Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710584Data.id, 1, 0)
end

function Quest12028:OnSubFinish1202805(arg1)
    print("OnSubFinish1202805")
end

function Quest12028:OnSubStart1202806(arg1)
    print("OnSubStart1202806")
    self:CreateQuestNpcWithTrigger("1202806", 1202806, npcs.Npc12363Data.id, 2, 15)
    self:GetQuestNpcActor(npcs.Npc12363Data.alias):DoFreeStyle(4110, true, nil, true, true, false)
end

function Quest12028:OnSubFinish1202806(arg1)
    print("OnSubFinish1202806")
    self:SafeDestroyQuestNpc(npcs.Npc12415Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12416Data.alias, 3)
end

function Quest12028:OnSubStart1202807(arg1)
    print("OnSubStart1202807")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc12363Data.alias)
        questNpcActor:DoFreeStyle(4121, true, nil, true, true, false)
        questNpcActor:DisableInteeHeadCtrl(true)
        questNpcActor:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
        local v = arg1:GetQuestNpcActor(npcs.Npc12362Data.alias)
        v:DoFreeStyle(4121, true, nil, true, true, false)
        v:DisableInteeHeadCtrl(true)
        v:PlayEmoSync("", "Cs_Emo_NPC_Common/Cs_Emo_NPC_Normal01", "Cs_Emo_NPC_Common/Cs_Emo_NPC_WinkA01", 0, false, true, true)
    end)
end

function Quest12028:OnSubFinish1202807(arg1)
    print("OnSubFinish1202807")
end

function Quest12028:OnSubStart1202808(arg1)
    print("OnSubStart1202808")
    self:CallDelay(0, function(arg1_2)
        arg1_2:TransmitPlayerById(arg1, 1, nil, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc12363Data.id, 2)
            arg1_2:RequestInteraction(npcs.Npc12363Data.alias)
        end, task)
    end)
end

function Quest12028:OnSubFinish1202808(arg1)
    print("OnSubFinish1202808")
    self:SafeDestroyQuestNpc(npcs.Npc12363Data.alias, 3)
end

return Quest12028

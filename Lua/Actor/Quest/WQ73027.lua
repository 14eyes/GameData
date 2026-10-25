require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest73027 = class("Quest73027", QuestActorProxy)
Quest73027.defaultAlias = "Quest73027"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest73027:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest73027:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["7302701"] = self.OnSubStart7302701,
        ["7302702"] = self.OnSubStart7302702,
        ["7302703"] = self.OnSubStart7302703,
        ["7302704"] = self.OnSubStart7302704,
        ["7302705"] = self.OnSubStart7302705,
        ["7302706"] = self.OnSubStart7302706,
        ["7302707"] = self.OnSubStart7302707,
        ["7302708"] = self.OnSubStart7302708,
        ["7302710"] = self.OnSubStart7302710,
        ["7302711"] = self.OnSubStart7302711,
        ["7302712"] = self.OnSubStart7302712,
        ["7302713"] = self.OnSubStart7302713,
        ["7302714"] = self.OnSubStart7302714,
        ["7302709"] = self.OnSubStart7302709
    }
end

function Quest73027:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["7302701"] = self.OnSubFinish7302701,
        ["7302702"] = self.OnSubFinish7302702,
        ["7302703"] = self.OnSubFinish7302703,
        ["7302704"] = self.OnSubFinish7302704,
        ["7302705"] = self.OnSubFinish7302705,
        ["7302706"] = self.OnSubFinish7302706,
        ["7302707"] = self.OnSubFinish7302707,
        ["7302708"] = self.OnSubFinish7302708,
        ["7302710"] = self.OnSubFinish7302710,
        ["7302711"] = self.OnSubFinish7302711,
        ["7302712"] = self.OnSubFinish7302712,
        ["7302713"] = self.OnSubFinish7302713,
        ["7302714"] = self.OnSubFinish7302714,
        ["7302709"] = self.OnSubFinish7302709
    }
end

function Quest73027:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest73027:Start()
    print("Start")
end

function Quest73027:OnDestroy()
    print("OnDestroy")
end

function Quest73027:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest73027:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest73027:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc20601Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20645Data.alias, 3)
    self:LightNotifyTo(npcs.Npc20601Data.alias, 0, true)
    actorMgr:DestroyEntityActor("Q7302701Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7302702Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7302703Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7302710Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q7302713Trigger", 3, false)
end

function Quest73027:OnSubStart7302701(arg1)
    print("OnSubStart7302701")
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 1)
    actorMgr:CreateActorWithPos("Q7302701Trigger", "Actor/Gadget/Q7302701Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQL1_AREATITANEXIT").pos, sceneData:GetDummyPoint(3, "WQL1_AREATITANEXIT").rot, true, false, 3)
end

function Quest73027:OnSubFinish7302701(arg1)
    print("OnSubFinish7302701")
end

function Quest73027:OnSubStart7302702(arg1)
    print("OnSubStart7302702")
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4185Data.id, 2)
    actorMgr:CreateActorWithPos("Q7302702Trigger", "Actor/Gadget/Q7302702Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQL1_AREAHOLEENTER").pos, sceneData:GetDummyPoint(3, "WQL1_AREAHOLEENTER").rot, true, false, 3)
end

function Quest73027:OnSubFinish7302702(arg1)
    print("OnSubFinish7302702")
    self:SafeDestroyQuestNpc(npcs.Npc4185Data.alias, 3)
end

function Quest73027:OnSubStart7302703(arg1)
    print("OnSubStart7302703")
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 1)
    actorMgr:CreateActorWithPos("Q7302703Trigger", "Actor/Gadget/Q7302703Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQL1_NPCRELIC").pos, sceneData:GetDummyPoint(3, "WQL1_NPCRELIC").rot, true, false, 3)
end

function Quest73027:OnSubFinish7302703(arg1)
    print("OnSubFinish7302703")
end

function Quest73027:OnSubStart7302704(arg1)
    print("OnSubStart7302704")
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 1)
    actorMgr:CreateActorWithPos("Q7302704Trigger", "Actor/Gadget/Q7302704Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQL1_AREAFIRSTBATTLE").pos, sceneData:GetDummyPoint(3, "WQL1_AREAFIRSTBATTLE").rot, true, false, 3)
end

function Quest73027:OnSubFinish7302704(arg1)
    print("OnSubFinish7302704")
end

function Quest73027:OnSubStart7302705(arg1)
    print("OnSubStart7302705")
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20645Data.id, 2)
    actorMgr:CreateActorWithPos("Q7302705Trigger", "Actor/Gadget/Q7302705Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQL1_NPCABYSS").pos, sceneData:GetDummyPoint(3, "WQL1_NPCABYSS").rot, true, false, 3)
end

function Quest73027:OnSubFinish7302705(arg1)
    print("OnSubFinish7302705")
    self:SafeDestroyQuestNpc(npcs.Npc20645Data.alias, 3)
end

function Quest73027:OnSubStart7302706(arg1)
    print("OnSubStart7302706")
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 1)
end

function Quest73027:OnSubFinish7302706(arg1)
    print("OnSubFinish7302706")
end

function Quest73027:OnSubStart7302707(arg1)
    print("OnSubStart7302707")
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 1)
end

function Quest73027:OnSubFinish7302707(arg1)
    print("OnSubFinish7302707")
end

function Quest73027:OnSubStart7302708(arg1)
    print("OnSubStart7302708")
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 1)
end

function Quest73027:OnSubFinish7302708(arg1)
    print("OnSubFinish7302708")
end

function Quest73027:OnSubStart7302710(arg1)
    print("OnSubStart7302710")
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 1)
    actorMgr:CreateActorWithPos("Q7302710Trigger", "Actor/Gadget/Q7302710Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQL1_AREACOREITSELF").pos, sceneData:GetDummyPoint(3, "WQL1_AREACOREITSELF").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q73027Trigger", "Actor/Gadget/Q73027Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQL1_AREACOREITSELF").pos, sceneData:GetDummyPoint(3, "WQL1_AREACOREITSELF").rot, true, false, 3)
end

function Quest73027:OnSubFinish7302710(arg1)
    print("OnSubFinish7302710")
    self:PlayCutsceneIndex(7302710, function(arg1)
        arg1:NarratorOnlyTask(datas.NarratorTable4, nil, "StoryInMainPage")
    end, nil, nil, false)
end

function Quest73027:OnSubStart7302711(arg1)
    print("OnSubStart7302711")
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 1)
end

function Quest73027:OnSubFinish7302711(arg1)
    print("OnSubFinish7302711")
    self:NarratorOnlyTask(datas.NarratorTable5, nil, "")
end

function Quest73027:OnSubStart7302712(arg1)
    print("OnSubStart7302712")
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 1)
end

function Quest73027:OnSubFinish7302712(arg1)
    print("OnSubFinish7302712")
    self:PlayCutsceneIndex(7302712, function(arg1)
        arg1:NarratorOnlyTaskByData(datas.NarratorWithId, nil, 73027)
    end, nil, nil, false)
end

function Quest73027:OnSubStart7302713(arg1)
    print("OnSubStart7302713")
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 1)
    actorMgr:CreateActorWithPos("Q7302713Trigger", "Actor/Gadget/Q7302713Trigger", 70900002, 0, {x = -1674.048, y = 199.913, z = 2790.346}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 3)
end

function Quest73027:OnSubFinish7302713(arg1)
    print("OnSubFinish7302713")
end

function Quest73027:OnSubStart7302714(arg1)
    print("OnSubStart7302714")
    self:CreateQuestNpc(arg1, npcs.Npc20601Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc4185Data.id, 2)
    actorMgr:CreateActorWithPos("Q7302714Trigger", "Actor/Gadget/Q7302714Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "WQL2_ABYSSEXITENT").pos, sceneData:GetDummyPoint(3, "WQL2_ABYSSEXITENT").rot, true, false, 3)
end

function Quest73027:OnSubFinish7302714(arg1)
    print("OnSubFinish7302714")
    self:SafeDestroyQuestNpc(npcs.Npc20601Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc4185Data.alias, 3)
end

function Quest73027:OnSubStart7302709(arg1)
    print("OnSubStart7302709")
end

function Quest73027:OnSubFinish7302709(arg1)
    print("OnSubFinish7302709")
end

return Quest73027

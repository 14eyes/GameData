require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest19144 = class("Quest19144", QuestActorProxy)
Quest19144.defaultAlias = "Quest19144"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest19144:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest19144:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1914401"] = self.OnSubStart1914401,
        ["1914402"] = self.OnSubStart1914402,
        ["1914403"] = self.OnSubStart1914403,
        ["1914409"] = self.OnSubStart1914409,
        ["1914404"] = self.OnSubStart1914404,
        ["1914405"] = self.OnSubStart1914405,
        ["1914406"] = self.OnSubStart1914406,
        ["1914407"] = self.OnSubStart1914407,
        ["1914408"] = self.OnSubStart1914408
    }
end

function Quest19144:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1914401"] = self.OnSubFinish1914401,
        ["1914402"] = self.OnSubFinish1914402,
        ["1914403"] = self.OnSubFinish1914403,
        ["1914409"] = self.OnSubFinish1914409,
        ["1914404"] = self.OnSubFinish1914404,
        ["1914405"] = self.OnSubFinish1914405,
        ["1914406"] = self.OnSubFinish1914406,
        ["1914407"] = self.OnSubFinish1914407,
        ["1914408"] = self.OnSubFinish1914408
    }
end

function Quest19144:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest19144:Start()
    print("Start")
end

function Quest19144:OnDestroy()
    print("OnDestroy")
end

function Quest19144:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ClearNarratorTask()
end

function Quest19144:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest19144:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Coop_ShinobuData.alias, 1066)
    self:SafeDestroyQuestNpc(npcs.Coop_ShinobuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1038Data.alias, 1066)
    self:SafeDestroyQuestNpc(npcs.Npc1038Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12513Data.alias, 1066)
    self:SafeDestroyQuestNpc(npcs.Npc12513Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12276Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12276Data.alias, 1066)
    self:SafeDestroyQuestNpc(npcs.Npc12277Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12277Data.alias, 1066)
    self:SafeDestroyQuestNpc(npcs.Npc12278Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12278Data.alias, 1066)
    self:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3015Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3002Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3045Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3046Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3008Data.alias, 1066)
    self:SafeDestroyQuestNpc(npcs.Npc12682Data.alias, 3)
    actorMgr:DestroyEntityActor("Q1914401Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1914402Trigger", 1066, false)
    actorMgr:DestroyEntityActor("Q1914402TriggerRefuseIn", 1066, false)
    actorMgr:DestroyEntityActor("Q1914402TriggerWelcome", 1066, false)
    actorMgr:DestroyEntityActor("Q1914404Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1914408Trigger", 3, false)
    actorMgr:DestroyEntityActor("Q1914408TriggerSee", 3, false)
    actorMgr:DestroyEntityActor("Q1914403TriggerRefuse02", 1066, false)
end

function Quest19144:ActorDestroy(arg1)
    local actor = actorMgr:GetActor(arg1)
    if actor ~= nil then
        actor:DestroySelf()
    end
end

function Quest19144:OnSubStart1914401(arg1)
    print("OnSubStart1914401")
    self:CreateQuestNpc(arg1, npcs.Coop_ShinobuData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc12276Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12277Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12278Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc12682Data.id, 5)
    self:RequestCoopInteractionFromSubStartPoint(106501, 1914401)
    actorMgr:CreateActorWithPos("Q1914401Trigger", "Actor/Gadget/Q1914401Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1914401_guide").pos, sceneData:GetDummyPoint(3, "Q1914401_guide").rot, true, false, 3)
end

function Quest19144:OnSubFinish1914401(arg1)
    print("OnSubFinish1914401")
    self:DestroyQuestNpcActor(npcs.Coop_ShinobuData.alias, 3)
end

function Quest19144:OnSubStart1914402(arg1)
    print("OnSubStart1914402")
    self:CreateQuestNpc(arg1, npcs.Coop_ShinobuData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1038Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12513Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12276Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc12276Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12277Data.id, 5)
    self:GetQuestNpcActor(npcs.Npc12277Data.alias):DoFreeStyle(4110, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12278Data.id, 6)
    self:GetQuestNpcActor(npcs.Npc12278Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc3008Data.id, 7)
    self:RequestCoopInteractionFromSubStartPoint(106501, 1914402)
    actorMgr:CreateActorWithPos("Q1914402Trigger", "Actor/Gadget/Q1914402Trigger", 70900002, 0, sceneData:GetDummyPoint(1066, "Q1914402_steallook").pos, sceneData:GetDummyPoint(1066, "Q1914402_steallook").rot, true, false, 1066)
    actorMgr:CreateActorWithPos("Q1914402TriggerRefuseIn", "Actor/Gadget/Q1914402TriggerRefuseIn", 70900002, 0, {x = 5.186, y = 5.701, z = 7.455}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1066)
    actorMgr:CreateActorWithPos("Q1914402TriggerWelcome", "Actor/Gadget/Q1914402TriggerWelcome", 70900002, 0, sceneData:GetDummyPoint(1066, "Q1914402_Welcome").pos, sceneData:GetDummyPoint(1066, "Q1914402_Welcome").rot, true, false, 1066)
end

function Quest19144:OnSubFinish1914402(arg1)
    print("OnSubFinish1914402")
    self:SafeDestroyQuestNpc(npcs.Npc12276Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12277Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12278Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3008Data.alias, 1066)
    self:ActorDestroy("Q1914402Trigger")
    self:ActorDestroy("Q1914402TriggerWelcome")
    self:ActorDestroy("Q1914402TriggerRefuseIn")
end

function Quest19144:OnSubStart1914403(arg1)
    print("OnSubStart1914403")
    self:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc1044Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:RequestCoopInteractionFromSubStartPoint(106501, 1914403)
    actorMgr:CreateActorWithPos("Q1914403TriggerRefuse02", "Actor/Gadget/Q1914403TriggerRefuse02", 70900002, 0, {x = 7.917, y = 5.652, z = 3.364}, {x = 0.0, y = 0.0, z = 0.0}, true, false, 1066)
end

function Quest19144:OnSubFinish1914403(arg1)
    print("OnSubFinish1914403")
    self:ActorDestroy("Q1914403TriggerRefuse02")
end

function Quest19144:OnSubStart1914409(arg1)
    print("OnSubStart1914409")
end

function Quest19144:OnSubFinish1914409(arg1)
    print("OnSubFinish1914409")
end

function Quest19144:OnSubStart1914404(arg1)
    print("OnSubStart1914404")
    self:CreateQuestNpc(arg1, npcs.Coop_ShinobuData.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc1038Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12513Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc12276Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc12276Data.alias):DoFreeStyle(1050, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12277Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc12278Data.id, 6)
    self:GetQuestNpcActor(npcs.Npc12278Data.alias):DoFreeStyle(1190, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 7)
    self:GetQuestNpcActor(npcs.Npc1044Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:RequestCoopInteractionFromSubStartPoint(106501, 1914404)
    actorMgr:CreateActorWithPos("Q1914404Trigger", "Actor/Gadget/Q1914404Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1914404_guide").pos, sceneData:GetDummyPoint(3, "Q1914404_guide").rot, true, false, 3)
end

function Quest19144:OnSubFinish1914404(arg1)
    print("OnSubFinish1914404")
    self:SafeDestroyQuestNpc(npcs.Coop_ShinobuData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1038Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12513Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12276Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12277Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12278Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
    self:ActorDestroy("Q1914404Trigger")
end

function Quest19144:OnSubStart1914405(arg1)
    print("OnSubStart1914405")
    self:CreateQuestNpc(arg1, npcs.Npc3015Data.id, 2)
    self:RequestCoopInteractionFromSubStartPoint(106501, 1914405)
end

function Quest19144:OnSubFinish1914405(arg1)
    print("OnSubFinish1914405")
    self:SafeDestroyQuestNpc(npcs.Npc3015Data.alias, 3)
end

function Quest19144:OnSubStart1914406(arg1)
    print("OnSubStart1914406")
    self:CreateQuestNpc(arg1, npcs.Npc3002Data.id, 2)
    self:RequestCoopInteractionFromSubStartPoint(106501, 1914406)
end

function Quest19144:OnSubFinish1914406(arg1)
    print("OnSubFinish1914406")
    self:SafeDestroyQuestNpc(npcs.Npc3002Data.alias, 3)
end

function Quest19144:OnSubStart1914407(arg1)
    print("OnSubStart1914407")
    self:CreateQuestNpc(arg1, npcs.Npc3045Data.id, 2)
    self:RequestCoopInteractionFromSubStartPoint(106501, 1914407)
end

function Quest19144:OnSubFinish1914407(arg1)
    print("OnSubFinish1914407")
end

function Quest19144:OnSubStart1914408(arg1)
    print("OnSubStart1914408")
    self:CreateQuestNpc(arg1, npcs.Npc12276Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc12277Data.id, 3)
    self:GetQuestNpcActor(npcs.Npc12277Data.alias):DoFreeStyle(1230, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc12278Data.id, 4)
    self:GetQuestNpcActor(npcs.Npc12278Data.alias):DoFreeStyle(1180, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc1044Data.id, 5)
    self:GetQuestNpcActor(npcs.Npc1044Data.alias):DoFreeStyle(1120, true, nil, true, true, false)
    self:CreateQuestNpc(arg1, npcs.Npc3046Data.id, 6)
    self:RequestCoopInteractionFromSubStartPoint(106501, 1914408)
    actorMgr:CreateActorWithPos("Q1914408Trigger", "Actor/Gadget/Q1914408Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1914408_guide").pos, sceneData:GetDummyPoint(3, "Q1914408_guide").rot, true, false, 3)
    actorMgr:CreateActorWithPos("Q1914408TriggerSee", "Actor/Gadget/Q1914408TriggerSee", 70900002, 0, sceneData:GetDummyPoint(3, "Q1914408_guide").pos, sceneData:GetDummyPoint(3, "Q1914408_guide").rot, true, false, 3)
end

function Quest19144:OnSubFinish1914408(arg1)
    print("OnSubFinish1914408")
    self:SafeDestroyQuestNpc(npcs.Npc12276Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12277Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12278Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1044Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3045Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc3046Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc12682Data.alias, 3)
end

return Quest19144

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")
local DailyNPCManager = require("Actor/DailyNPCManager")

local Quest484 = class("Quest484", QuestActorProxy)
Quest484.defaultAlias = "Quest484"
local clientData
local subIDs
local amborData
local witnessData
local civil01Data
local civil02Data
local civil03Data

function Quest484:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    amborData = clientData.AmborData
    witnessData = clientData.WitnessData
    civil01Data = clientData.Civil01Data
    civil02Data = clientData.Civil02Data
    civil03Data = clientData.Civil03Data
end

function Quest484:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["48401"] = self.OnSubStart48401
    self.subStartHandlers["48402"] = self.OnSubStart48402
    self.subStartHandlers["48403"] = self.OnSubStart48403
    self.subStartHandlers["48404"] = self.OnSubStart48404
    self.subStartHandlers["48405"] = self.OnSubStart48405
    self.subStartHandlers["48406"] = self.OnSubStart48406
    self.subStartHandlers["48407"] = self.OnSubStart48407
    self.subStartHandlers["48408"] = self.OnSubStart48408
    self.subStartHandlers["48409"] = self.OnSubStart48409
    self.subStartHandlers["48410"] = self.OnSubStart48410
    self.subStartHandlers["48411"] = self.OnSubStart48411
    self.subStartHandlers["48412"] = self.OnSubStart48412
    self.subStartHandlers["48413"] = self.OnSubStart48413
    self.subStartHandlers["48414"] = self.OnSubStart48414
    self.subStartHandlers["48415"] = self.OnSubStart48415
    self.subStartHandlers["48416"] = self.OnSubStart48416
    self.subStartHandlers["48417"] = self.OnSubStart48417
    self.subStartHandlers["48418"] = self.OnSubStart48418
    self.subStartHandlers["48419"] = self.OnSubStart48419
    self.subStartHandlers["48420"] = self.OnSubStart48420
    self.subStartHandlers["48421"] = self.OnSubStart48421
    self.subStartHandlers["48422"] = self.OnSubStart48422
    self.subStartHandlers["48423"] = self.OnSubStart48423
    self.subStartHandlers["48425"] = self.OnSubStart48425
    self.subStartHandlers["48426"] = self.OnSubStart48426
    self.subStartHandlers["48427"] = self.OnSubStart48427
    self.subStartHandlers["48428"] = self.OnSubStart48428
    self.subStartHandlers["48429"] = self.OnSubStart48429
    self.subStartHandlers["48430"] = self.OnSubStart48430
    self.subStartHandlers["48431"] = self.OnSubStart48431
    self.subStartHandlers["48432"] = self.OnSubStart48432
    self.subStartHandlers["48433"] = self.OnSubStart48433
end

function Quest484:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["48401"] = self.OnSubFinish48401
    self.subFinishHandlers["48402"] = self.OnSubFinish48402
    self.subFinishHandlers["48403"] = self.OnSubFinish48403
    self.subFinishHandlers["48404"] = self.OnSubFinish48404
    self.subFinishHandlers["48405"] = self.OnSubFinish48405
    self.subFinishHandlers["48406"] = self.OnSubFinish48406
    self.subFinishHandlers["48407"] = self.OnSubFinish48407
    self.subFinishHandlers["48408"] = self.OnSubFinish48408
    self.subFinishHandlers["48409"] = self.OnSubFinish48409
    self.subFinishHandlers["48410"] = self.OnSubFinish48410
    self.subFinishHandlers["48411"] = self.OnSubFinish48411
    self.subFinishHandlers["48417"] = self.OnSubFinish48417
    self.subFinishHandlers["48423"] = self.OnSubFinish48423
    self.subFinishHandlers["48432"] = self.OnSubFinish48432
end

function Quest484:OnSubStart48401(arg1)
    print("48401 Start ")
    actorMgr:CreateActorWithPos("Q48401Trigger", "Actor/Gadget/Q48401Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q484Ambor").pos, sceneData:GetDummyPoint(3, "Q484Ambor").rot, true, false)
end

function Quest484:OnSubStart48402(arg1)
    print("48402 Start ")
    local questNpcCreateTask = self.CreateQuestNpcCreateTask({amborData.Ambor})
    self:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, amborData.AmborID)
        arg1_2:RequestInteraction(amborData.Ambor)
    end, nil, questNpcCreateTask)
end

function Quest484:RequestAmbor(arg1)
    self:RequestInteraction(amborData.Ambor)
end

function Quest484:OnSubStart48403(arg1)
    print("48403 Start ")
    self:UnSpawn("q484Clue1")
    self:UnSpawn("effectClue1")
    self:CallDelay(1.5, function(arg1_2)
        arg1_2:SpawnGadget(arg1, 70700007, 1)
        arg1_2:SpawnGadget(arg1, 70300070, 2)
    end)
end

function Quest484:OnSubStart48404(arg1)
    print("48404 Start ")
end

function Quest484:OnSubStart48405(arg1)
    print("48405 Start ")
    self:UnSpawn("q484Clue2")
    self:UnSpawn("effectClue2")
    self:CallDelay(1.5, function(arg1_2)
        arg1_2:SpawnGadget(arg1, 70700008, 1)
        arg1_2:SpawnGadget(arg1, 70300070, 2)
    end)
end

function Quest484:OnSubStart48406(arg1)
    print("48406 Start ")
end

function Quest484:OnSubStart48407(arg1)
    print("48407 Start ")
    self:UnSpawn("q484Clue3")
    self:UnSpawn("effectClue3")
    self:CallDelay(1.5, function(arg1_2)
        arg1_2:SpawnGadget(arg1, 70700009, 1)
        arg1_2:SpawnGadget(arg1, 70300070, 2)
    end)
end

function Quest484:OnSubStart48408(arg1)
    print("48408 Start ")
    self:UnSpawn("effectClue3")
end

function Quest484:OnSubStart48409(arg1)
    print("48409 Start ")
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({amborData.Ambor})
    self:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, amborData.AmborID)
        arg1_2:RequestInteraction(amborData.Ambor)
    end, nil, questNpcCreateTask)
end

function Quest484:OnSubStart48410(arg1)
    print("48410 Start ")
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({amborData.Ambor})
    self:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, amborData.AmborID)
        arg1_2:RequestInteraction(amborData.Ambor)
    end, nil, questNpcCreateTask)
end

function Quest484:OnSubStart48411(arg1)
    print("48411 Start ")
end

function Quest484:OnSubStart48413(arg1)
    print("48413 Start ")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 48413)
    end
end

function Quest484:OnSubStart48414(arg1)
    print("48414 Start ")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 48414)
    end
end

function Quest484:OnSubStart48415(arg1)
    print("48415 Start ")
    actorMgr:CreateActorWithPos("Q484Trigger", "Actor/Gadget/Q484Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q48414").pos, sceneData:GetDummyPoint(3, "Q48414").rot, true, false)
end

function Quest484:OnSubStart48416(arg1)
    print("48416 Start ")
end

function Quest484:OnSubStart48417(arg1)
    print("48417 Start ")
    self:NarratorOnlyTaskByData(clientData.AmbushNarratorWithId, nil)
end

function Quest484:OnSubStart48418(arg1)
    print("48418 Start ")
    actorMgr:CreateActorWithPos("Q484Trigger", "Actor/Gadget/Q484Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q484Print1").pos, sceneData:GetDummyPoint(3, "Q484Print1").rot, true, false)
    self:SpawnGadget(arg1, 70300070)
end

function Quest484:OnSubStart48419(arg1)
    print("48419 Start ")
    actorMgr:CreateActorWithPos("Q484Trigger", "Actor/Gadget/Q484Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q484Print2").pos, sceneData:GetDummyPoint(3, "Q484Print2").rot, true, false)
    self:SpawnGadget(arg1, 70300070)
end

function Quest484:OnSubStart48420(arg1)
    print("48420 Start ")
    self:SpawnGadget(arg1, 70300070)
    actorMgr:CreateActorWithPos("Q484Trigger", "Actor/Gadget/Q484Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q484Print3").pos, sceneData:GetDummyPoint(3, "Q484Print3").rot, true, false)
end

function Quest484:OnSubStart48421(arg1)
    print("48421 Start ")
    self:SpawnGadget(arg1, 70300070)
    actorMgr:CreateActorWithPos("Q484Trigger", "Actor/Gadget/Q484Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q484Print4").pos, sceneData:GetDummyPoint(3, "Q484Print4").rot, true, false)
end

function Quest484:OnSubStart48422(arg1)
    print("48422 Start ")
    self:SpawnGadget(arg1, 70300070)
    actorMgr:CreateActorWithPos("Q484Trigger", "Actor/Gadget/Q484Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q484Print5").pos, sceneData:GetDummyPoint(3, "Q484Print5").rot, true, false)
end

function Quest484:OnSubStart48423(arg1)
    print("48423 Start ")
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({amborData.Ambor})
    self:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, amborData.AmborID)
        arg1_2:RequestInteraction(amborData.Ambor)
    end, nil, questNpcCreateTask)
end

function Quest484:OnSubStart48426(arg1)
    print("48425 Start ")
end

function Quest484:OnSubStart48427(arg1)
    print("48426 Start ")
end

function Quest484:OnSubStart48428(arg1)
    print("48427 Start ")
end

function Quest484:OnSubStart48429(arg1)
    print("48428 Start ")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 48429)
        actor:FinishQuestID(false, 48430)
    end
end

function Quest484:OnSubStart48431(arg1)
    print("48430 Start ")
    actorMgr:CreateActorWithPos("Q484SmallTrigger", "Actor/Gadget/Q484SmallTrigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q48412").pos, sceneData:GetDummyPoint(3, "Q48412").rot, true, false)
    self:CreateQuestNpc(arg1, witnessData.CivilID)
    self:NotifyTo("Npc1549", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:CallDelay(1, function(arg1)
        arg1:GetQuestNpcActor(witnessData.Civil):DoFreeStyle(4190)
    end)

    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 48405)
    end
end

function Quest484:OnSubStart48432(arg1)
    print("48431 Start ")
    self:CallDelay(1.5, function(arg1_2)
        local questNpcCreateTask = arg1_2:CreateQuestNpcCreateTask({amborData.Ambor})
        arg1_2:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, amborData.AmborID)
            arg1_2:RequestInteraction(amborData.Ambor)
        end, nil, questNpcCreateTask)
    end)
end

function Quest484:OnSubStart48433(arg1)
    print("48433 Start ")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 48433)
    end
end

function Quest484:DestroyNPC(arg1)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(amborData.Ambor)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        local v = arg1:GetQuestNpcActor("Paimon")
        if v ~= nil then
            v:DestroyWithDisappear(false)
        end
    end)
end

function Quest484:OnSubFinish48401(arg1)
    print("48401 Finish  ")
end

function Quest484:OnSubFinish48402(arg1)
    print("48402 Finish  ")
    self:DestroyNPC()
    self:CallDelay(1, function(arg1)
        globalActor:StartGuide("AmborTaskElementViewGuideIOS")
        print("elementview")
    end)
end

function Quest484:OnSubFinish48403(arg1)
    print("48403 Finish  ")
    self:UnSpawn("effectClue1")
    if self:GetSubQuestState(48407) == 3 then
        if actorMgr:GetActor(clientData.ActorAlias) ~= nil then
            actorUtils.FinishQuestID(false, 48405)
        end
    end
end

function Quest484:OnSubFinish48404(arg1)
    print("48404 Finish  ")
    self:DestroyNPC()
    self:ClearNarratorTask()
    self:StopNarrator()
    self:CallDelay(0.2, function(arg1)
        arg1:NarratorOnlyTaskByData(clientData.Clue1NarratorWithId, nil)
    end)
end

function Quest484:OnSubFinish48405(arg1)
    print("48405 Finish  ")
    self:UnSpawn("effectClue2")
end

function Quest484:OnSubFinish48406(arg1)
    print("48406 Finish  ")
    self:DestroyNPC()
    if self:GetSubQuestState(48409) ~= 3 then
        if self:GetSubQuestState(48410) ~= 3 then
            self:ClearNarratorTask()
            self:StopNarrator()
            self:CallDelay(0.2, function(arg1)
                arg1:NarratorOnlyTaskByData(clientData.Clue2NarratorWithId, nil)
            end)
        end
    end
end

function Quest484:OnSubFinish48407(arg1)
    print("48407 Finish  ")
    self:UnSpawn("effectClue3")
    if self:GetSubQuestState(48403) == 3 then
        if actorMgr:GetActor(clientData.ActorAlias) ~= nil then
            actorUtils.FinishQuestID(false, 48405)
        end
    end
end

function Quest484:OnSubFinish48408(arg1)
    print("48408 Finish  ")
    self:DestroyNPC()
    self:ClearNarratorTask()
    self:StopNarrator()
    self:CallDelay(0.2, function(arg1)
        arg1:NarratorOnlyTaskByData(clientData.Clue3NarratorWithId, nil)
    end)
end

function Quest484:OnSubFinish48409(arg1)
    print("48409 Finish  ")
    self:DestroyNPC()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 48411)
    end
end

function Quest484:OnSubFinish48410(arg1)
    print("48410 Finish  ")
    self:DestroyNPC()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 48411)
    end
end

function Quest484:OnSubFinish48411(arg1)
    print("48411 Finish  ")
    self:UnSpawn("q484Clue1")
    self:UnSpawn("effectClue1")
    self:UnSpawn("q484Clue2")
    self:UnSpawn("effectClue2")
    self:UnSpawn("q484Clue3")
    self:UnSpawn("effectClue3")
end

function Quest484:OnSubFinish48417(arg1)
    print("48417 Finish  ")
    self:DestroyNPC()
end

function Quest484:OnSubFinish48423(arg1)
    print("48423 Finish  ")
    self:DestroyNPC()
    self:NotifyTo("Npc1549", DailyNPCManager.NpcEventType.STARTDAILY, true)
    local questNpcActor = self:GetQuestNpcActor(witnessData.Civil)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest484:OnSubFinish48432(arg1)
    print("48432 Finish  ")
    self:DestroyNPC()
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor("Npc1256")
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end
    end)
end

function Quest484:Start() end
function Quest484:OnDestroy() end
return Quest484

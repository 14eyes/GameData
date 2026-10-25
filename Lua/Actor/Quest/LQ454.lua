require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest454 = class("Quest454", QuestActorProxy)
Quest454.defaultAlias = "Quest454"
local DailyNPCManager = require("Actor/DailyNPCManager")

local clientData
local subIDs
local n = 454
local paimonData
local amborData
local razorData
local wolfWoundData
local wolfBossData
local farmer1Data
local farmer2Data
local herbData
local bloodHintData

function Quest454:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    n = 454
    paimonData = clientData.PaimonData
    amborData = clientData.AmborData
    razorData = clientData.RazorData
    wolfWoundData = clientData.WolfWoundData
    wolfBossData = clientData.WolfBossData
    farmer1Data = clientData.Farmer1Data
    farmer2Data = clientData.Farmer2Data
    herbData = clientData.HerbData
    bloodHintData = clientData.BloodHintData
end

function Quest454:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["45407"] = self.OnSubStart45407
    self.subStartHandlers["45401"] = self.OnSubStart45401
    self.subStartHandlers["45410"] = self.OnSubStart45410
    self.subStartHandlers["45411"] = self.OnSubStart45411
    self.subStartHandlers["45412"] = self.OnSubStart45412
    self.subStartHandlers["45413"] = self.OnSubStart45413
    self.subStartHandlers["45414"] = self.OnSubStart45414
    self.subStartHandlers["45408"] = self.OnSubStart45408
    self.subStartHandlers["45409"] = self.OnSubStart45409
    self.subStartHandlers["45415"] = self.OnSubStart45415
    self.subStartHandlers["45402"] = self.OnSubStart45402
    self.subStartHandlers["45403"] = self.OnSubStart45403
    self.subStartHandlers["45404"] = self.OnSubStart45404
    self.subStartHandlers["45416"] = self.OnSubStart45416
    self.subStartHandlers["45417"] = self.OnSubStart45417
    self.subStartHandlers["45405"] = self.OnSubStart45405
    self.subStartHandlers["45406"] = self.OnSubStart45406
end

function Quest454:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["45407"] = self.OnSubFinish45407
    self.subFinishHandlers["45401"] = self.OnSubFinish45401
    self.subFinishHandlers["45410"] = self.OnSubFinish45410
    self.subFinishHandlers["45411"] = self.OnSubFinish45411
    self.subFinishHandlers["45412"] = self.OnSubFinish45412
    self.subFinishHandlers["45413"] = self.OnSubFinish45413
    self.subFinishHandlers["45414"] = self.OnSubFinish45414
    self.subFinishHandlers["45408"] = self.OnSubFinish45408
    self.subFinishHandlers["45409"] = self.OnSubFinish45409
    self.subFinishHandlers["45415"] = self.OnSubFinish45415
    self.subFinishHandlers["45402"] = self.OnSubFinish45402
    self.subFinishHandlers["45403"] = self.OnSubFinish45403
    self.subFinishHandlers["45404"] = self.OnSubFinish45404
    self.subFinishHandlers["45416"] = self.OnSubFinish45416
    self.subFinishHandlers["45417"] = self.OnSubFinish45417
    self.subFinishHandlers["45405"] = self.OnSubFinish45405
    self.subFinishHandlers["45406"] = self.OnSubFinish45406
end

function Quest454:PaimonDis()
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest454:PaimonDelay()
    self:CallDelay(0.2, self.PaimonDis)
end

function Quest454:InvokeOnAbility(arg1)
    print("InvokeOnAbility*******")
    print("LupiBoreas_BattleFinished*******" .. arg1.valueString)
    if arg1.valueString == "LupiBoreas_BattleFinished" then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        print("LupiBoreas_BattleFinished*******" .. arg1.valueString)
        print("PlayCutscene454")
        self:PlayCutsceneIndex(45401, function(arg1)
            local entityCreateTask = curtainUtils.CreateEntityCreateTask({wolfBossData.Alias, amborData.Alias, razorData.Alias})
            actor:TransmitPlayerByQuestId(45406, 1, nil, function(arg1)
                actor:CreateQuestNpcById(45406, wolfBossData.ID)
                actor:CreateQuestNpcById(45406, razorData.ID)
                actor:GetQuestNpcActor(razorData.Alias):DoFreeStyle(1180)
                actor:CreateQuestNpcById(45406, amborData.ID)
                actor:GetQuestNpcActor(amborData.Alias):DoFreeStyle(1120)
                arg1:RequestInteraction(razorData.Alias)
            end)
        end)

        local v = actorMgr:GetActor(clientData.ActorAlias)
        if v ~= nil then
            v:FinishQuestID(false, 45417)
        end

        self:CallDelay(2, function(arg1)
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                actor:FinishQuestID(false, 45405)
            end
        end)
    end
end

function Quest454:OnSubStart45407(arg1)
    self:CreateQuestNpc(arg1, razorData.ID)
    self:GetQuestNpcActor(razorData.Alias):DoFreeStyle(1120)
    self:CreateQuestNpc(arg1, amborData.ID)
    self:GetQuestNpcActor(amborData.Alias):DoFreeStyle(1170)
end

function Quest454:OnSubStart45401(arg1) end

function Quest454:OnSubStart45410(arg1)
    print("45410 start:...")
    self:SpawnGadget(arg1, bloodHintData.ID)
end

function Quest454:OnSubStart45411(arg1)
    print("45411 start:...")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({amborData.Alias, razorData.Alias})
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    globalActor:UnSpawn("BloodHint")
    self:SpawnGadget(arg1, bloodHintData.ID)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, razorData.ID)
        arg1_2:GetQuestNpcActor(razorData.Alias):DoFreeStyle(1190)
        arg1_2:CreateQuestNpc(arg1, amborData.ID)
        arg1_2:GetQuestNpcActor(amborData.Alias):DoFreeStyle(1190)
        actor:TransmitPlayerByQuestId(45411, 1)
    end, nil, entityCreateTask)
end

function Quest454:OnSubStart45412(arg1)
    actorMgr:CreateActorWithPos("Q45412Trigger", "Actor/Gadget/Q45412Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q45413PlayPos").pos, sceneData:GetDummyPoint(3, "Q45413PlayPos").rot, true, false)
end

function Quest454:OnSubStart45413(arg1) end

function Quest454:OnSubStart45414(arg1)
    print("45414 start:...")
    self:ActionSafeCall(function(arg1_2)
        if arg1_2:GetQuestNpcActor(wolfWoundData.Alias) ~= nil then
            arg1_2:DestroyQuestNpcActorByAlias(wolfWoundData.Alias, false)
        end

        arg1_2:CallDelay(0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, wolfWoundData.ID)
        end)

        if arg1_2:GetQuestNpcActor(razorData.Alias) ~= nil then
            arg1_2:DestroyQuestNpcActorByAlias(razorData.Alias, false)
        end

        arg1_2:CallDelay(0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, razorData.ID)
            arg1_2:GetQuestNpcActor(razorData.Alias):DoFreeStyle(1190)
        end)

        if arg1_2:GetQuestNpcActor(amborData.Alias) ~= nil then
            arg1_2:DestroyQuestNpcActorByAlias(amborData.Alias, false)
        end

        arg1_2:CallDelay(0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, amborData.ID)
            arg1_2:GetQuestNpcActor(amborData.Alias):DoFreeStyle(1190)
        end)
    end)
end

function Quest454:OnSubStart45408(arg1) end
function Quest454:OnSubStart45409(arg1) end
function Quest454:OnSubStart45415(arg1) end

function Quest454:OnSubStart45402(arg1)
    print("45402 start:...")
    self:ActionSafeCall(function(arg1)
        arg1:CallDelay(5, function(arg1)
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                print("wancheng 45402")
                actor:FinishQuestID(false, 45402)
            end
        end)
    end)
end

function Quest454:OnSubStart45403(arg1)
    print("45403 start:...")
end

function Quest454:OnSubStart45404(arg1) end

function Quest454:OnSubStart45416(arg1)
    print("45416 start:...")
    print("\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\14845416:Finishi Quest 45403\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 45403)
    end

    actorMgr:CreateActorWithPos("Q45416Trigger", "Actor/Gadget/Q45416Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q454BossFight").pos, sceneData:GetDummyPoint(3, "Q454BossFight").rot, true, false)
end

function Quest454:OnSubStart45417(arg1) end

function Quest454:OnSubStart45405(arg1)
    print("45405 start:...")
    actorMgr:CreateActorWithPos("Q45405Trigger", "Actor/Gadget/Q45405Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q454BossFight").pos, sceneData:GetDummyPoint(3, "Q454BossFight").rot, true, false)
end

function Quest454:OnSubStart45406(arg1) end
function Quest454:OnSubFinish45407(arg1) end

function Quest454:OnSubFinish45401(arg1)
    self:ActionSafeCall(self.PaimonDelay)
    if self:GetQuestNpcActor(razorData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(razorData.Alias, false)
        end)
    end

    if self:GetQuestNpcActor(amborData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(amborData.Alias, false)
        end)
    end
end

function Quest454:OnSubFinish45410(arg1) end

function Quest454:OnSubFinish45411(arg1)
    globalActor:UnSpawn("BloodHint")
    if self:GetQuestNpcActor(razorData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(razorData.Alias, false)
        end)
    end

    if self:GetQuestNpcActor(amborData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(amborData.Alias, false)
        end)
    end

    self:ActionSafeCall(self.PaimonDelay)
end

function Quest454:OnSubFinish45412(arg1) end

function Quest454:OnSubFinish45413(arg1)
    self:ActionSafeCall(self.PaimonDelay)
end

function Quest454:OnSubFinish45414(arg1) end

function Quest454:OnSubFinish45408(arg1)
    print("OnFinished 45408")
    self:NarratorOnlyTaskLegacy(clientData.NarratorFlow1)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q454PawPrint").pos, 2, 2, true)
end

function Quest454:OnSubFinish45409(arg1)
    print("OnFinished 45409")
    self:NarratorOnlyTaskLegacy(clientData.NarratorFlow2)
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q454FootPrint").pos, 2, 2, true)
end

function Quest454:OnSubFinish45415(arg1)
    self:ActionSafeCall(self.PaimonDis)
end

function Quest454:OnSubFinish45402(arg1) end

function Quest454:OnSubFinish45403(arg1)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1.GetQuestNpcActor(arg1, farmer1Data.Alias)
        if questNpcActor ~= nil then
            questNpcActor:RunToTask(farmer1Data.BornPos, function(arg1_2, arg2)
                arg1:DestroyQuestNpcActorByAlias(farmer1Data.Alias, false)
            end)
        end

        local v = arg1.GetQuestNpcActor(arg1, farmer2Data.Alias)
        if v ~= nil then
            v:RunToTask(farmer2Data.BornPos, function(arg1_2, arg2)
                arg1:DestroyQuestNpcActorByAlias(farmer2Data.Alias, false)
            end)
        end

        local questNpcActor2 = arg1.GetQuestNpcActor(arg1, razorData.Alias)
        questNpcActor2:EnableHeadCtrl(true)
        if questNpcActor2 ~= nil then
            arg1.DestroyQuestNpcActorByAlias(arg1, razorData.Alias, false)
        end

        if arg1.GetQuestNpcActor(arg1, amborData.Alias) ~= nil then
            arg1.DestroyQuestNpcActorByAlias(arg1, amborData.Alias, false)
        end

        if arg1.GetQuestNpcActor(arg1, wolfWoundData.Alias) ~= nil then
            arg1.DestroyQuestNpcActorByAlias(arg1, wolfWoundData.Alias, false)
        end
    end)

    self:ActionSafeCall(self.PaimonDelay)
end

function Quest454:OnSubFinish45416(arg1) end
function Quest454:OnSubFinish45417(arg1) end
function Quest454:OnSubFinish45404(arg1) end

function Quest454:OnSubFinish45405(arg1)
    print("OnFinished 45405")
end

function Quest454:OnSubFinish45406(arg1)
    if self:GetQuestNpcActor(wolfBossData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(wolfBossData.Alias, false)
        end)
    end

    if self:GetQuestNpcActor(razorData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(razorData.Alias, false)
        end)
    end

    if self:GetQuestNpcActor(amborData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(amborData.Alias, false)
        end)
    end

    self:ActionSafeCall(self.PaimonDelay)
end

function Quest454:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("45411:DIALOG 45411")
        globalActor:UnSpawn("BloodHint")
    end

    if arg1 == 2 then
        print("45403:**********Quest 45403")
    end

    if arg1 == 3 then
        print("45406:**********Quest 45406")
    end

    if arg1 == 4 then
        print("45401:**********Quest 45401")
    end

    if arg1 == 6 then
        print("\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\14845404:Finishi Quest 45404\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 45404)
        end

        print("\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148INVOKE:Finishi Quest 45403\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148\226\128\148")
        local v = actorMgr:GetActor(clientData.ActorAlias)
        if v ~= nil then
            v:FinishQuestID(false, 45403)
        end
    end
end

function Quest454:Start() end
function Quest454:OnDestroy() end
return Quest454

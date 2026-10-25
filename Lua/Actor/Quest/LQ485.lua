require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest485 = class("Quest485", QuestActorProxy)
Quest485.defaultAlias = "Quest485"
local clientData
local subIDs
local amborData
local windUpData
local windCushionData
local windData
local initRisingWind
local flag = false
local n = 0
local v = false
local flag2 = false

function Quest485:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    amborData = clientData.AmborData
    windUpData = clientData.WindUpData
    windCushionData = clientData.WindCushionData
    windData = clientData.WindData
    initRisingWind = clientData.InitRisingWind
end

function Quest485:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["48501"] = self.OnSubStart48501
    self.subStartHandlers["48511"] = self.OnSubStart48511
    self.subStartHandlers["48509"] = self.OnSubStart48509
    self.subStartHandlers["48512"] = self.OnSubStart48512
    self.subStartHandlers["48510"] = self.OnSubStart48510
    self.subStartHandlers["48502"] = self.OnSubStart48502
    self.subStartHandlers["48503"] = self.OnSubStart48503
    self.subStartHandlers["48504"] = self.OnSubStart48504
    self.subStartHandlers["48505"] = self.OnSubStart48505
    self.subStartHandlers["48506"] = self.OnSubStart48506
    self.subStartHandlers["48507"] = self.OnSubStart48507
    self.subStartHandlers["48508"] = self.OnSubStart48508
end

function Quest485:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["48501"] = self.OnSubFinish48501
    self.subFinishHandlers["48511"] = self.OnSubFinish48511
    self.subFinishHandlers["48502"] = self.OnSubFinish48502
    self.subFinishHandlers["48503"] = self.OnSubFinish48503
    self.subFinishHandlers["48504"] = self.OnSubFinish48504
    self.subFinishHandlers["48505"] = self.OnSubFinish48505
    self.subFinishHandlers["48506"] = self.OnSubFinish48506
    self.subFinishHandlers["48507"] = self.OnSubFinish48507
    self.subFinishHandlers["48508"] = self.OnSubFinish48508
end

function Quest485:CreateAmbor()
    self:CreateQuestNpcById(48503, amborData.AmborID)
    print("Ambor Born")
    self:RequestInteraction(amborData.Ambor)
end

function Quest485:CreateAmbor1()
    self:CreateQuestNpcById(48511, amborData.AmborID)
    print("Ambor Born")
end

function Quest485:CreateAmbor2()
    self:CreateQuestNpcById(48506, amborData.AmborID)
    print("Ambor Born")
    self:RequestInteraction(amborData.Ambor)
end

function Quest485:AmborVanish()
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(amborData.Ambor)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        local v = arg1:GetQuestNpcActor("1485")
        if v ~= nil then
            v:Destroy(false)
        end

        local questNpcActor2 = arg1:GetQuestNpcActor("Paimon")
        if questNpcActor2 ~= nil then
            questNpcActor2:DestroyWithDisappear(false)
        end
    end)
end

function Quest485:Interaction()
    self:RequestInteraction(amborData.Ambor)
    print("Black Callback NOW")
end

function Quest485:CheckHight()
    print("check start:...")
    local avatarPos = actorUtils.GetAvatarPos()
    if avatarPos.y < 12 then
        local x = avatarPos.x
        if -45 < x then
            if avatarPos.x < 14 then
                local z = avatarPos.z
                if -40 < z then
                    if avatarPos.z < 10 then
                        if flag2 == false then
                            self:ClearNarratorTask()
                            self:StopNarrator()
                            self:NarratorOnlyTaskByData(clientData.NarratorPreWithList, nil)
                            flag2 = true
                        end
                    end
                end
            end
        end
    end

    if avatarPos.y < 5 then
        local y = avatarPos.y
        if -10 < y then
            local x = avatarPos.x
            if -45 < x then
                if avatarPos.x < 14 then
                    local z = avatarPos.z
                    if -40 < z then
                        if avatarPos.z < 10 then
                            flag = true
                            local tbl = {x = 0, y = 0, z = 0}
                            local v2 = avatarPos
                            v2.y = v2.y - 10
                            n = n + 1
                            self:SpawnGadgetByIdWithPos(48504, 40200020, 2, v2, M.Dir2Euler(tbl), "Flow" .. tostring(n))
                            globalActor:EnablePlayerInput(false)
                            self:CallDelay(2, function()
                                globalActor:EnablePlayerInput(true)
                            end)

                            if v == false then
                                self:ClearNarratorTask()
                                self:StopNarrator()
                                self:CallDelay(0.2, function(arg1)
                                    arg1:NarratorOnlyTaskByData(clientData.NarratorWithList, nil)
                                end)

                                local v3 = v2
                                v3.x = v3.x - 5
                                self:EnterSceneLookCamera(v3, 3, 1.5, true)
                                v = true
                            end

                            self:CallDelay(2.1, self.DestroyFlow)
                            print("Low Low:...")
                        end
                    end
                end
            end
        end
    else
        flag = false
        print("High High:...")
    end

    if avatarPos.y < -10 then
        local x = avatarPos.x
        if -45 < x then
            if avatarPos.x < 14 then
                local z = avatarPos.z
                if -40 < z then
                    if avatarPos.z < 10 then
                        local actor = actorMgr:GetActor(clientData.ActorAlias)
                        actor:ClearNarratorTask()
                        actor:StopNarrator()
                    end
                end
            end
        end
    end

    if flag == true then
        self:CallDelay(2.5, self.CheckHightOut)
    else
        self:CallDelay(1, self.CheckHightOut)
    end
end

function Quest485:CheckHightOut()
    if actorMgr:GetActor(clientData.ActorAlias) ~= nil then
        if self:GetSubQuestState(48506) ~= 3 then
            if self:GetSubQuestState(48510) == 3 then
                self:CheckHight()
            end
        end
    end
end

function Quest485:DestroyFlow()
    self:UnSpawn("Flow" .. tostring(n))
end

function Quest485:OnSubStart48501(arg1)
    print("48501 start:...")
end

function Quest485:OnSubStart48511(arg1)
    print("48511 start:...")
    self:CreateQuestNpcWithTriggerBlackEx("Q48511N1002Trigger", 48511, amborData.AmborID, 0, 20, 0, 2, 2)
end

function Quest485:RequestAmbor()
    print("RequestAmbor")
    self:RequestInteraction(amborData.Ambor)
end

function Quest485:OnSubStart48509(arg1)
    print("48209 start:...")
    local tbl = {x = 0, y = 0, z = 0}
    windCushionData.bornPos.y = windCushionData.bornPos.y
    self:TriggerLevelAbility("Avatar_Test_FlyingBomber")
    self:TriggerLevelAbility("Avatar_Player_StaminaReduced")
    self:EnterBomberMode()
end

function Quest485:OnSubStart48512(arg1)
    print("48512 start:...")
    self:NarratorOnlyTaskByData(clientData.FirstNarratorWithList, nil)
    self:CallDelay(6, function()
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 48512)
        end
    end)
end

function Quest485:OnSubStart48510(arg1)
    print("48510 start:...")
    self:ExitBomberMode()
    self:TriggerLevelAbility("Level_Remove_Avatar_Test_FlyingBomber")
end

function Quest485:OnSubStart48502(arg1)
    print("48502 start:...")
    actorMgr:CreateActorWithPos("Q485Trigger", "Actor/Gadget/Q485Trigger", 70900002, 0, sceneData:GetDummyPoint(1016, "Q48503Ambor").pos, sceneData:GetDummyPoint(1016, "Q48503Ambor").rot, true, false, 1016)
end

function Quest485:OnSubStart48503(arg1)
    print("48503 start:...")
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({amborData.Ambor})
    self:ShowBlackScreen(1.0, 0.5, 0.0, self.CreateAmbor, nil, questNpcCreateTask)
end

function Quest485:OnSubStart48504(arg1)
    print("48504 start:...")
    self:CheckHightOut()
    self:SpawnGadget(arg1, 70900201)
    actorMgr:CreateActorWithPos("Q485Trigger", "Actor/Gadget/Q485Trigger", 70900002, 0, sceneData:GetDummyPoint(1016, "Q48504Area").pos, sceneData:GetDummyPoint(1016, "Q48504Area").rot, true, false, 1016)
end

function Quest485:OnSubStart48505(arg1)
    print("48505 start:...")
    v = true
    flag2 = true
    self:CheckHightOut()
end

function Quest485:OnSubStart48506(arg1)
    print("48506 start:...")
    self:CallDelay(1.5, function(arg1)
        local questNpcCreateTask = arg1:CreateQuestNpcCreateTask({amborData.Ambor})
        arg1:ShowBlackScreen(1.0, 0.5, 0.0, arg1.CreateAmbor2, nil, questNpcCreateTask)
    end)
end

function Quest485:OnSubStart48507(arg1)
    print("48507 start:...")
end

function Quest485:OnSubStart48508(arg1)
    print("48508 start:...")
    self:CreateQuestNpc(arg1, amborData.AmborID)
end

function Quest485:OnSubFinish48501(arg1)
    print("OnFinished 48501")
end

function Quest485:OnSubFinish48511(arg1)
    print("OnFinished 48511")
    self:AmborVanish()
    self:ActionSafeCall(function(arg1)
        arg1:CallDelay(1, function(arg1)
            arg1:ShowTutorialDialog(235)
        end)
    end)
end

function Quest485:OnSubFinish48502(arg1)
    print("OnFinished 48502")
end

function Quest485:OnSubFinish48503(arg1)
    print("OnFinished 48503")
    self:AmborVanish()
    local questNpcActor = self:GetQuestNpcActor("Npc1485")
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    flag = false
    v = false
    flag2 = false
end

function Quest485:OnSubFinish48504(arg1)
    print("OnFinished 48504")
    self:UnSpawn("Goal")
end

function Quest485:OnSubFinish48505(arg1)
    print("OnFinished 48505")
end

function Quest485:OnSubFinish48506(arg1)
    print("OnFinished 48506")
    self:AmborVanish()
    self:ActionSafeCall(function(arg1)
        arg1:CallDelay(2, function(arg1)
            arg1:NarratorOnlyTaskByData(clientData.FinishNarratorWithList, nil)
        end)
    end)
end

function Quest485:OnSubFinish48507(arg1)
    print("OnFinished 48507")
end

function Quest485:OnSubFinish48508(arg1)
    print("OnFinished 48508")
    self:AmborVanish()
end

function Quest485:Start() end
function Quest485:OnDestroy() end
return Quest485

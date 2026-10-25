require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest482 = class("Quest482", QuestActorProxy)
Quest482.defaultAlias = "Quest482"
local Q482ClientConfig = require("Quest/Client/Q482ClientConfig")

local subIDs = Q482ClientConfig.SubIDs
local amborData = Q482ClientConfig.AmborData
local windCushionData = Q482ClientConfig.WindCushionData
local windData = Q482ClientConfig.WindData
local initRisingWind = Q482ClientConfig.InitRisingWind

function Quest482:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["48201"] = self.OnSubStart48201
    self.subStartHandlers["48202"] = self.OnSubStart48202
    self.subStartHandlers["48203"] = self.OnSubStart48203
    self.subStartHandlers["48209"] = self.OnSubStart48209
    self.subStartHandlers["48207"] = self.OnSubStart48207
    self.subStartHandlers["48204"] = self.OnSubStart48204
    self.subStartHandlers["48208"] = self.OnSubStart48208
    self.subStartHandlers["48205"] = self.OnSubStart48205
end

function Quest482:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["48201"] = self.OnSubFinish48201
    self.subFinishHandlers["48202"] = self.OnSubFinish48202
    self.subFinishHandlers["48203"] = self.OnSubFinish48203
    self.subFinishHandlers["48204"] = self.OnSubFinish48204
    self.subFinishHandlers["48205"] = self.OnSubFinish48205
end

function Quest482:StartCount()
    local n = 999
    self:CountDownUIStart(n, 10, 3)
    self:CallDelay(n + 4, self.CountDown)
end

function Quest482:CountDown()
    local actor = actorMgr:GetActor(Q482ClientConfig.ActorAlias)
    if actor ~= nil then
        print("FlyingTest fail")
        actor:FinishQuestID(true, 48209)
    end
end

function Quest482:CreateAmbor()
    actorMgr:CreateActorWithPos(amborData.Ambor, amborData.AmborScript, amborData.AmborID, 0, amborData.bornPos, amborData.bornDir, true)
    print("Ambor Born")
end

function Quest482:AmborVanish()
    self:ActionSafeCall(function(arg1)
        local actor = actorMgr:GetActor(amborData.Ambor)
        if actor ~= nil then
            actor:Destroy(false)
        end
    end)
end

function Quest482:Interaction()
    self:RequestInteraction(amborData.Ambor)
    print("Black Callback NOW")
end

function Quest482:AdvanceQuest()
    local actor = actorMgr:GetActor(Q482ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest482:FailQuest()
    local actor = actorMgr:GetActor(Q482ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(true, nil)
    end
end

function Quest482:OnSubStart48201(arg1)
    print("48201 start:...")
    actorMgr:CreateActorWithPos(amborData.Ambor, amborData.AmborScript, amborData.AmborID, 0, amborData.bornPos, amborData.bornDir, true)
    actorMgr:CreateActorWithPos("Q482Trigger", "Actor/Gadget/Q482Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q48202Ambor").pos, sceneData:GetDummyPoint(3, "Q48202Ambor").rot, true, false)
end

function Quest482:OnSubStart48202(arg1)
    print("48202 start:...")
end

function Quest482:OnSubStart48203(arg1)
    print("48203 start:...")
end

function Quest482:OnSubStart48209(arg1)
    print("48209 start:...")
    local tbl = {x = 0, y = 0, z = 0}
    self:ActionSafeCall(self.StartCount)
    windCushionData.bornPos.y = windCushionData.bornPos.y
    for i = 1, #Q482ClientConfig.Flyline1 - 1 do
        local v = {
            x = Q482ClientConfig.Flyline1[i + 1].x - Q482ClientConfig.Flyline1[i].x,
            y = Q482ClientConfig.Flyline1[i + 1].y - Q482ClientConfig.Flyline1[i].y,
            z = Q482ClientConfig.Flyline1[i + 1].z - Q482ClientConfig.Flyline1[i].z
        }
    end

    self:TriggerLevelAbility("Avatar_Test_FlyingBomber")
    self:TriggerLevelAbility("Avatar_Player_StaminaReduced")
    self:EnterBomberMode()
end

function Quest482:OnSubStart48207(arg1)
    print("48207 start:...")
    self:UnCallFunc(self.CountDown)
    self:CountDownUITerminate()
    self:ExitBomberMode()
    self:TriggerLevelAbility("Level_Remove_Avatar_Test_FlyingBomber")
end

function Quest482:OnSubStart48204(arg1)
    print("48204 start:...")
    self:CallDelay(2, self.CreateAmbor)
end

function Quest482:OnSubStart48208(arg1)
    print("48208 start:...")
    self:UnCallFunc(self.CountDown)
    self:CountDownUITerminate()
    self:CallDelay(3, function(arg1) end)
    self:ExitBomberMode()
    self:TriggerLevelAbility("Level_Remove_Avatar_Test_FlyingBomber")
end

function Quest482:OnSubStart48205(arg1)
    print("48205 start:...")
    self:CallDelay(2, self.CreateAmbor)
end

function Quest482:OnSubFinish48201(arg1)
    print("OnFinished 48201")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({amborData.Ambor})
    self:ShowBlackScreen(1.0, 0.5, 0.0, self.CreateAmbor, self.Interaction, entityCreateTask)
end

function Quest482:OnSubFinish48202(arg1)
    print("OnFinished 48202")
    self:AmborVanish()
end

function Quest482:OnSubFinish48203(arg1)
    print("OnFinished 48203")
end

function Quest482:OnSubFinish48204(arg1)
    print("OnFinished 48204")
    self:AmborVanish()
end

function Quest482:OnSubFinish48205(arg1)
    print("OnFinished 48205")
    self:ActionSafeCall(function(arg1)
        local actor = actorMgr:GetActor(amborData.Ambor)
        if actor ~= nil then
            actor:Destroy(false)
        end

        actorMgr:CreateActorWithPos(amborData.Ambor, amborData.AmborScript, amborData.AmborID, 0, sceneData:GetDummyPoint(3, "Ambor_FlyBegin").pos, sceneData:GetDummyPoint(3, "Ambor_FlyBegin").pos, true, false)
    end)
end

function Quest482:Start() end
function Quest482:OnDestroy() end
return Quest482

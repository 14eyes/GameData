require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest1014 = class("Quest1014", QuestActorProxy)
Quest1014.defaultAlias = "Quest1014"
local clientData
local subIDs
local zhongliData
local paimonData
local pllData
local stackData
local potData
local DailyNPCManager = require("Actor/DailyNPCManager")

function Quest1014:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    zhongliData = clientData.ZhongliData
    paimonData = clientData.PaimonData
    pllData = clientData.PllData
    stackData = clientData.StackData
    potData = clientData.PotData
end

function Quest1014:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["101401"] = self.OnSubStart101401
    self.subStartHandlers["101402"] = self.OnSubStart101402
    self.subStartHandlers["101403"] = self.OnSubStart101403
    self.subStartHandlers["101404"] = self.OnSubStart101404
    self.subStartHandlers["101405"] = self.OnSubStart101405
    self.subStartHandlers["101406"] = self.OnSubStart101406
    self.subStartHandlers["101407"] = self.OnSubStart101407
    self.subStartHandlers["101408"] = self.OnSubStart101408
end

function Quest1014:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["101401"] = self.OnSubFinish101401
    self.subFinishHandlers["101402"] = self.OnSubFinish101402
    self.subFinishHandlers["101403"] = self.OnSubFinish101403
    self.subFinishHandlers["101404"] = self.OnSubFinish101404
    self.subFinishHandlers["101405"] = self.OnSubFinish101405
    self.subFinishHandlers["101406"] = self.OnSubFinish101406
    self.subFinishHandlers["101407"] = self.OnSubFinish101407
    self.subFinishHandlers["101408"] = self.OnSubFinish101408
end

function Quest1014:PaimonVanish()
    print("paimon vanish")
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    questNpcActor:AirModeOff()
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest1014:PllDestroy()
    local questNpcActor = self:GetQuestNpcActor(pllData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1014:ZhongliDestroy()
    local questNpcActor = self:GetQuestNpcActor(zhongliData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1014:PotDestroy()
    local questNpcActor = self:GetQuestNpcActor(potData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1014:InvokeOnInteraction(arg1)
    print("1014 Invoke : ")
    if arg1 == 1 then
        print("Invoke 1")
        self:CallDelay(0.5, function(arg1)
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                actor:FinishQuestID(false, 101404)
            end
        end)
    end

    if arg1 == 2 then
        print("Invoke 2")
        self:PlayEffect("Eff_EnterTeapot_Smoke", sceneData:GetDummyPoint(3, "Q1014Effect1").pos)
        self:CallDelay(2, function(arg1)
            arg1:PlayEffect("Eff_EnterTeapot_Surrounding", sceneData:GetDummyPoint(3, "Q101405Born").pos)
        end)

        self:CallDelay(7.3, function(arg1)
            arg1:PlayEffect("Eff_EnterTeapot_Absorb", sceneData:GetDummyPoint(3, "Q1014Effect3").pos)
        end)
    end

    if arg1 == 3 then
        print("Invoke 3")
    end
end

function Quest1014:OnSubStart101401(arg1)
    print("101401 start:...")
    self:NotifyTo("Npc2093", NpcUtil.NpcEventType.HIDESELF, true)
    self:SpawnGadget(arg1, 71700108, 1)
    self:SpawnGadget(arg1, 71700108, 2)
    self:CreateQuestNpc(arg1, pllData.ID)
end

function Quest1014:OnSubStart101406(arg1)
    print("101404 start:...")
    self:NotifyTo("Npc2093", NpcUtil.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, potData.ID)
end

function Quest1014:OnSubStart101402(arg1)
    print("101402 start:...")
    self:NotifyTo("Npc2093", NpcUtil.NpcEventType.HIDESELF, true)
    globalActor:PlayerEnterDungeon(175, 11)
end

function Quest1014:OnSubStart101403(arg1)
    print("101403 start:...")
    self:NotifyTo("Npc2093", NpcUtil.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, pllData.ID)
    self:SpawnGadget(arg1, 71700108, 1)
    self:SpawnGadget(arg1, 71700108, 2)
end

function Quest1014:OnSubStart101404(arg1)
    print("101404 start:...")
    self:CreateQuestNpc(arg1, zhongliData.ID)
end

function Quest1014:OnSubStart101405(arg1)
    print("101404 start:...")
end

function Quest1014:OnSubStart101407(arg1)
    print("101404 start:...")
end

function Quest1014:OnSubStart101408(arg1)
    print("101404 start:...")
end

function Quest1014:OnSubFinish101401(arg1)
    print("OnFinished 101401")
    self:ActionSafeCall(self.PaimonVanish)
    self:NarratorOnlyTaskLegacy(clientData.NarratorData0, nil, "StoryCut")
    globalActor:UnSpawn("Q101401Lily1")
    globalActor:UnSpawn("Q101401Lily2")
end

function Quest1014:OnSubFinish101402(arg1)
    print("OnFinished 101402")
end

function Quest1014:OnSubFinish101403(arg1)
    print("OnFinished 101403")
    self:ActionSafeCall(self.PaimonVanish)
    globalActor:UnSpawn("Q101401Lily1")
    globalActor:UnSpawn("Q101401Lily2")
end

function Quest1014:OnSubFinish101404(arg1)
    print("OnFinished 101404")
end

function Quest1014:OnSubFinish101405(arg1)
    print("OnFinished 101404")
end

function Quest1014:OnSubFinish101406(arg1)
    print("101404 start:...")
    self:ActionSafeCall(self.PotDestroy)
end

function Quest1014:OnSubFinish101407(arg1)
    print("101404 start:...")
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.PllDestroy)
    self:ActionSafeCall(self.ZhongliDestroy)
    self:NotifyTo("Npc2093", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest1014:OnSubFinish101408(arg1)
    print("OnFinished 101404")
end

function Quest1014:Start() end
function Quest1014:OnDestroy() end
return Quest1014

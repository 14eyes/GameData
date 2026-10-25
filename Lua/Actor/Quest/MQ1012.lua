require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest1012 = class("Quest1012", QuestActorProxy)
Quest1012.defaultAlias = "Quest1012"
local clientData
local subIDs
local n = 1012
local paimonData
local zhongliData
local bolaiData
local lanjieData
local qimingData
local yingerData
local pointData01
local pointData02
local pointData03
local bucketData
local v
local DailyNPCManager = require("Actor/DailyNPCManager")

function Quest1012:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    n = 1012
    paimonData = clientData.PaimonData
    zhongliData = clientData.ZhongliData
    bolaiData = clientData.BolaiData
    lanjieData = clientData.LanjieData
    qimingData = clientData.QimingData
    yingerData = clientData.YingerData
    pointData01 = clientData.PointData01
    pointData02 = clientData.PointData02
    pointData03 = clientData.PointData03
    bucketData = clientData.BucketData
    v = clientData.PaimonData
end

function Quest1012:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["101201"] = self.OnSubStart101201
    self.subStartHandlers["101202"] = self.OnSubStart101202
    self.subStartHandlers["101203"] = self.OnSubStart101203
    self.subStartHandlers["101204"] = self.OnSubStart101204
    self.subStartHandlers["101205"] = self.OnSubStart101205
    self.subStartHandlers["101206"] = self.OnSubStart101206
    self.subStartHandlers["101207"] = self.OnSubStart101207
    self.subStartHandlers["101208"] = self.OnSubStart101208
    self.subStartHandlers["101209"] = self.OnSubStart101209
    self.subStartHandlers["101210"] = self.OnSubStart101210
    self.subStartHandlers["101211"] = self.OnSubStart101211
    self.subStartHandlers["101212"] = self.OnSubStart101212
    self.subStartHandlers["101213"] = self.OnSubStart101213
    self.subStartHandlers["101214"] = self.OnSubStart101214
    self.subStartHandlers["101215"] = self.OnSubStart101215
end

function Quest1012:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["101201"] = self.OnSubFinish101201
    self.subFinishHandlers["101202"] = self.OnSubFinish101202
    self.subFinishHandlers["101203"] = self.OnSubFinish101203
    self.subFinishHandlers["101204"] = self.OnSubFinish101204
    self.subFinishHandlers["101205"] = self.OnSubFinish101205
    self.subFinishHandlers["101206"] = self.OnSubFinish101206
    self.subFinishHandlers["101207"] = self.OnSubFinish101207
    self.subFinishHandlers["101208"] = self.OnSubFinish101208
    self.subFinishHandlers["101209"] = self.OnSubFinish101209
    self.subFinishHandlers["101210"] = self.OnSubFinish101210
    self.subFinishHandlers["101211"] = self.OnSubFinish101211
    self.subFinishHandlers["101212"] = self.OnSubFinish101212
    self.subFinishHandlers["101213"] = self.OnSubFinish101213
    self.subFinishHandlers["101214"] = self.OnSubFinish101214
    self.subFinishHandlers["101215"] = self.OnSubFinish101215
end

function Quest1012:InvokeOnInteraction(arg1)
    print("1012 Invoke : ")
    if arg1 == 1 then
        print("Invoke 1")
        self:PlayEffect("Eff_Goddess_Get_Balm", sceneData:GetDummyPoint(3, "Q1012GodnessEffect").pos)
    end
end

function Quest1012:OnSubStart101201(arg1)
    print("101201 start:...")
end

function Quest1012:OnSubFinish101201(arg1)
    print("OnFinished 101201")
end

function Quest1012:OnSubStart101202(arg1)
    print("101202 start:...")
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo("Npc2013", DailyNPCManager.NpcEventType.HIDESELF, true)
        arg1_2:CreateQuestNpc(arg1, bolaiData.ID, 1)
    end)
end

function Quest1012:OnSubFinish101202(arg1)
    print("OnFinished 101202")
end

function Quest1012:OnSubStart101212(arg1)
    print("101212 start:...")
    self:NotifyTo("Npc2013", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest1012:OnSubFinish101212(arg1)
    print("OnFinished 101212")
    if self:GetQuestNpcActor(zhongliData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(zhongliData.Alias, false)
        end)
    end

    local questNpcActor = self:GetQuestNpcActor(v.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end

    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskLegacy(clientData.NarratorData.Story1, nil, "Story")
    end)
end

function Quest1012:OnSubStart101203(arg1)
    print("101203 start:...")
    self:NotifyTo("Npc2013", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2016", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, lanjieData.ID)
end

function Quest1012:OnSubFinish101203(arg1)
    print("OnFinished 101203")
    local questNpcActor = self:GetQuestNpcActor(v.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end

    if self:GetQuestNpcActor(bolaiData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(bolaiData.Alias, false)
        end)
    end

    self:NotifyTo("Npc2013", DailyNPCManager.NpcEventType.STARTDAILY, true)
end

function Quest1012:OnSubStart101204(arg1)
    print("101204 start:...")
    self:NotifyTo("Npc2015", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2016", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2004", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2058", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2001", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, qimingData.ID)
end

function Quest1012:OnSubFinish101204(arg1)
    print("OnFinished 101204")
    local questNpcActor = self:GetQuestNpcActor(v.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end

    if self:GetQuestNpcActor(lanjieData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(lanjieData.Alias, false)
        end)
    end

    self:NotifyTo("Npc2016", DailyNPCManager.NpcEventType.STARTDAILY, true)
end

function Quest1012:OnSubStart101205(arg1)
    print("101205 start:...")
    self:NotifyTo("Npc2083", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2015", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2004", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2001", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, yingerData.ID)
end

function Quest1012:OnSubFinish101205(arg1)
    print("OnFinished 101205")
    local questNpcActor = self:GetQuestNpcActor(v.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end

    if self:GetQuestNpcActor(qimingData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(qimingData.Alias, false)
        end)
    end

    self:NotifyTo("Npc2015", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2004", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2058", DailyNPCManager.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2001", DailyNPCManager.NpcEventType.STARTDAILY, true)
end

function Quest1012:OnSubStart101213(arg1)
    print("101213 start:...")
    self:NotifyTo("Npc2083", DailyNPCManager.NpcEventType.HIDESELF, true)
    self:CreateQuestNpc(arg1, yingerData.ID)
end

function Quest1012:OnSubFinish101213(arg1)
    print("OnFinished 101213")
    local questNpcActor = self:GetQuestNpcActor(v.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest1012:OnSubStart101206(arg1)
    print("101206 start:...")
    self:NotifyTo("Npc2083", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest1012:OnSubFinish101206(arg1)
    print("OnFinished 101206")
    globalActor:UnSpawn("PointData101201")
end

function Quest1012:OnSubStart101214(arg1)
    print("101214 start:...")
    self:NotifyTo("Npc2083", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest1012:OnSubFinish101214(arg1)
    print("OnFinished 101214")
    local questNpcActor = self:GetQuestNpcActor(v.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest1012:OnSubStart101210(arg1)
    self:NotifyTo("Npc2083", DailyNPCManager.NpcEventType.HIDESELF, true)
    print("101210 start:...")
end

function Quest1012:OnSubFinish101210(arg1)
    print("OnFinished 101210")
end

function Quest1012:OnSubStart101215(arg1)
    print("101215 start:...")
    self:NotifyTo("Npc2083", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest1012:OnSubFinish101215(arg1)
    print("OnFinished 101215")
    local questNpcActor = self:GetQuestNpcActor(v.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end

    if self:GetQuestNpcActor(yingerData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(yingerData.Alias, false)
        end)
    end

    self:NotifyTo("Npc2083", DailyNPCManager.NpcEventType.STARTDAILY, true)
end

function Quest1012:OnSubStart101211(arg1)
    print("101211 start:...")
end

function Quest1012:OnSubFinish101211(arg1)
    print("OnFinished 101211")
end

function Quest1012:OnSubStart101207(arg1)
    print("101207 start:...")
    self:NotifyTo("Npc2083", DailyNPCManager.NpcEventType.HIDESELF, true)
end

function Quest1012:OnSubFinish101207(arg1)
    print("OnFinished 101207")
end

function Quest1012:OnSubStart101208(arg1)
    print("101208 start:...")
    self:CreateQuestNpc(arg1, zhongliData.ID)
end

function Quest1012:OnSubFinish101208(arg1)
    print("OnFinished 101208")
end

function Quest1012:OnSubStart101209(arg1)
    print("101209 start:...")
    self:CreateQuestNpc(arg1, zhongliData.ID)
    self:ActionSafeCall(function(arg1)
        arg1:NarratorOnlyTaskLegacy(clientData.NarratorData.Story2, nil, "Story")
    end)
end

function Quest1012:OnSubFinish101209(arg1)
    print("OnFinished 101209")
    local questNpcActor = self:GetQuestNpcActor(v.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest1012:Start() end
function Quest1012:OnDestroy() end
return Quest1012

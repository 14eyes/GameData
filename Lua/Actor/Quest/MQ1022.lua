require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest1022 = class("Quest1022", QuestActorProxy)
Quest1022.defaultAlias = "Quest1022"
local clientData
local subIDs
local paimonData
local gongziData
local keqingData
local nvshiData
local ningguangData
local ganyuData
local zhongliData
local lilyData
local yrzData
local DailyNPCManager = require("Actor/DailyNPCManager")

function Quest1022:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    paimonData = clientData.PaimonData
    gongziData = clientData.GongziData
    keqingData = clientData.KeqingData
    nvshiData = clientData.NvshiData
    ningguangData = clientData.NingguangData
    ganyuData = clientData.GanyuData
    zhongliData = clientData.ZhongliData
    lilyData = clientData.LilyData
    yrzData = clientData.YRZData
    ReadData = clientData.ReadData
end

function Quest1022:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["102201"] = self.OnSubStart102201
    self.subStartHandlers["102202"] = self.OnSubStart102202
    self.subStartHandlers["102203"] = self.OnSubStart102203
    self.subStartHandlers["102204"] = self.OnSubStart102204
    self.subStartHandlers["102205"] = self.OnSubStart102205
    self.subStartHandlers["102206"] = self.OnSubStart102206
    self.subStartHandlers["102207"] = self.OnSubStart102207
    self.subStartHandlers["102208"] = self.OnSubStart102208
    self.subStartHandlers["102209"] = self.OnSubStart102209
    self.subStartHandlers["102210"] = self.OnSubStart102210
    self.subStartHandlers["102211"] = self.OnSubStart102211
    self.subStartHandlers["102212"] = self.OnSubStart102212
    self.subStartHandlers["102213"] = self.OnSubStart102213
    self.subStartHandlers["102214"] = self.OnSubStart102214
end

function Quest1022:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["102201"] = self.OnSubFinish102201
    self.subFinishHandlers["102202"] = self.OnSubFinish102202
    self.subFinishHandlers["102203"] = self.OnSubFinish102203
    self.subFinishHandlers["102204"] = self.OnSubFinish102204
    self.subFinishHandlers["102205"] = self.OnSubFinish102205
    self.subFinishHandlers["102206"] = self.OnSubFinish102206
    self.subFinishHandlers["102207"] = self.OnSubFinish102207
    self.subFinishHandlers["102208"] = self.OnSubFinish102208
    self.subFinishHandlers["102209"] = self.OnSubFinish102209
    self.subFinishHandlers["102210"] = self.OnSubFinish102210
    self.subFinishHandlers["102211"] = self.OnSubFinish102211
    self.subFinishHandlers["102212"] = self.OnSubFinish102212
    self.subFinishHandlers["102213"] = self.OnSubFinish102213
    self.subFinishHandlers["102214"] = self.OnSubFinish102214
end

function Quest1022:PaimonVanish()
    print("paimon vanish")
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest1022:ZLVanish()
    local questNpcActor = self:GetQuestNpcActor(zhongliData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1022:ReadVanish()
    local questNpcActor = self:GetQuestNpcActor(ReadData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1022:GanyuVanish()
    local questNpcActor = self:GetQuestNpcActor(ganyuData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1022:InvokeOnInteraction(arg1)
    print("1014 Invoke : ")
end

function Quest1022:OnSubStart102201(arg1)
    print("102201 start:...create npc")
    actorMgr:CreateActorWithPos("Q102201Trigger", "Actor/Gadget/Q102201Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q102201guild").pos, sceneData:GetDummyPoint(3, "Q102201guild").rot, true, false)
    self:CreateQuestNpc(arg1, ReadData.ID)
end

function Quest1022:OnSubStart102202(arg1)
    print("102202 start:...create npc")
    self:CreateQuestNpc(arg1, ReadData.ID)
end

function Quest1022:OnSubStart102203(arg1)
    print("102201 start:...")
    self:CreateQuestNpc(arg1, zhongliData.ID)
end

function Quest1022:OnSubStart102204(arg1)
    print("102201 start:...")
    self:CreateQuestNpc(arg1, lilyData.ID)
    self:SpawnGadget(arg1, 71700108, 1)
    self:SpawnGadget(arg1, 70510013, 2)
    self:SpawnGadget(arg1, 70510013, 3)
end

function Quest1022:OnSubStart102206(arg1)
    print("102201 start:...")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({paimonData.Alias})
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    self:CallDelay(2, function(arg1_2)
        actor:TransmitPlayerByQuestId(102206, 1, nil, function(arg1_2)
            arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
                arg1_2:CreateQuestNpc(arg1, paimonData.ID)
                arg1_2:RequestInteraction("Paimon")
                print("SHOW BLACK SCREEN 102206")
            end, nil, entityCreateTask, "QUEST_Black_Q1110003")
        end)
    end)
end

function Quest1022:OnSubStart102207(arg1)
    print("102201 start:...")
    self:CreateQuestNpc(arg1, yrzData.ID)
    actorMgr:CreateActorWithPos("Q102208Trigger", "Actor/Gadget/Q102208Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q102207YRZ").pos, sceneData:GetDummyPoint(3, "Q102207YRZ").rot, true, false)
    self:NotifyTo("Npc2100", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2101", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest1022:OnSubStart102208(arg1)
    print("102201 start:...")
    self:CreateQuestNpc(arg1, yrzData.ID)
    self:NotifyTo("Npc2100", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2101", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest1022:OnSubFinish102201(arg1)
    print("OnFinished 102201")
end

function Quest1022:OnSubFinish102202(arg1)
    print("OnFinished 102201")
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.ReadVanish)
end

function Quest1022:OnSubFinish102203(arg1)
    print("OnFinished 102201")
    self:ActionSafeCall(self.ZLVanish)
    self:ActionSafeCall(self.PaimonVanish)
end

function Quest1022:OnSubFinish102204(arg1)
    print("OnFinished 102201")
    self:ActionSafeCall(self.PaimonVanish)
    globalActor:UnSpawn("Q102204Lily")
    globalActor:UnSpawn("Q102204Lily2")
    globalActor:UnSpawn("Q102204Lily3")
    self:NarratorOnlyTaskByData(clientData.NarratorData2, nil)
end

function Quest1022:OnSubFinish102206(arg1)
    print("OnFinished 102201")
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.ZLVanish)
    self:ActionSafeCall(self.GanyuVanish)
end

function Quest1022:OnSubFinish102208(arg1)
    print("OnFinished 102201")
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.ZLVanish)
    self:ClearNarratorTask()
end

function Quest1022:Start() end
function Quest1022:OnDestroy() end
return Quest1022

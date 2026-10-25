require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest1021 = class("Quest1021", QuestActorProxy)
Quest1021.defaultAlias = "Quest1021"
local clientData
local subIDs
local paimonData
local gongziData
local keqingData
local nvshiData
local ningguangData
local ganyuData
local zhongliData
local transmitData
local traderData
local qiuqiu1Data
local qiuqiu2Data
local readData
local DailyNPCManager = require("Actor/DailyNPCManager")

function Quest1021:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    paimonData = clientData.PaimonData
    gongziData = clientData.GongziData
    keqingData = clientData.KeqingData
    nvshiData = clientData.NvshiData
    ningguangData = clientData.NingguangData
    ganyuData = clientData.GanyuData
    zhongliData = clientData.ZhongliData
    transmitData = clientData.TransmitData
    traderData = clientData.TraderData
    qiuqiu1Data = clientData.Qiuqiu1Data
    qiuqiu2Data = clientData.Qiuqiu2Data
    readData = clientData.ReadData
end

function Quest1021:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["102101"] = self.OnSubStart102101
    self.subStartHandlers["102102"] = self.OnSubStart102102
    self.subStartHandlers["102103"] = self.OnSubStart102103
    self.subStartHandlers["102104"] = self.OnSubStart102104
    self.subStartHandlers["102105"] = self.OnSubStart102105
    self.subStartHandlers["102106"] = self.OnSubStart102106
    self.subStartHandlers["102107"] = self.OnSubStart102107
    self.subStartHandlers["102108"] = self.OnSubStart102108
    self.subStartHandlers["102109"] = self.OnSubStart102109
    self.subStartHandlers["102110"] = self.OnSubStart102110
    self.subStartHandlers["102111"] = self.OnSubStart102111
    self.subStartHandlers["102112"] = self.OnSubStart102112
    self.subStartHandlers["102113"] = self.OnSubStart102113
    self.subStartHandlers["102114"] = self.OnSubStart102114
end

function Quest1021:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["102101"] = self.OnSubFinish102101
    self.subFinishHandlers["102102"] = self.OnSubFinish102102
    self.subFinishHandlers["102103"] = self.OnSubFinish102103
    self.subFinishHandlers["102104"] = self.OnSubFinish102104
    self.subFinishHandlers["102105"] = self.OnSubFinish102105
    self.subFinishHandlers["102106"] = self.OnSubFinish102106
    self.subFinishHandlers["102107"] = self.OnSubFinish102107
    self.subFinishHandlers["102108"] = self.OnSubFinish102108
    self.subFinishHandlers["102109"] = self.OnSubFinish102109
    self.subFinishHandlers["102110"] = self.OnSubFinish102110
    self.subFinishHandlers["102111"] = self.OnSubFinish102111
    self.subFinishHandlers["102112"] = self.OnSubFinish102112
    self.subFinishHandlers["102113"] = self.OnSubFinish102113
    self.subFinishHandlers["102114"] = self.OnSubFinish102114
end

function Quest1021:PaimonVanish()
    print("paimon vanish")
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest1021:InvokeOnInteraction(arg1)
    print("1014 Invoke : ")
end

function Quest1021:Qiuqiu1Vanish()
    local questNpcActor = self:GetQuestNpcActor(qiuqiu1Data.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1021:Qiuqiu2Vanish()
    local questNpcActor = self:GetQuestNpcActor(qiuqiu2Data.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1021:TraderVanish()
    local questNpcActor = self:GetQuestNpcActor(traderData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1021:ReadVanish()
    local questNpcActor = self:GetQuestNpcActor(readData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1021:NingguangVanish()
    local questNpcActor = self:GetQuestNpcActor(ningguangData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end
end

function Quest1021:InvokeOnInteraction(arg1)
    print("10200 Invoke : ")
    if arg1 == 1 then
        print("Invoke 1")
        self:ShowQuestPictureDialog(267)
    end
end

function Quest1021:OnSubStart102101(arg1)
    print("102101 start:...")
    actorMgr:CreateActorWithPos("Q102101Trigger", "Actor/Gadget/Q102101Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q102110Flower").pos, sceneData:GetDummyPoint(3, "Q102110Flower").rot, true, false)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    local questNpcActor = self:GetQuestNpcActor(traderData.Alias)
    self:CreateQuestNpc(arg1, traderData.ID)
    questNpcActor:DoFreeStyle(4190)
    actor:CreateSpeechBubbleTask(traderData.ID, 200080501, 2, true, 3, 3)
end

function Quest1021:OnSubStart102102(arg1)
    print("102101 start:...")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    local questNpcActor = self:GetQuestNpcActor(traderData.Alias)
    self:CreateQuestNpc(arg1, traderData.ID)
    questNpcActor:DoFreeStyle(4190)
    actor:CreateSpeechBubbleTask(traderData.ID, 200080501, 2, true, 3, 3)
end

function Quest1021:OnSubStart102107(arg1)
    print("102101 start:...")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    local questNpcActor = self:GetQuestNpcActor(traderData.Alias)
    self:CreateQuestNpc(arg1, traderData.ID)
    questNpcActor:DoFreeStyle(4190)
    actor:CreateSpeechBubbleTask(traderData.ID, 200080501, 2, true, 3, 3)
end

function Quest1021:OnSubStart102109(arg1)
    print("102108 start:...")
    actorMgr:CreateActorWithPos("Q102109Trigger", "Actor/Gadget/Q102109Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q102105Guild").pos, sceneData:GetDummyPoint(3, "Q102105Guild").rot, true, false)
end

function Quest1021:OnSubStart102110(arg1)
    print("102101 start:...")
end

function Quest1021:OnSubStart102103(arg1)
    print("102101 start:...")
end

function Quest1021:OnSubStart102113(arg1)
    print("102101 start:...")
    self:NotifyTo("Npc2142", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2143", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2140", NpcUtil.NpcEventType.HIDESELF, true)
    self:GetQuestNpcActor(ningguangData.Alias):WalkToTask(sceneData:GetDummyPoint(3, "Q102113Ningguang").pos, function(arg1, arg2)
        arg1:Standby()
        arg1:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q102113Ningguang").rot))
        print("Invoke 0 finish quest")
    end)
end

function Quest1021:OnSubStart102104(arg1)
    print("102101 start:...")
    self:CreateQuestNpc(arg1, ningguangData.ID)
end

function Quest1021:OnSubStart102105(arg1)
    print("102101 start:...")
    self:CreateQuestNpc(arg1, ningguangData.ID)
end

function Quest1021:OnSubStart102106(arg1)
    print("102101 start:...")
    self:CreateQuestNpc(arg1, ningguangData.ID)
end

function Quest1021:OnSubStart102111(arg1)
    print("102101 start:...")
    self:NotifyTo("Npc2057", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2096", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest1021:OnSubStart102112(arg1)
    print("102101 start:...")
    self:CreateQuestNpc(arg1, readData.ID)
end

function Quest1021:OnSubFinish102101(arg1)
    print("OnFinished 102101")
    self:ActionSafeCall(self.Qiuqiu1Vanish)
    self:ActionSafeCall(self.Qiuqiu2Vanish)
    self:ActionSafeCall(self.PaimonVanish)
end

function Quest1021:OnSubFinish102110(arg1)
    print("102101 start:...")
    self:UnSpawn("Q102110Flower")
end

function Quest1021:OnSubFinish102104(arg1)
    print("102101 start:...")
    self:ActionSafeCall(self.PaimonVanish)
end

function Quest1021:OnSubFinish102111(arg1)
    print("102101 start:...")
    self:ActionSafeCall(self.PaimonVanish)
    self:NotifyTo("Npc2057", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2096", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest1021:OnSubFinish102103(arg1)
    print("OnFinished 102101")
    self:TransmitPlayerById(arg1, 1)
end

function Quest1021:OnSubFinish102108(arg1)
    print("OnFinished 102101")
    self:ActionSafeCall(self.TraderVanish)
    self:ActionSafeCall(self.PaimonVanish)
end

function Quest1021:OnSubFinish102113(arg1)
    print("OnFinished 102101")
    self:ActionSafeCall(self.NingguangVanish)
    self:ActionSafeCall(self.PaimonVanish)
    local questNpcActor = self:GetQuestNpcActor("Npc10333")
    if questNpcActor ~= nil then
        questNpcActor:Destroy(false)
    end

    local v = self:GetQuestNpcActor("Npc10334")
    if v ~= nil then
        v:Destroy(false)
    end
end

function Quest1021:OnSubFinish102112(arg1)
    print("OnFinished 102101")
    self:ActionSafeCall(self.ReadVanish)
    self:ActionSafeCall(self.PaimonVanish)
    self:NotifyTo("Npc2142", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2143", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2140", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest1021:OnSubFinish102106(arg1)
    print("OnFinished 102101")
    self:ActionSafeCall(self.PaimonVanish)
    self:NarratorOnlyTaskByData(clientData.NarratorData2, nil)
end

function Quest1021:OnSubFinish102105(arg1)
    print("OnFinished 102101")
    self:NarratorOnlyTaskByData(clientData.NarratorData3, nil)
end

function Quest1021:Start() end
function Quest1021:OnDestroy() end
return Quest1021

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest1023 = class("Quest1023", QuestActorProxy)
Quest1023.defaultAlias = "Quest1023"
local clientData
local subIDs
local paimonData
local gongziData
local keqingData
local nvshiData
local ningguangData
local ganyuData
local zhongliData
local xzfdData
local DailyNPCManager = require("Actor/DailyNPCManager")

function Quest1023:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    paimonData = clientData.PaimonData
    gongziData = clientData.GongziData
    keqingData = clientData.KeqingData
    nvshiData = clientData.NvshiData
    ningguangData = clientData.NingguangData
    ganyuData = clientData.GanyuData
    zhongliData = clientData.ZhongliData
    xzfdData = clientData.XZFDData
end

function Quest1023:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["102301"] = self.OnSubStart102301
    self.subStartHandlers["102302"] = self.OnSubStart102302
    self.subStartHandlers["102303"] = self.OnSubStart102303
    self.subStartHandlers["102304"] = self.OnSubStart102304
    self.subStartHandlers["102305"] = self.OnSubStart102305
    self.subStartHandlers["102306"] = self.OnSubStart102306
    self.subStartHandlers["102307"] = self.OnSubStart102307
    self.subStartHandlers["102308"] = self.OnSubStart102308
    self.subStartHandlers["102309"] = self.OnSubStart102309
    self.subStartHandlers["102310"] = self.OnSubStart102310
    self.subStartHandlers["102311"] = self.OnSubStart102311
    self.subStartHandlers["102312"] = self.OnSubStart102312
    self.subStartHandlers["102313"] = self.OnSubStart102313
    self.subStartHandlers["102314"] = self.OnSubStart102314
end

function Quest1023:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["102301"] = self.OnSubFinish102301
    self.subFinishHandlers["102302"] = self.OnSubFinish102302
    self.subFinishHandlers["102303"] = self.OnSubFinish102303
    self.subFinishHandlers["102304"] = self.OnSubFinish102304
    self.subFinishHandlers["102305"] = self.OnSubFinish102305
    self.subFinishHandlers["102306"] = self.OnSubFinish102306
    self.subFinishHandlers["102307"] = self.OnSubFinish102307
    self.subFinishHandlers["102308"] = self.OnSubFinish102308
    self.subFinishHandlers["102309"] = self.OnSubFinish102309
    self.subFinishHandlers["102310"] = self.OnSubFinish102310
    self.subFinishHandlers["102311"] = self.OnSubFinish102311
    self.subFinishHandlers["102312"] = self.OnSubFinish102312
    self.subFinishHandlers["102313"] = self.OnSubFinish102313
    self.subFinishHandlers["102314"] = self.OnSubFinish102314
end

function Quest1023:PaimonVanish()
    print("paimon vanish")
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest1023:GongziVanish()
    print("paimon vanish")
    local questNpcActor = self:GetQuestNpcActor(gongziData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest1023:InvokeOnInteraction(arg1)
    print("1014 Invoke : ")
    if arg1 == 1 then
        print("Invoke 1")
        self:PlayEffect("Eff_Quest_Tartaglia_AdeptusPermit", sceneData:GetDummyPoint(20101, "Q102305GZ").pos, M.Pos(0, -178.43, 0))
    end
end

function Quest1023:PlayAwakeCutscene()
    self:PlayCutsceneIndex(10230601, self.On102306CutsceneFinish, nil, nil, true)
end

function Quest1023:On102306CutsceneFinish()
    print("35104 Finish : Tutorial1")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end
end

function Quest1023:OnSubStart102301(arg1)
    print("102301 start:...")
    self:NotifyTo("Npc2458", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2459", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2094", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2460", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2061", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc2461", NpcUtil.NpcEventType.HIDESELF, true)
end

function Quest1023:OnSubStart102303(arg1)
    print("102301 start:...")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({paimonData.Alias})
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, paimonData.ID)
        arg1_2:RequestInteraction("Paimon")
        print("SHOW BLACK SCREEN 12000")
    end, nil, entityCreateTask, "QUEST_Black_Q1200010")
end

function Quest1023:OnSubStart102302(arg1)
    print("102302 start:...")
    self:CreateQuestNpc(arg1, xzfdData.ID)
end

function Quest1023:OnSubStart102304(arg1)
    print("102301 start:...")
    self:TransmitPlayerById(arg1, 1)
end

function Quest1023:OnSubStart102305(arg1)
    print("102301 start:...")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({gongziData.Alias})
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    self:CallDelay(2, function(arg1_2)
        arg1_2:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, gongziData.ID)
            arg1_2:RequestInteraction("Npc10200")
            print("SHOW BLACK SCREEN 12000")
        end, nil, entityCreateTask, "QUEST_Black_Q1200010")
    end)
end

function Quest1023:OnSubStart102306(arg1)
    print("102301 start:...")
    self:PlayAwakeCutscene()
end

function Quest1023:OnSubFinish102301(arg1)
    print("OnFinished 102301")
    self:NotifyTo("Npc2100", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2101", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2458", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2459", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2094", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2460", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2061", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc2461", NpcUtil.NpcEventType.STARTDAILY, true)
end

function Quest1023:OnSubFinish102303(arg1)
    print("OnFinished 102301")
    self:ActionSafeCall(self.PaimonVanish)
end

function Quest1023:OnSubFinish102302(arg1)
    print("OnFinished 102301")
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.GongziVanish)
end

function Quest1023:OnSubFinish102306(arg1)
    print("OnFinished 102301")
end

function Quest1023:Start() end
function Quest1023:OnDestroy() end
return Quest1023

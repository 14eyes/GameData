require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest11102 = class("Quest11102", QuestActorProxy)
Quest11102.defaultAlias = "Quest11102"
local subIDs
local n
local paimonData
local xiaoData
local cheatData
local qQ1Data
local qQ2Data
local qQ3Data
local keypos

function Quest11102:OnDataLoaded()
    q11102Cfg = self.clientData
    subIDs = q11102Cfg.SubIDs
    n = 11102
    paimonData = q11102Cfg.PaimonData
    xiaoData = q11102Cfg.XiaoData
    cheatData = q11102Cfg.CheatData
    qQ1Data = q11102Cfg.QQ1Data
    qQ2Data = q11102Cfg.QQ2Data
    qQ3Data = q11102Cfg.QQ3Data
    Crowd1Data = q11102Cfg.Crowd1Data
    Crowd2Data = q11102Cfg.Crowd2Data
    Crowd3Data = q11102Cfg.Crowd3Data
end

function Quest11102:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1110201"] = self.OnSubStart1110201
    self.subStartHandlers["1110202"] = self.OnSubStart1110202
    self.subStartHandlers["1110203"] = self.OnSubStart1110203
    self.subStartHandlers["1110204"] = self.OnSubStart1110204
    self.subStartHandlers["1110205"] = self.OnSubStart1110205
    self.subStartHandlers["1110206"] = self.OnSubStart1110206
    self.subStartHandlers["1110207"] = self.OnSubStart1110207
end

function Quest11102:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1110201"] = self.OnSubFinish1110201
    self.subFinishHandlers["1110202"] = self.OnSubFinish1110202
    self.subFinishHandlers["1110203"] = self.OnSubFinish1110203
    self.subFinishHandlers["1110204"] = self.OnSubFinish1110204
    self.subFinishHandlers["1110205"] = self.OnSubFinish1110205
    self.subFinishHandlers["1110206"] = self.OnSubFinish1110206
    self.subFinishHandlers["1110207"] = self.OnSubFinish1110207
end

function Quest11102:PaimonVanish()
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11102:QQ1Vanish()
    local questNpcActor = self:GetQuestNpcActor(qQ1Data.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11102:QQ2Vanish()
    local questNpcActor = self:GetQuestNpcActor(qQ2Data.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11102:QQ3Vanish()
    local questNpcActor = self:GetQuestNpcActor(qQ3Data.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11102:XiaoVanish()
    local questNpcActor = self:GetQuestNpcActor(xiaoData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest11102:InvokeOnInteraction(arg1)
    print("11102 Invoke : ")
    if arg1 == 1 then
        print("Invoke 1")
        self:ShowReadingDialog(100426)
    end
end

function Quest11102:OpenCompass()
    Quest11102:CallOnElemViewOpen(function()
        if keypos ~= nil then
            local avatarPos = actorUtils.GetAvatarPos()
            local tbl = {x = keypos.x - avatarPos.x, y = 0, z = keypos.z - avatarPos.z}
            local avatarForward = actorUtils.GetAvatarForward()
            local n = 2
            local v = actorUtils.GetAvatarPos()
            v.x = v.x + avatarForward.x * n
            v.y = v.y + 0.4
            v.z = v.z + avatarForward.z * n
            local actor = actorMgr:GetActor(q11102Cfg.ActorAlias)
            if math.sqrt(tbl.x * tbl.x + tbl.z * tbl.z) <= 150 then
                actor:SpawnGadgetByIdWithPos(1110201, 70700006, 1, v, M.Dir2Euler(tbl))
            end

            Quest11102:CloseCompass()
        end
    end)
end

function Quest11102:CloseCompass()
    print("CloseCompass")
    Quest11102:CallOnElemViewClose(function()
        print("delete compass")
        globalActor:UnSpawn("Q10101Compass")
        Quest11102:OpenCompass()
    end)
end

function Quest11102:OnSubStart1110201(arg1)
    print("********1110201 start")
    keypos = xiaoData.keypos
    compassQuestId = 1110201
    self:OpenCompass()
    self:CreateQuestNpc(arg1, xiaoData.ID)
    self:CreateQuestNpc(arg1, cheatData.ID)
    self:CreateQuestNpc(arg1, Crowd1Data.ID)
    self:CreateQuestNpc(arg1, Crowd2Data.ID)
    self:CreateQuestNpc(arg1, Crowd3Data.ID)
    self:ClearSpeechBubbleTask()
    actorMgr:CreateActorWithPos("Q1110202Trigger", "Actor/Gadget/Q1110202Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1110201Aside").pos, sceneData:GetDummyPoint(3, "Q1110201Aside").rot, true, false)
    actorMgr:CreateActorWithPos("Q1110201Trigger", "Actor/Gadget/Q1110201Trigger", 70900002, 0, sceneData:GetDummyPoint(3, "Q1110202Xiao").pos, sceneData:GetDummyPoint(3, "Q1110202Xiao").rot, true, false)
end

function Quest11102:OnSubFinish1110201(arg1)
    self:ClearNarratorTask()
end

function Quest11102:OnSubStart1110202(arg1)
    print("********1110202 start")
end

function Quest11102:OnSubFinish1110202(arg1)
    self:ActionSafeCall(self.PaimonVanish)
    globalActor:UnSpawn("Q10101Compass")
    self:NarratorOnlyTaskByData(q11102Cfg.NarratorData2, nil, "StoryCut")
    self:GetQuestNpcActor(xiaoData.Alias):RunToTask(sceneData:GetDummyPoint(3, "Q1110207Xiao").pos, function(arg1, arg2)
        arg1:Standby()
        arg1:TurnTo(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q1110207Xiao").rot))
        print("Invoke 0 finish quest")
        local actor = actorMgr:GetActor(q11102Cfg.ActorAlias)
        if actor ~= nil then
            actor:FinishQuest(false, nil)
        end
    end)
end

function Quest11102:OnSubStart1110203(arg1)
    print("********1110203 start")
end

function Quest11102:OnSubFinish1110203(arg1)
    print("********1110203 Finish")
    self:ClearNarratorTask()
end

function Quest11102:OnSubStart1110204(arg1)
    print("********1110204 start")
    self:ShowBlackScreen(0.5, 2, 0.5, function(arg1_2)
        arg1_2:CallDelay(1.5, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, paimonData.ID)
            arg1_2:RequestInteraction("Paimon")
            print("SHOW BLACK SCREEN 12000")
        end)
    end, nil, task, "QUEST_Black_Q1110003")
end

function Quest11102:OnSubFinish1110204(arg1)
    print("********1110203 Finish")
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.XiaoVanish)
end

function Quest11102:OnSubStart1110205(arg1)
    print("********1110203 start")
    self:ShowBlackScreen(0.5, 0.5, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, paimonData.ID)
        arg1_2:RequestInteraction("Paimon")
        print("SHOW BLACK SCREEN 12000")
    end, nil, task, "QUEST_Black_Q1110003")
end

function Quest11102:OnSubFinish1110205(arg1)
    print("********1110203 Finish")
    self:ActionSafeCall(self.PaimonVanish)
    self:ActionSafeCall(self.XiaoVanish)
end

function Quest11102:OnSubStart1110206(arg1)
    print("********1110203 start")
end

function Quest11102:OnSubFinish1110206(arg1)
    print("********1110203 Finish")
    self:ActionSafeCall(self.QQ1Vanish)
    self:ActionSafeCall(self.QQ2Vanish)
    self:ActionSafeCall(self.QQ3Vanish)
end

function Quest11102:OnSubStart1110207(arg1)
    print("********1110203 start")
end

function Quest11102:OnSubFinish1110207(arg1)
    print("********1110203 Finish")
    self:ShowTutorialDialog(1020)
end

function Quest11102:OnSubStart1110208(arg1)
    print("********1110203 start")
end

function Quest11102:OnSubFinish1110208(arg1)
    print("********1110203 Finish")
end

function Quest11102:OnSubStart1110209(arg1)
    print("********1110203 start")
end

function Quest11102:OnSubFinish1110209(arg1)
    print("********1110203 Finish")
end

function Quest11102:OnSubStart1110210(arg1)
    print("********1110203 start")
end

function Quest11102:OnSubFinish1110210(arg1)
    print("********1110203 Finish")
end

function Quest11102:Start() end
function Quest11102:OnDestroy() end
return Quest11102

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20030 = class("Quest20030", QuestActorProxy)
Quest20030.defaultAlias = "Quest20030"
local Q20030ClientConfig = require("Quest/Client/Q20030ClientConfig")

local paimonData = Q20030ClientConfig.PaimonData

function Quest20030:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2003001"] = self.OnSubStart2003001
    self.subStartHandlers["2003002"] = self.OnSubStart2003002
    self.subStartHandlers["2003003"] = self.OnSubStart2003003
end

function Quest20030:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2003001"] = self.OnSubFinish2003001
    self.subFinishHandlers["2003002"] = self.OnSubFinish2003002
    self.subFinishHandlers["2003003"] = self.OnSubFinish2003003
end

function Quest20030:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2003001"] = self.OnSubFailed2003001
    self.subFailedHandlers["2003002"] = self.OnSubFailed2003002
    self.subFailedHandlers["2003003"] = self.OnSubFailed2003003
end

function Quest20030:OnSubStart2003001(arg1)
    print("2003001 start")
end

function Quest20030:OnSubFinish2003001(arg1)
    print("2003001 finish")
    local actor = actorMgr:GetActor("NPC1512")
    actor:DoFreeStateTrigger()
    actor:DoFreeStyle(1200)
    print("do greet")
    local paimonData = self.clientData.PaimonData
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local pos = actor:GetPos()
    local forward = actor:GetForward()
    local v = avatarForward
    local dist = M.Dist(pos, avatarPos)
    v.x = (pos.x - avatarPos.x) / dist
    v.z = (pos.z - avatarPos.z) / dist
    print(v.x .. "," .. v.y .. "," .. v.z)
    local v2 = avatarPos
    local n = 1
    local n2 = -1
    v2.x = v2.x + v.x * n
    v2.z = v2.z + v.z * n
    print(v2.x .. "," .. v2.y .. "," .. v2.z)
    local v3 = avatarForward
    v3.z = (pos.x - v2.x) / dist
    v3.x = -(pos.z - v2.z) / dist
    print(v3.x .. "," .. v3.y .. "," .. v3.z)
    v2.x = v2.x + v3.x * n2
    v2.z = v2.z + v3.z * n2
    self.CreateQuestNpcByIdWithPos(self, 2003001, paimonData.PaimonID, 1, v2, M.Dir2Euler(v3))
    local questNpcActor = self.GetQuestNpcActor(self, Q20030ClientConfig.PaimonData.Paimon)
    questNpcActor.DoFreeStyle(questNpcActor, 1140)
    self.CallDelay(self, 0.5, function()
        self:NarratorOnlyTaskLegacy(Q20030ClientConfig.NarratorData.Story1, nil, "Tag")
    end)

    self.EnterSceneLookCamera(self, sceneData:GetDummyPoint(3, "Q20030CamTarget").pos, -0.5, 4, true)
    globalActor:EnablePlayerInput(false)
    self.CallDelay(self, 4, function()
        globalActor:EnablePlayerInput(true)
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end

        actorMgr:GetActor("NPC1512"):DoFreeStateTrigger()
    end)
end

function Quest20030:OnSubFailed2003001(arg1)
    print("2003001 fail")
end

function Quest20030:OnSubStart2003002(arg1)
    print("2003002 start")
end

function Quest20030:OnSubFinish2003002(arg1)
    self:ActionSafeCall(function(arg1)
        arg1:RequestInteractionForceAlias("NPC1512")
    end)

    print("2003002 finish")
end

function Quest20030:OnSubFailed2003002(arg1)
    print("2003002 fail")
end

function Quest20030:OnSubFinish2003003(arg1)
    self:ActionSafeCall(function(arg1)
        globalActor:StartGuide("GuideViewHelp")
    end)

    print("2003003 finish")
end

function Quest20030:Start() end
function Quest20030:OnDestroy() end
return Quest20030

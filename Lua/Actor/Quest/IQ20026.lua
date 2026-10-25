require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20026 = class("Quest20026", QuestActorProxy)
Quest20026.defaultAlias = "Quest20026"
local n = 120
local v = 1
local clientData
local subIDs

function Quest20026:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
end

function Quest20026:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2002601"] = self.OnSubStart2002601
    self.subStartHandlers["2002602"] = self.OnSubStart2002602
    self.subStartHandlers["2002603"] = self.OnSubStart2002603
    self.subStartHandlers["2002604"] = self.OnSubStart2002604
    self.subStartHandlers["2002605"] = self.OnSubStart2002605
    self.subStartHandlers["2002606"] = self.OnSubStart2002606
    self.subStartHandlers["2002607"] = self.OnSubStart2002607
    self.subStartHandlers["2002608"] = self.OnSubStart2002608
end

function Quest20026:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2002601"] = self.OnSubFinish2002601
    self.subFinishHandlers["2002602"] = self.OnSubFinish2002602
    self.subFinishHandlers["2002603"] = self.OnSubFinish2002603
    self.subFinishHandlers["2002604"] = self.OnSubFinish2002604
    self.subFinishHandlers["2002605"] = self.OnSubFinish2002605
    self.subFinishHandlers["2002606"] = self.OnSubFinish2002606
    self.subFinishHandlers["2002607"] = self.OnSubFinish2002607
    self.subFinishHandlers["2002608"] = self.OnSubFinish2002608
end

function Quest20026:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2002601"] = self.OnSubFailed2002601
    self.subFailedHandlers["2002602"] = self.OnSubFailed2002602
    self.subFailedHandlers["2002603"] = self.OnSubFailed2002603
    self.subFailedHandlers["2002604"] = self.OnSubFailed2002604
    self.subFailedHandlers["2002605"] = self.OnSubFailed2002605
    self.subFailedHandlers["2002606"] = self.OnSubFailed2002606
    self.subFailedHandlers["2002607"] = self.OnSubFailed2002607
    self.subFailedHandlers["2002608"] = self.OnSubFailed2002608
end

function Quest20026:StartCount()
    print("\229\191\171\233\128\146StartCount")
    print(numb)
    self:CountDownUIStart(n, 20, 3)
    self:CallDelay(n + 4, self.CountDown)
end

function Quest20026:CountDown()
    print("CountDown Finished")
    if v == 1 then
        self:ShowPaimonDoWay1()
        v = 0
    end

    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        print("deliver fail")
        actor:FinishQuestID(true, 2002605)
    end
end

function Quest20026:ShowPaimonDoWay1()
    local paimonData = self.clientData.PaimonData
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = 1.5
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * n
    local v = avatarForward
    v.x = v.x * -1
    v.z = v.z * -1
    self:CreateQuestNpcByIdWithPos(2002605, paimonData.PaimonID, 1, avatarPos, M.Dir2Euler(v))
    globalActor:EnablePlayerInput(false)
    local questNpcActor = self:GetQuestNpcActor(clientData.PaimonData.Paimon)
    questNpcActor:AirModeOn()
    questNpcActor:AddPriorityInter(InterTimingType.BTN, clientData.InterData.NoReplyInter1)
    self:CallDelay(1, function(arg1)
        arg1:RequestInteraction(clientData.PaimonData.Paimon)
    end)

    self:CallDelay(3, self.PaimonVanish)
end

function Quest20026:ShowPaimonDoWay2()
    local paimonData = self.clientData.PaimonData
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = 1.5
    print(avatarForward.x .. "," .. avatarForward.y .. "," .. avatarForward.z)
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * n
    local v = avatarForward
    v.x = v.x * -1
    v.z = v.z * -1
    self:CreateQuestNpcByIdWithPos(2002605, paimonData.PaimonID, 1, avatarPos, M.Dir2Euler(v))
    globalActor:EnablePlayerInput(false)
    local questNpcActor = self:GetQuestNpcActor(clientData.PaimonData.Paimon)
    questNpcActor:AirModeOn()
    questNpcActor:AddPriorityInter(InterTimingType.BTN, clientData.InterData.NoReplyInter2)
    self:CallDelay(1, function(arg1)
        arg1:RequestInteraction(clientData.PaimonData.Paimon)
    end)

    self:CallDelay(3, self.PaimonVanish)
end

function Quest20026:PaimonVanish()
    local questNpcActor = self:GetQuestNpcActor(clientData.PaimonData.Paimon)
    questNpcActor:ClearPriorityInter(InterTimingType.BTN)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end

    globalActor:EnablePlayerInput(true)
end

function Quest20026:OnSubStart2002601(arg1)
    print("\229\191\171\233\128\14601 start")
end

function Quest20026:OnSubFinish2002601(arg1)
    print("\229\191\171\233\128\14601 finish")
end

function Quest20026:OnSubFailed2002601(arg1) end

function Quest20026:OnSubStart2002602(arg1)
    print("\229\191\171\233\128\14602 start")
end

function Quest20026:OnSubFinish2002602(arg1)
    print("\229\191\171\233\128\14602 finish")
end

function Quest20026:OnSubFailed2002602(arg1) end

function Quest20026:OnSubStart2002603(arg1)
    print("\229\191\171\233\128\14603 start")
end

function Quest20026:OnSubFinish2002603(arg1)
    print("\229\191\171\233\128\14603 finished")
end

function Quest20026:OnSubFailed2002603(arg1) end

function Quest20026:OnSubStart2002604(arg1)
    v = 1
    print("\229\191\171\233\128\14604 start")
end

function Quest20026:OnSubFinish2002604(arg1)
    print("\229\191\171\233\128\14604 finish")
end

function Quest20026:OnSubFailed2002604(arg1)
    print("\229\191\171\233\128\14604 failed")
end

function Quest20026:OnSubStart2002605(arg1)
    self:ActionSafeCall(self.StartCount)
    print("\229\191\171\233\128\14605 start")
end

function Quest20026:OnSubFinish2002605(arg1)
    print("\229\191\171\233\128\14605 finish")
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest20026:OnSubFailed2002605(arg1)
    print("\229\191\171\233\128\14605 failed")
end

function Quest20026:OnSubStart2002606(arg1)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(true, 2002607)
        print("2002607 failed")
    end

    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
    if v == 1 then
        self:ShowPaimonDoWay2()
    end

    local actor2 = actorMgr:GetActor(clientData.ActorAlias)
    if actor2 ~= nil then
        actor2:FinishQuestID(true, 2002606)
    end

    print("\229\191\171\233\128\14606 start")
end

function Quest20026:OnSubFinish2002606(arg1)
    print("\229\191\171\233\128\14606 finish")
end

function Quest20026:OnSubFailed2002606(arg1)
    print("\229\191\171\233\128\14606 failed")
end

function Quest20026:OnSubStart2002607(arg1)
    print("\229\191\171\233\128\14607 start")
end

function Quest20026:OnSubFinish2002607(arg1)
    print("\229\191\171\233\128\14607 finish")
end

function Quest20026:OnSubFailed2002607(arg1)
    print("\229\191\171\233\128\14607 failed")
end

function Quest20026:OnSubStart2002608(arg1)
    print("\229\191\171\233\128\14608 start")
end

function Quest20026:OnSubFinish2002608(arg1)
    print("\229\191\171\233\128\14608 finish")
end

function Quest20026:OnSubFailed2002608(arg1)
    print("\229\191\171\233\128\14608 failed")
end

function Quest20026:OnMainFinished(arg1)
    print("main finished " .. tostring(arg1.QuestMainId))
end

function Quest20026:OnMainFailed(arg1)
    print("main failed " .. tostring(arg1.QuestMainId))
end

function Quest20026:OnMainCanceled(arg1)
    print("main canceled " .. tostring(arg1.QuestMainId))
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest20026:Start() end
function Quest20026:OnDestroy() end
return Quest20026

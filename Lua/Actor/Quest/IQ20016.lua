require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20016 = class("Quest20016", QuestActorProxy)
Quest20016.defaultAlias = "Quest20016"
local n = 240
local v = 1
local clientData
local subIDs
local nPC1Data
local nPC2Data
local nPC3Data

function Quest20016:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    nPC1Data = clientData.NPC1Data
    nPC2Data = clientData.NPC2Data
    nPC3Data = clientData.NPC3Data
end

math.randomseed(tostring(os.time()):reverse():sub(1, 7))
local n2 = math.random(1, 3)

function Quest20016:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2001601"] = self.OnSubStart2001601
    self.subStartHandlers["2001602"] = self.OnSubStart2001602
    self.subStartHandlers["2001603"] = self.OnSubStart2001603
    self.subStartHandlers["2001604"] = self.OnSubStart2001604
    self.subStartHandlers["2001605"] = self.OnSubStart2001605
    self.subStartHandlers["2001606"] = self.OnSubStart2001606
    self.subStartHandlers["2001607"] = self.OnSubStart2001607
    self.subStartHandlers["2001608"] = self.OnSubStart2001608
    self.subStartHandlers["2001609"] = self.OnSubStart2001609
    self.subStartHandlers["2001610"] = self.OnSubStart2001610
    self.subStartHandlers["2001611"] = self.OnSubStart2001611
end

function Quest20016:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2001601"] = self.OnSubFinish2001601
    self.subFinishHandlers["2001602"] = self.OnSubFinish2001602
    self.subFinishHandlers["2001603"] = self.OnSubFinish2001603
    self.subFinishHandlers["2001604"] = self.OnSubFinish2001604
    self.subFinishHandlers["2001605"] = self.OnSubFinish2001605
    self.subFinishHandlers["2001606"] = self.OnSubFinish2001606
    self.subFinishHandlers["2001607"] = self.OnSubFinish2001607
    self.subFinishHandlers["2001608"] = self.OnSubFinish2001608
    self.subFinishHandlers["2001609"] = self.OnSubFinish2001609
    self.subFinishHandlers["2001610"] = self.OnSubFinish2001610
    self.subFinishHandlers["2001611"] = self.OnSubFinish2001611
end

function Quest20016:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2001601"] = self.OnSubFailed2001601
    self.subFailedHandlers["2001602"] = self.OnSubFailed2001602
    self.subFailedHandlers["2001603"] = self.OnSubFailed2001603
    self.subFailedHandlers["2001604"] = self.OnSubFailed2001604
    self.subFailedHandlers["2001605"] = self.OnSubFailed2001605
    self.subFailedHandlers["2001606"] = self.OnSubFailed2001606
    self.subFailedHandlers["2001607"] = self.OnSubFailed2001607
    self.subFailedHandlers["2001608"] = self.OnSubFailed2001608
    self.subFailedHandlers["2001609"] = self.OnSubFailed2001609
    self.subFailedHandlers["2001610"] = self.OnSubFailed2001610
    self.subFailedHandlers["2001611"] = self.OnSubFailed2001611
end

function Quest20016:StartCount()
    print("\229\191\171\233\128\146StartCount")
    print(n2)
    self:CountDownUIStart(n, 20, 3)
    self:CallDelay(n + 4, self.CountDown)
end

function Quest20016:CountDown()
    print("CountDown Finished")
    if v == 1 then
        self:ShowPaimonDoWay1()
        v = 0
    end

    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        print("deliver fail")
        actor:FinishQuestID(true, 2001603)
    end
end

function Quest20016:ShowPaimonDoWay1()
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
    self:CreateQuestNpcByIdWithPos(2001603, paimonData.PaimonID, 1, avatarPos, M.Dir2Euler(v))
    globalActor:EnablePlayerInput(false)
    local questNpcActor = self:GetQuestNpcActor(clientData.PaimonData.Paimon)
    questNpcActor:AirModeOn()
    questNpcActor:AddPriorityInter(InterTimingType.BTN, clientData.InterData.NoReplyInter1)
    self:CallDelay(1, function(arg1)
        arg1:RequestInteraction(clientData.PaimonData.Paimon)
    end)

    self:CallDelay(3, self.PaimonVanish)
end

function Quest20016:ShowPaimonDoWay2()
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
    self:CreateQuestNpcByIdWithPos(2001603, paimonData.PaimonID, 1, avatarPos, M.Dir2Euler(v))
    globalActor:EnablePlayerInput(false)
    local questNpcActor = self:GetQuestNpcActor(clientData.PaimonData.Paimon)
    questNpcActor:AirModeOn()
    questNpcActor:AddPriorityInter(InterTimingType.BTN, clientData.InterData.NoReplyInter2)
    self:CallDelay(1, function(arg1)
        arg1:RequestInteraction(clientData.PaimonData.Paimon)
    end)

    self:CallDelay(3, self.PaimonVanish)
end

function Quest20016:PaimonVanish()
    local questNpcActor = self:GetQuestNpcActor(clientData.PaimonData.Paimon)
    questNpcActor:ClearPriorityInter(InterTimingType.BTN)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end

    globalActor:EnablePlayerInput(true)
end

function Quest20016:OnSubStart2001601(arg1)
    print("\229\191\171\233\128\14601 start")
end

function Quest20016:OnSubFinish2001601(arg1)
    print("\229\191\171\233\128\14601 finish")
end

function Quest20016:OnSubFailed2001601(arg1) end

function Quest20016:OnSubStart2001602(arg1)
    print("\229\191\171\233\128\14602 start")
    v = 1
end

function Quest20016:OnSubFinish2001602(arg1)
    local tbl = {nPC1Data, nPC2Data, nPC3Data}
    for i, v in ipairs(tbl) do
        local v2 = v
        print(v2)
        self:CreateQuestNpc(arg1, v2.NpcID, i)
        print("NPCArray")
    end

    self:NotifyTo("Npc1573", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1575", NpcUtil.NpcEventType.HIDESELF, true)
    self:NotifyTo("Npc1577", NpcUtil.NpcEventType.HIDESELF, true)
    print("\229\191\171\233\128\14602 finish")
end

function Quest20016:OnSubFailed2001602(arg1) end

function Quest20016:OnSubStart2001603(arg1)
    print("\229\191\171\233\128\14603 start")
    self:ActionSafeCall(self.StartCount)
end

function Quest20016:OnSubFinish2001603(arg1)
    print("\229\191\171\233\128\14603 finished")
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest20016:OnSubFailed2001603(arg1)
    print("\229\191\171\233\128\14603 fail")
end

function Quest20016:OnSubStart2001604(arg1)
    print("\229\191\171\233\128\14604 start")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        if n2 == 1 then
            actor:FinishQuestID(false, 2001604)
        else
            actor:FinishQuestID(true, 2001604)
        end
    end
end

function Quest20016:OnSubFinish2001604(arg1)
    print("\229\191\171\233\128\14604 finish")
end

function Quest20016:OnSubFailed2001604(arg1)
    print("\229\191\171\233\128\14604 failed")
end

function Quest20016:OnSubStart2001605(arg1)
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        if n2 == 2 then
            actor:FinishQuestID(false, 2001605)
        else
            actor:FinishQuestID(true, 2001605)
        end
    end
end

function Quest20016:OnSubFinish2001605(arg1)
    print("\229\191\171\233\128\14605 finish")
end

function Quest20016:OnSubFailed2001605(arg1)
    print("\229\191\171\233\128\14605 failed")
end

function Quest20016:OnSubStart2001606(arg1)
    print("\229\191\171\233\128\14606 start")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        if n2 == 3 then
            actor:FinishQuestID(false, 2001606)
        else
            actor:FinishQuestID(true, 2001606)
        end
    end
end

function Quest20016:OnSubFinish2001606(arg1)
    print("\229\191\171\233\128\14606 finish")
end

function Quest20016:OnSubFailed2001606(arg1)
    print("\229\191\171\233\128\14606 failed")
end

function Quest20016:OnSubStart2001607(arg1)
    print("\229\191\171\233\128\14607 start")
end

function Quest20016:OnSubFinish2001607(arg1)
    print("\229\191\171\233\128\14607 finish")
end

function Quest20016:OnSubFailed2001607(arg1)
    print("\229\191\171\233\128\14607 failed")
end

function Quest20016:OnSubStart2001608(arg1)
    print("\229\191\171\233\128\14608 start")
end

function Quest20016:OnSubFinish2001608(arg1)
    print("\229\191\171\233\128\14608 finish")
end

function Quest20016:OnSubFailed2001608(arg1)
    print("\229\191\171\233\128\14608 failed")
end

function Quest20016:OnSubStart2001609(arg1)
    print("\229\191\171\233\128\14609 start")
end

function Quest20016:OnSubFinish2001609(arg1)
    print("\229\191\171\233\128\14609 finish")
end

function Quest20016:OnSubFailed2001609(arg1)
    print("\229\191\171\233\128\14609 failed")
end

function Quest20016:OnSubStart2001610(arg1)
    print("\229\191\171\233\128\14610 start")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        print("\229\191\171\233\128\1462001603 fail")
        actor:FinishQuestID(true, 2001603)
    end

    print("\229\191\171\233\128\14605 start")
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
    if v == 1 then
        self:ShowPaimonDoWay2()
    end

    local actor2 = actorMgr:GetActor(clientData.ActorAlias)
    if actor2 ~= nil then
        print("\229\191\171\233\128\14620016 fail")
        actor2:FinishQuestID(true, 2001610)
    end
end

function Quest20016:OnSubFinish2001610(arg1)
    print("\229\191\171\233\128\14610 finish")
end

function Quest20016:OnSubFailed2001610(arg1)
    print("\229\191\171\233\128\14610 failed")
end

function Quest20016:OnSubStart2001611(arg1) end

function Quest20016:OnSubFinish2001611(arg1)
    self:DestroyQuestNpcActor(nPC1Data.Npc, 3)
    self:DestroyQuestNpcActor(nPC2Data.Npc, 3)
    self:DestroyQuestNpcActor(nPC3Data.Npc, 3)
    self:NotifyTo("Npc1573", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1575", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1577", NpcUtil.NpcEventType.STARTDAILY, true)
    print("\229\191\171\233\128\14611 finish")
end

function Quest20016:OnSubFailed2001611(arg1)
    print("\229\191\171\233\128\14611 failed")
end

function Quest20016:OnMainFinished(arg1)
    print("main finished " .. tostring(arg1.QuestMainId))
end

function Quest20016:OnMainFailed(arg1)
    print("main failed " .. tostring(arg1.QuestMainId))
end

function Quest20016:OnMainCanceled(arg1)
    print("main canceled " .. tostring(arg1.QuestMainId))
    self:DestroyQuestNpcActor(nPC1Data.Npc, 3)
    self:DestroyQuestNpcActor(nPC2Data.Npc, 3)
    self:DestroyQuestNpcActor(nPC3Data.Npc, 3)
    self:NotifyTo("Npc1573", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1575", NpcUtil.NpcEventType.STARTDAILY, true)
    self:NotifyTo("Npc1577", NpcUtil.NpcEventType.STARTDAILY, true)
    self:CountDownUITerminate()
    self:CountNumUITerminate()
    self:UnCallFunc(self.CountDown)
end

function Quest20016:Start() end
function Quest20016:OnDestroy() end
return Quest20016

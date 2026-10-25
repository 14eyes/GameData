require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest20059 = class("Quest20059", QuestActorProxy)
Quest20059.defaultAlias = "Quest20059"
local clientData
local setQuestVarWithInterval
local setQuestVar
local n
local v
local treasureGiven
local treasureGivenQuest
local npcData01
local npcData01Id

function Quest20059:OnDataLoaded()
    clientData = self.clientData
    setQuestVarWithInterval = 0
    setQuestVar = 0
    n = 0
    v = 0
    treasureGiven = clientData.TreasureGiven
    treasureGivenQuest = clientData.TreasureGivenQuest
    npcData01 = clientData.NPCData01
    npcData01Id = clientData.NPCData01Id
end

function Quest20059:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["2005901"] = self.OnSubStart2005901
    self.subStartHandlers["2005902"] = self.OnSubStart2005902
    self.subStartHandlers["2005903"] = self.OnSubStart2005903
    self.subStartHandlers["2005904"] = self.OnSubStart2005904
    self.subStartHandlers["2005905"] = self.OnSubStart2005905
    self.subStartHandlers["2005906"] = self.OnSubStart2005906
    self.subStartHandlers["2005907"] = self.OnSubStart2005907
    self.subStartHandlers["2005908"] = self.OnSubStart2005908
    self.subStartHandlers["2005909"] = self.OnSubStart2005909
    self.subStartHandlers["2005910"] = self.OnSubStart2005910
    self.subStartHandlers["2005920"] = self.OnSubStart2005920
    self.subStartHandlers["2005930"] = self.OnSubStart2005930
    self.subStartHandlers["2005950"] = self.OnSubStart2005950
    self.subStartHandlers["2005970"] = self.OnSubStart2005970
    self.subStartHandlers["2005990"] = self.OnSubStart2005990
    self.subStartHandlers["2005999"] = self.OnSubStart2005999
end

function Quest20059:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["2005901"] = self.OnSubFinish2005901
    self.subFinishHandlers["2005902"] = self.OnSubFinish2005902
    self.subFinishHandlers["2005903"] = self.OnSubFinish2005903
    self.subFinishHandlers["2005904"] = self.OnSubFinish2005904
    self.subFinishHandlers["2005905"] = self.OnSubFinish2005905
    self.subFinishHandlers["2005906"] = self.OnSubFinish2005906
    self.subFinishHandlers["2005907"] = self.OnSubFinish2005907
    self.subFinishHandlers["2005908"] = self.OnSubFinish2005908
    self.subFinishHandlers["2005909"] = self.OnSubFinish2005909
    self.subFinishHandlers["2005910"] = self.OnSubFinish2005910
    self.subFinishHandlers["2005920"] = self.OnSubFinish2005920
    self.subFinishHandlers["2005930"] = self.OnSubFinish2005930
    self.subFinishHandlers["2005950"] = self.OnSubFinish2005950
    self.subFinishHandlers["2005970"] = self.OnSubFinish2005970
    self.subFinishHandlers["2005990"] = self.OnSubFinish2005990
    self.subFinishHandlers["2005999"] = self.OnSubFinish2005999
end

function Quest20059:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
    self.subFailedHandlers["2005901"] = self.OnSubFailed2005901
    self.subFailedHandlers["2005902"] = self.OnSubFailed2005902
    self.subFailedHandlers["2005903"] = self.OnSubFailed2005903
    self.subFailedHandlers["2005904"] = self.OnSubFailed2005904
    self.subFailedHandlers["2005905"] = self.OnSubFailed2005905
    self.subFailedHandlers["2005906"] = self.OnSubFailed2005906
    self.subFailedHandlers["2005907"] = self.OnSubFailed2005907
    self.subFailedHandlers["2005908"] = self.OnSubFailed2005908
    self.subFailedHandlers["2005909"] = self.OnSubFailed2005909
    self.subFailedHandlers["2005910"] = self.OnSubFailed2005910
    self.subFailedHandlers["2005920"] = self.OnSubFailed2005920
    self.subFailedHandlers["2005930"] = self.OnSubFailed2005930
    self.subFailedHandlers["2005950"] = self.OnSubFailed2005950
    self.subFailedHandlers["2005970"] = self.OnSubFailed2005970
    self.subFailedHandlers["2005990"] = self.OnSubFailed2005990
    self.subFailedHandlers["2005999"] = self.OnSubFailed2005999
end

function Quest20059:OnSubStart2005901(arg1)
    setQuestVarWithInterval = self:SetQuestVarWithInterval(arg1.QuestConfigId, 0, 20, 20)
    print(setQuestVarWithInterval)
    setQuestVar = self:SetQuestVar(arg1.QuestConfigId, 1, 0)
    n = self:SetQuestVar(arg1.QuestConfigId, 2, 0)
    v = self:SetQuestVar(arg1.QuestConfigId, 3, 0)
end

function Quest20059:OnSubFinish2005901(arg1) end
function Quest20059:OnSubFailed2005901(arg1) end

function Quest20059:OnSubStart2005902(arg1)
    if self:GetQuestVar(arg1.QuestConfigId, 3) == 0 then
        self.uActor:RequestInteraction("Npc1435")
    end

    self:SetQuestVar(arg1.QuestConfigId, 3, 1)
end

function Quest20059:OnSubFinish2005902(arg1) end
function Quest20059:OnSubFailed2005902(arg1) end
function Quest20059:OnSubStart2005903(arg1) end
function Quest20059:OnSubFinish2005903(arg1) end
function Quest20059:OnSubFailed2005903(arg1) end

function Quest20059:OnSubStart2005904(arg1)
    setQuestVar = self:GetQuestVar(arg1.QuestConfigId, 1)
    local str = tostring(setQuestVar)
    local v = npcData01Id[str]
    if v ~= nil then
        self:NotifyTo("Npc" .. tostring(v * 100 + 1), NpcUtil.NpcEventType.HIDESELF, true)
    else
        print("\230\178\161\230\156\137\232\166\129\233\148\128\230\175\129\231\154\132NPC")
    end

    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, v * 100 + 1)
    end)

    self.uActor:RequestInteraction("Npc1435")
end

function Quest20059:OnSubFinish2005904(arg1) end
function Quest20059:OnSubFailed2005904(arg1) end
function Quest20059:OnSubStart2005905(arg1) end

function Quest20059:OnSubFinish2005905(arg1)
    setQuestVar = self:GetQuestVar(arg1.QuestConfigId, 1)
    local str = tostring(setQuestVar)
    local v = npcData01Id[str]
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        if v ~= nil then
            arg1:GetQuestNpcActor("Npc" .. tostring(v * 100 + 1)):Destroy(false)
            arg1:NotifyTo("Npc" .. tostring(v), NpcUtil.NpcEventType.STARTDAILY, true)
        else
            print("\230\178\161\230\156\137\232\166\129\233\148\128\230\175\129\231\154\132NPC")
        end
    end)
end

function Quest20059:OnSubFailed2005905(arg1) end
function Quest20059:OnSubStart2005906(arg1) end
function Quest20059:OnSubFinish2005906(arg1) end
function Quest20059:OnSubFailed2005906(arg1) end
function Quest20059:OnSubStart2005907(arg1) end
function Quest20059:OnSubFinish2005907(arg1) end
function Quest20059:OnSubFailed2005907(arg1) end
function Quest20059:OnSubStart2005908(arg1) end
function Quest20059:OnSubFinish2005908(arg1) end
function Quest20059:OnSubFailed2005908(arg1) end
function Quest20059:OnSubStart2005909(arg1) end
function Quest20059:OnSubFinish2005909(arg1) end
function Quest20059:OnSubFailed2005909(arg1) end
function Quest20059:OnSubStart2005910(arg1) end

function Quest20059:OnSubFinish2005910(arg1)
    self:CallDelay(300, function()
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 2005910)
        end
    end)
end

function Quest20059:OnSubFailed2005910(arg1) end
function Quest20059:OnSubStart2005920(arg1) end

function Quest20059:OnSubFinish2005920(arg1)
    local givingRecord = self:GetGivingRecord(2005920)
    if givingRecord ~= nil then
        local this = self
        local func = self.SetQuestVar
        local questConfigId = arg1.QuestConfigId
        local n = 1
        local str = tostring(givingRecord)
        setQuestVar = func(this, questConfigId, n, treasureGiven[str])
    else
        print("givingdata\230\156\137\232\175\175")
    end
end

function Quest20059:OnSubFailed2005920(arg1) end
function Quest20059:OnSubStart2005930(arg1) end
function Quest20059:OnSubFinish2005930(arg1) end
function Quest20059:OnSubFailed2005930(arg1) end
function Quest20059:OnSubStart2005950(arg1) end
function Quest20059:OnSubFinish2005950(arg1) end
function Quest20059:OnSubFailed2005950(arg1) end
function Quest20059:OnSubStart2005970(arg1) end
function Quest20059:OnSubFinish2005970(arg1) end
function Quest20059:OnSubFailed2005970(arg1) end
function Quest20059:OnSubStart2005990(arg1) end
function Quest20059:OnSubFinish2005990(arg1) end
function Quest20059:OnSubFailed2005990(arg1) end

function Quest20059:InvokeOnInteraction(arg1)
    setQuestVar = self:GetQuestVar(2005999, 1)
    if setQuestVar ~= nil then
        if arg1 == 0 then
            self:SetQuestVar(2005999, 3, 2005904)
        elseif arg1 == 1 then
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                actor:FinishQuestID(false, 2005906)
                actor:FinishQuestID(false, 2005904)
            end
        elseif arg1 == 2 then
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                actor:FinishQuestID(false, 2005907)
                actor:FinishQuestID(false, 2005904)
            end
        elseif arg1 == 3 then
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                actor:FinishQuestID(false, 2005908)
                actor:FinishQuestID(false, 2005904)
            end
        elseif arg1 == 99 then
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            local str = tostring(10 * setQuestVar + 1)
            local v = treasureGivenQuest[str]
            if actor ~= nil then
                actor:FinishQuestID(false, v)
            end
        elseif arg1 == 100 then
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            local str = tostring(10 * setQuestVar + 2)
            local v = treasureGivenQuest[str]
            if actor ~= nil then
                actor:FinishQuestID(false, v)
            end
        elseif arg1 == 101 then
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            local str = tostring(10 * setQuestVar + 3)
            local v = treasureGivenQuest[str]
            if actor ~= nil then
                actor:FinishQuestID(false, v)
            end
        elseif arg1 == 102 then
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            local str = tostring(10 * setQuestVar + 4)
            local v = treasureGivenQuest[str]
            if actor ~= nil then
                actor:FinishQuestID(false, v)
            end
        end
    else
        print("\230\137\190\228\184\141\229\136\176\229\133\168\229\177\128\229\143\152\233\135\14320059\239\188\1541")
    end
end

function Quest20059:OnMainCanceled()
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    setQuestVar = self:GetQuestVar(actor.QuestConfigId, 1)
    if setQuestVar ~= nil then
        local str = tostring(setQuestVar)
        local v = npcData01Id[str]
        if v ~= nil then
            self:GetQuestNpcActor("Npc" .. tostring(v * 100 + 1)):Destroy(false)
            self:NotifyTo("Npc" .. tostring(v), NpcUtil.NpcEventType.STARTDAILY, true)
        else
            print("\230\178\161\230\156\137\232\166\129\233\148\128\230\175\129\231\154\132NPC")
        end
    else
        print("\228\184\141\229\173\152\229\156\168\229\143\175\231\148\168\231\154\1321\229\143\183\229\133\168\229\177\128\229\143\152\233\135\143")
    end
end

function Quest20059:Start() end
function Quest20059:OnDestroy() end
return Quest20059

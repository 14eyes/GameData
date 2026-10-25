require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22022 = class("Quest22022", QuestActorProxy)
Quest22022.defaultAlias = "Quest22022"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local n = 0
local questVar = 0
local tbl = {}
local v = 2
local n2 = 3
local n3 = 4
local n4 = 5
tbl[1] = 1
tbl[2] = v
tbl[3] = n2
tbl[4] = n3
tbl[5] = n4
local v2 = tbl
local n5 = 5

function Quest22022:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest22022:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2202201"] = self.OnSubStart2202201,
        ["2202202"] = self.OnSubStart2202202,
        ["2202203"] = self.OnSubStart2202203
    }
end

function Quest22022:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2202201"] = self.OnSubFinish2202201,
        ["2202202"] = self.OnSubFinish2202202,
        ["2202203"] = self.OnSubFinish2202203
    }
end

function Quest22022:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2202201"] = self.OnSubFailed2202201,
        ["2202202"] = self.OnSubFailed2202202,
        ["2202203"] = self.OnSubFailed2202203
    }
end

function Quest22022:Start()
    print("Start")
end

function Quest22022:OnDestroy()
    print("OnDestroy")
end

function Quest22022:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest22022:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22022:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest22022:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest22022:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if arg1 == 1 then
        n = n + 1
    end

    print("RandTime is " .. n5)
    print("c_RandSeed is" .. n)
    if n5 <= 3 then
        if n <= 2 then
            print("\228\184\137\233\129\147\233\162\152\228\184\141\229\174\140\229\133\168\230\173\163\231\161\174\230\151\182\239\188\140\232\174\190\229\128\188\239\188\140\229\188\186\229\136\182\229\175\185\232\175\157\239\188\140\232\183\179\229\135\186")
            self:SetQuestVarByMainId(1, 50)
            self:RequestInteraction(npcs.Npc20270Data.alias)
            return
        end
    end

    if arg1 == 1 then
        if 3 <= n then
            self:SetQuestVarByMainId(1, 100)
            self:RequestInteraction(npcs.Npc20270Data.alias)
            return
        end

        questVar = self:GetQuestVar(2202201, 0)
        print("\230\181\139\232\175\149\229\134\133\229\174\185=\231\173\148\229\175\185\228\186\134\239\188\129")
        print(questVar)
        print(v2)
        self:RemoveTableElement(v2, questVar)
        math.randomseed(os.time())
        n5 = n5 - 1
        local v = math.random(1, n5)
        local v3 = v2[v]
        self:SetQuestVar(2202201, 0, v3)
        self:RequestInteraction(npcs.Npc20270Data.alias)
    elseif arg1 == 2 then
        print("\230\181\139\232\175\149\229\134\133\229\174\185=\231\173\148\233\148\153\228\186\134\239\188\129")
        questVar = self:GetQuestVar(2202201, 0)
        self:RemoveTableElement(v2, questVar)
        math.randomseed(os.time())
        n5 = n5 - 1
        local v = math.random(1, n5)
        local v3 = v2[v]
        self:SetQuestVar(2202201, 0, v3)
        self:RequestInteraction(npcs.Npc20270Data.alias)
    end
end

function Quest22022:OnSubStart2202201(arg1)
    print("OnSubStart2202201")
    n = 0
    local tbl = {}
    local v = 2
    local n2 = 3
    local n3 = 4
    local n4 = 5
    tbl[1] = 1
    tbl[2] = v
    tbl[3] = n2
    tbl[4] = n3
    tbl[5] = n4
    v2 = tbl
    questVar = 0
    n5 = 5
    self:SetQuestVarByMainId(0, 0)
    self:SetQuestVarByMainId(1, 0)
    self:CreateQuestNpc(arg1, npcs.Npc20270Data.id, 1)
end

function Quest22022:OnSubFinish2202201(arg1)
    print("OnSubFinish2202201")
    self:RequestInteraction(npcs.Npc20270Data.alias)
end

function Quest22022:OnSubFailed2202201(arg1)
    print("OnSubFailed2202201")
end

function Quest22022:OnSubStart2202202(arg1)
    print("OnSubStart2202202")
end

function Quest22022:OnSubFinish2202202(arg1)
    print("OnSubFinish2202202")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20270Data.alias)
end

function Quest22022:OnSubFailed2202202(arg1)
    print("OnSubFailed2202202")
end

function Quest22022:OnSubStart2202203(arg1)
    print("OnSubStart2202203")
end

function Quest22022:OnSubFinish2202203(arg1)
    print("OnSubFinish2202203")
    self:NpcDestroyWithBlackscreen(0, npcs.Npc20270Data.alias)
end

function Quest22022:OnSubFailed2202203(arg1)
    print("OnSubFailed2202203")
end

return Quest22022

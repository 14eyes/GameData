require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest23026 = class("Quest23026", QuestActorProxy)
Quest23026.defaultAlias = "Quest23026"
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
local n5 = 6
tbl[1] = 1
tbl[2] = v
tbl[3] = n2
tbl[4] = n3
tbl[5] = n4
tbl[6] = n5
local v2 = tbl
local n6 = 6

function Quest23026:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
end

function Quest23026:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2302601"] = self.OnSubStart2302601,
        ["2302602"] = self.OnSubStart2302602,
        ["2302603"] = self.OnSubStart2302603,
        ["2302604"] = self.OnSubStart2302604,
        ["2302605"] = self.OnSubStart2302605,
        ["2302606"] = self.OnSubStart2302606,
        ["2302607"] = self.OnSubStart2302607,
        ["2302608"] = self.OnSubStart2302608,
        ["2302609"] = self.OnSubStart2302609,
        ["2302610"] = self.OnSubStart2302610,
        ["2302611"] = self.OnSubStart2302611,
        ["2302612"] = self.OnSubStart2302612
    }
end

function Quest23026:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2302601"] = self.OnSubFinish2302601,
        ["2302602"] = self.OnSubFinish2302602,
        ["2302603"] = self.OnSubFinish2302603,
        ["2302604"] = self.OnSubFinish2302604,
        ["2302605"] = self.OnSubFinish2302605,
        ["2302606"] = self.OnSubFinish2302606,
        ["2302607"] = self.OnSubFinish2302607,
        ["2302608"] = self.OnSubFinish2302608,
        ["2302609"] = self.OnSubFinish2302609,
        ["2302610"] = self.OnSubFinish2302610,
        ["2302611"] = self.OnSubFinish2302611,
        ["2302612"] = self.OnSubFinish2302612
    }
end

function Quest23026:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {}
end

function Quest23026:Start()
    print("Start")
end

function Quest23026:OnDestroy()
    print("OnDestroy")
end

function Quest23026:OnMainFinished(arg1)
    print("OnMainFinished")
    self:ActionSafeCall(function(arg1)
        arg1:LightNotifyTo(npcs.Npc4084Data.alias, 0, true)
    end)
end

function Quest23026:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest23026:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.Npc4083Data.alias, 3)
    self:LightNotifyTo(npcs.Npc4084Data.alias, 0, true)
end

function Quest23026:NpcDestroyWithBlackscreen(arg1, arg2)
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:SafeDestroyQuestNpc(arg2, arg1)
    end, nil, nil, "")
end

function Quest23026:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if arg1 == 1 then
        n = n + 1
        questVar = self:GetQuestVar(2302601, 0)
        print("\230\181\139\232\175\149\229\134\133\229\174\185=\231\173\148\229\175\185\228\186\134\239\188\129")
        print(questVar)
        local questGlobalVar = self:GetQuestGlobalVar(2302605)
        local v = self:GetQuestGlobalVar(2302606)
        local questGlobalVar2 = self:GetQuestGlobalVar(2302607)
        local questGlobalVar3 = self:GetQuestGlobalVar(2302608)
        local questGlobalVar4 = self:GetQuestGlobalVar(2302609)
        local questGlobalVar5 = self:GetQuestGlobalVar(2302610)
        if questVar == 1 then
            actorUtils.FinishQuestID(false, 2302605)
            questGlobalVar = 1
        end

        if questVar == 2 then
            actorUtils.FinishQuestID(false, 2302606)
            v = 1
        end

        if questVar == 3 then
            actorUtils.FinishQuestID(false, 2302607)
            questGlobalVar2 = 1
        end

        if questVar == 4 then
            actorUtils.FinishQuestID(false, 2302608)
            questGlobalVar3 = 1
        end

        if questVar == 5 then
            actorUtils.FinishQuestID(false, 2302609)
            questGlobalVar4 = 1
        end

        if questVar == 6 then
            actorUtils.FinishQuestID(false, 2302610)
            questGlobalVar5 = 1
        end

        if questGlobalVar == 1 and v == 1 and questGlobalVar2 == 1 and questGlobalVar3 == 1 and questGlobalVar4 == 1 and questGlobalVar5 == 1 then
            actorUtils.FinishQuestID(false, 2302611)
        end
    end

    print("RandTime is " .. n6)
    print("c_RandSeed is" .. n)
    if n6 <= 4 then
        if n <= 2 then
            print("\228\184\137\233\129\147\233\162\152\228\184\141\229\174\140\229\133\168\230\173\163\231\161\174\230\151\182\239\188\140\232\174\190\229\128\188\239\188\140\229\188\186\229\136\182\229\175\185\232\175\157\239\188\140\232\183\179\229\135\186")
            self:SetQuestVarByMainId(1, 50)
            return
        end
    end

    if arg1 == 1 then
        questVar = self:GetQuestVar(2302601, 0)
        if 3 <= n then
            self:SetQuestVarByMainId(1, 100)
            return
        end

        print(v2)
        self:RemoveTableElement(v2, questVar)
        math.randomseed(os.time())
        n6 = n6 - 1
        local v = math.random(1, n6)
        local v3 = v2[v]
        self:SetQuestVar(2302601, 0, v3)
    elseif arg1 == 2 then
        print("\230\181\139\232\175\149\229\134\133\229\174\185=\231\173\148\233\148\153\228\186\134\239\188\129")
        questVar = self:GetQuestVar(2302601, 0)
        self:RemoveTableElement(v2, questVar)
        math.randomseed(os.time())
        n6 = n6 - 1
        local v = math.random(1, n6)
        local v3 = v2[v]
        self:SetQuestVar(2302601, 0, v3)
    end
end

function Quest23026:DailyNpcSafeHideSelf(arg1, arg2, arg3)
    self:ActionSafeCall(function(arg1_2)
        arg1_2:NotifyTo(arg1, arg2, arg3)
    end)
end

function Quest23026:OnSubStart2302601(arg1)
    print("OnSubStart2302601")
    n = 0
    local tbl = {}
    local v = 2
    local n2 = 3
    local n3 = 4
    local n4 = 5
    local n5 = 6
    tbl[1] = 1
    tbl[2] = v
    tbl[3] = n2
    tbl[4] = n3
    tbl[5] = n4
    tbl[6] = n5
    v2 = tbl
    questVar = 0
    n6 = 6
    self:SetQuestVarByMainId(0, 0)
    self:SetQuestVarByMainId(1, 0)
    self:CreateQuestNpc(arg1, npcs.Npc4083Data.id, 1)
    self:DailyNpcSafeHideSelf(npcs.Npc4084Data.alias, 1, true)
    print(n6)
end

function Quest23026:OnSubFinish2302601(arg1)
    print("OnSubFinish2302601")
end

function Quest23026:OnSubStart2302602(arg1)
    print("OnSubStart2302602")
    self:DailyNpcSafeHideSelf(npcs.Npc4084Data.alias, 1, true)
end

function Quest23026:OnSubFinish2302602(arg1)
    print("OnSubFinish2302602")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4083Data.alias)
    self:LightNotifyTo(npcs.Npc4084Data.alias, 0, true)
end

function Quest23026:OnSubStart2302603(arg1)
    print("OnSubStart2302603")
    self:DailyNpcSafeHideSelf(npcs.Npc4084Data.alias, 1, true)
end

function Quest23026:OnSubFinish2302603(arg1)
    print("OnSubFinish2302603")
    self:NpcDestroyWithBlackscreen(3, npcs.Npc4083Data.alias)
    self:LightNotifyTo(npcs.Npc4084Data.alias, 0, true)
end

function Quest23026:OnSubStart2302604(arg1)
    print("OnSubStart2302604")
end

function Quest23026:OnSubFinish2302604(arg1)
    print("OnSubFinish2302604")
end

function Quest23026:OnSubStart2302605(arg1)
    print("OnSubStart2302605")
end

function Quest23026:OnSubFinish2302605(arg1)
    print("OnSubFinish2302605")
end

function Quest23026:OnSubStart2302606(arg1)
    print("OnSubStart2302606")
end

function Quest23026:OnSubFinish2302606(arg1)
    print("OnSubFinish2302606")
end

function Quest23026:OnSubStart2302607(arg1)
    print("OnSubStart2302607")
end

function Quest23026:OnSubFinish2302607(arg1)
    print("OnSubFinish2302607")
end

function Quest23026:OnSubStart2302608(arg1)
    print("OnSubStart2302608")
end

function Quest23026:OnSubFinish2302608(arg1)
    print("OnSubFinish2302608")
end

function Quest23026:OnSubStart2302609(arg1)
    print("OnSubStart2302609")
end

function Quest23026:OnSubFinish2302609(arg1)
    print("OnSubFinish2302609")
end

function Quest23026:OnSubStart2302610(arg1)
    print("OnSubStart2302610")
end

function Quest23026:OnSubFinish2302610(arg1)
    print("OnSubFinish2302610")
end

function Quest23026:OnSubStart2302611(arg1)
    print("OnSubStart2302611")
end

function Quest23026:OnSubFinish2302611(arg1)
    print("OnSubFinish2302611")
end

function Quest23026:OnSubStart2302612(arg1)
    print("OnSubStart2302612")
    self:DailyNpcSafeHideSelf(npcs.Npc4084Data.alias, 1, true)
end

function Quest23026:OnSubFinish2302612(arg1)
    print("OnSubFinish2302612")
end

return Quest23026

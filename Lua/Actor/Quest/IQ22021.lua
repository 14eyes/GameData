require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22021 = class("Quest22021", QuestActorProxy)
Quest22021.defaultAlias = "Quest22021"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas
local n = 0
local v = 0
local n2 = 0

function Quest22021:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest22021:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2202101"] = self.OnSubStart2202101,
        ["2202102"] = self.OnSubStart2202102,
        ["2202103"] = self.OnSubStart2202103,
        ["2202104"] = self.OnSubStart2202104,
        ["2202105"] = self.OnSubStart2202105,
        ["2202106"] = self.OnSubStart2202106,
        ["2202107"] = self.OnSubStart2202107,
        ["2202108"] = self.OnSubStart2202108,
        ["2202109"] = self.OnSubStart2202109,
        ["2202110"] = self.OnSubStart2202110
    }
end

function Quest22021:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2202101"] = self.OnSubFinish2202101,
        ["2202102"] = self.OnSubFinish2202102,
        ["2202103"] = self.OnSubFinish2202103,
        ["2202104"] = self.OnSubFinish2202104,
        ["2202105"] = self.OnSubFinish2202105,
        ["2202106"] = self.OnSubFinish2202106,
        ["2202107"] = self.OnSubFinish2202107,
        ["2202108"] = self.OnSubFinish2202108,
        ["2202109"] = self.OnSubFinish2202109,
        ["2202110"] = self.OnSubFinish2202110
    }
end

function Quest22021:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2202101"] = self.OnSubFailed2202101,
        ["2202102"] = self.OnSubFailed2202102,
        ["2202103"] = self.OnSubFailed2202103,
        ["2202104"] = self.OnSubFailed2202104,
        ["2202105"] = self.OnSubFailed2202105,
        ["2202106"] = self.OnSubFailed2202106,
        ["2202107"] = self.OnSubFailed2202107,
        ["2202108"] = self.OnSubFailed2202108,
        ["2202109"] = self.OnSubFailed2202109,
        ["2202110"] = self.OnSubFailed2202110
    }
end

function Quest22021:Start()
    print("Start")
end

function Quest22021:OnDestroy()
    print("OnDestroy")
end

function Quest22021:OnMainFinished(arg1)
    print("OnMainFinished")
    self:CountDownUITerminate()
    self:BattleUITerminate()
    n2 = 1
end

function Quest22021:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest22021:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:CountDownUITerminate()
    self:BattleUITerminate()
    n = 0
    v = 0
    n2 = 1
    self:SafeDestroyQuestNpc(npcs.Npc20268Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc20271Data.alias, 3)
    self:UnSpawn(gadgets.Gadget70710031Data.alias)
    self:UnSpawn(gadgets.Gadget70710032Data.alias)
end

function Quest22021:FinishQuest2202102()
    actorMgr:GetActor("22021"):FinishQuestID(false, 2202102)
end

function Quest22021:FinishQuest2202103()
    actorMgr:GetActor("22021"):FinishQuestID(false, 2202103)
end

function Quest22021:QuestJudge()
    local subQuestState = self:GetSubQuestState(2202108)
    if n == 0 then
        if n2 == 0 then
            print("XudongScore = 0")
            n = n + 3
            v = v + 3
            self:BattleUIStart(100, 20268, n, 20271, v)
        end
    else
        if 100 <= n then
            if n > v then
                if subQuestState == 2 then
                    local actor = actorMgr:GetActor(clientData.ActorAlias)
                    if actor ~= nil then
                        print("Battle  ------------------- succeed" .. "\230\156\172\233\152\159\229\136\134\230\149\176\239\188\154" .. tostring(n) .. "\229\175\185\230\150\185\229\136\134\230\149\176\239\188\154" .. tostring(v))
                        actor:FinishQuestID(false, 2202108)
                    end

                    self:CallDelay(3, function(arg1)
                        arg1:CountDownUITerminate()
                        arg1:BattleUITerminate()
                    end)
                end
            end
        else
            if 100 <= v then
                if v >= n and subQuestState == 2 then
                    local actor = actorMgr:GetActor(clientData.ActorAlias)
                    if actor ~= nil then
                        print("Battle  ------------------- failed" .. "\230\156\172\233\152\159\229\136\134\230\149\176\239\188\154" .. tostring(n) .. "\229\175\185\230\150\185\229\136\134\230\149\176\239\188\154" .. tostring(v))
                        actor:FinishQuestID(true, 2202108)
                    end

                    self:CallDelay(3, function(arg1)
                        arg1:CountDownUITerminate()
                        arg1:BattleUITerminate()
                    end)
                end
            end
        end
    end

    self:CallDelay(2, function(arg1)
        if arg1:GetSubQuestState(2202108) == 2 then
            arg1:QuestJudge()
        end
    end)
end

function Quest22021:AddScore()
    local n3 = math.random(2, 3)
    local n4 = math.random(2, 3)
    local n5 = math.random(1, 3)
    local subQuestState = self:GetSubQuestState(2202108)
    print("\229\136\154\232\191\155\229\133\165\229\190\170\231\142\175\230\151\182\239\188\140isdown\231\154\132\229\128\188\230\152\175" .. n2)
    if subQuestState == 2 then
        if n2 == 0 then
            print("\229\155\160\228\184\186\230\187\161\232\182\179\230\157\161\228\187\182\239\188\140\229\183\178\231\187\143\232\191\155\229\133\165\229\136\176\229\138\160\229\136\134\231\142\175\232\138\130\228\186\134")
            n = n + n5
            self:BattleUIChange(n, n5, v, 0)
            self:CallDelay(n4, function(arg1)
                local n2 = math.random(1, 3)
                if 100 <= v + n2 then
                    local n3 = 100 - v
                    v = 100
                    arg1:BattleUIChange(n, 0, v, n3)
                else
                    v = v + n2
                    arg1:BattleUIChange(n, 0, v, n2)
                end
            end)
        end
    end

    if n2 == 0 then
        self:CallDelay(n3, function(arg1)
            print("\229\187\182\230\151\182\229\144\142\229\134\141\230\172\161\229\138\160\229\136\134")
            arg1:AddScore()
        end)
    end
end

function Quest22021:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        print("\232\191\153\233\135\140\229\188\128\229\167\139\232\174\190\231\189\174\228\186\134\229\143\152\233\135\143")
        self:SetQuestVarByMainId(1, 1)
        print("\232\191\153\233\135\140\229\174\140\230\136\144\232\174\190\231\189\174\228\186\134\229\143\152\233\135\143")
    elseif arg1 == 2 then
        self:SetQuestVarByMainId(1, 2)
    end
end

function Quest22021:OnSubStart2202101(arg1)
    print("OnSubStart2202101")
    self:CreateQuestNpc(arg1, npcs.Npc20268Data.id, 1)
    self:CreateQuestNpc(arg1, npcs.Npc20271Data.id, 2)
    n = 0
    v = 0
    n2 = 0
end

function Quest22021:OnSubFinish2202101(arg1)
    print("OnSubFinish2202101")
end

function Quest22021:OnSubFailed2202101(arg1)
    print("OnSubFailed2202101")
end

function Quest22021:OnSubStart2202102(arg1)
    print("OnSubStart2202102")
    n = 0
    v = 0
    self:QuestJudge()
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc20268Data.alias)
    self:NpcWalkToRouteTaskEasy(questNpcActor, datas.RoutePointsData, function(arg1)
        arg1:SteerToTask(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q22021_Xudong_02").rot), 1, true, true)
        arg1:DoFreeStyle(1230)
        actorMgr:GetActor("22021"):FinishQuest2202102()
    end)

    local questNpcActor2 = self:GetQuestNpcActor(npcs.Npc20271Data.alias)
    self:NpcWalkToRouteTaskEasy(questNpcActor2, datas.RoutePointsData1, function(arg1)
        arg1:SteerToTask(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q22021_Wushidashu_02").rot), 1, true, true)
    end)
end

function Quest22021:OnSubFinish2202102(arg1)
    print("OnSubFinish2202102")
end

function Quest22021:OnSubFailed2202102(arg1)
    print("OnSubFailed2202102")
end

function Quest22021:OnSubStart2202103(arg1)
    print("OnSubStart2202103")
    n = 0
    v = 0
    self:QuestJudge()
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc20271Data.alias)
    self:NpcWalkToRouteTaskEasy(questNpcActor, datas.RoutePointsData1, function(arg1)
        arg1:SteerToTask(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q22021_Wushidashu_02").rot), 1, true, true)
        actorMgr:GetActor("22021"):FinishQuest2202103()
    end)

    local questNpcActor2 = self:GetQuestNpcActor(npcs.Npc20268Data.alias)
    self:NpcWalkToRouteTaskEasy(questNpcActor2, datas.RoutePointsData, function(arg1)
        arg1:SteerToTask(M.Euler2DirXZ(sceneData:GetDummyPoint(3, "Q22021_Xudong_02").rot), 1, true, true)
        arg1:DoFreeStyle(1230)
    end)
end

function Quest22021:OnSubFinish2202103(arg1)
    print("OnSubFinish2202103")
end

function Quest22021:OnSubFailed2202103(arg1)
    print("OnSubFailed2202103")
end

function Quest22021:OnSubStart2202104(arg1)
    print("OnSubStart2202104")
    self:UnSpawn(gadgets.Gadget70710031Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710031Data.id, 1, 0)
    self:NarratorOnlyTask(datas.NarratorTable01, nil, "")
    self:AddScore()
end

function Quest22021:OnSubFinish2202104(arg1)
    print("OnSubFinish2202104")
    self:UnSpawn(gadgets.Gadget70710031Data.alias)
    n = n + 15
    self:BattleUIChange(n, 15, v, 0)
    self:RequestInteraction(npcs.Npc20268Data.alias)
    self:CallDelay(5, function(arg1)
        local n2 = math.random(8, 14)
        v = v + n2
        arg1:BattleUIChange(n, 0, v, n2)
    end)
end

function Quest22021:OnSubFailed2202104(arg1)
    print("OnSubFailed2202104")
end

function Quest22021:OnSubStart2202105(arg1)
    print("OnSubStart2202105")
    self:UnSpawn(gadgets.Gadget70710032Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710032Data.id, 1, 0)
    self:NarratorOnlyTask(datas.NarratorTable02, nil, "")
    self:AddScore()
end

function Quest22021:OnSubFinish2202105(arg1)
    print("OnSubFinish2202105")
    self:UnSpawn(gadgets.Gadget70710032Data.alias)
    v = v + 15
    self:BattleUIChange(n, 0, v, 15)
    self:RequestInteraction(npcs.Npc20271Data.alias)
    self:CallDelay(5, function(arg1)
        local n2 = math.random(8, 14)
        n = n + n2
        arg1:BattleUIChange(n, n2, v, 0)
    end)
end

function Quest22021:OnSubFailed2202105(arg1)
    print("OnSubFailed2202105")
end

function Quest22021:OnSubStart2202106(arg1)
    print("OnSubStart2202106")
end

function Quest22021:OnSubFinish2202106(arg1)
    print("OnSubFinish2202106")
    n = n + 40
    self:BattleUIChange(n, 40, v, 0)
    self:CallDelay(5, function(arg1)
        local n2 = math.random(34, 40)
        v = v + n2
        arg1:BattleUIChange(n, 0, v, n2)
    end)
end

function Quest22021:OnSubFailed2202106(arg1)
    print("OnSubFailed2202106")
end

function Quest22021:OnSubStart2202107(arg1)
    print("OnSubStart2202107")
end

function Quest22021:OnSubFinish2202107(arg1)
    print("OnSubFinish2202107")
    v = v + 40
    self:BattleUIChange(n, 0, v, 40)
    self:CallDelay(5, function(arg1)
        local n2 = math.random(34, 40)
        n = n + n2
        arg1:BattleUIChange(n, n2, v, 0)
    end)
end

function Quest22021:OnSubFailed2202107(arg1)
    print("OnSubFailed2202107")
end

function Quest22021:OnSubStart2202108(arg1)
    print("OnSubStart2202108")
end

function Quest22021:OnSubFinish2202108(arg1)
    print("OnSubFinish2202108")
    self:CountDownUITerminate()
    self:BattleUITerminate()
    self:NarratorOnlyTask(datas.NarratorTable03, nil, "")
end

function Quest22021:OnSubFailed2202108(arg1)
    print("OnSubFailed2202108")
    self:CountDownUITerminate()
    self:BattleUITerminate()
    self:NarratorOnlyTask(datas.NarratorTable04, nil, "")
end

function Quest22021:OnSubStart2202109(arg1)
    print("OnSubStart2202109")
end

function Quest22021:OnSubFinish2202109(arg1)
    print("OnSubFinish2202109")
end

function Quest22021:OnSubFailed2202109(arg1)
    print("OnSubFailed2202109")
end

function Quest22021:OnSubStart2202110(arg1)
    print("OnSubStart2202110")
end

function Quest22021:OnSubFinish2202110(arg1)
    print("OnSubFinish2202110")
end

function Quest22021:OnSubFailed2202110(arg1)
    print("OnSubFailed2202110")
end

return Quest22021

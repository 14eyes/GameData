require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest40015 = class("Quest40015", QuestActorProxy)
Quest40015.defaultAlias = "Quest40015"
local clientData
local mainID
local actorAlias
local subIDs
local npcs
local gadgets
local datas
local n = 0
local v = 0

function Quest40015:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    gadgets = clientData.Gadgets
    datas = clientData.Datas
end

function Quest40015:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["4001501"] = self.OnSubStart4001501,
        ["4001502"] = self.OnSubStart4001502,
        ["4001504"] = self.OnSubStart4001504,
        ["4001503"] = self.OnSubStart4001503,
        ["4001520"] = self.OnSubStart4001520,
        ["4001530"] = self.OnSubStart4001530,
        ["4001516"] = self.OnSubStart4001516,
        ["4001505"] = self.OnSubStart4001505,
        ["4001521"] = self.OnSubStart4001521,
        ["4001506"] = self.OnSubStart4001506,
        ["4001507"] = self.OnSubStart4001507,
        ["4001522"] = self.OnSubStart4001522,
        ["4001523"] = self.OnSubStart4001523,
        ["4001524"] = self.OnSubStart4001524,
        ["4001525"] = self.OnSubStart4001525,
        ["4001526"] = self.OnSubStart4001526,
        ["4001527"] = self.OnSubStart4001527,
        ["4001528"] = self.OnSubStart4001528,
        ["4001508"] = self.OnSubStart4001508,
        ["4001509"] = self.OnSubStart4001509,
        ["4001510"] = self.OnSubStart4001510,
        ["4001511"] = self.OnSubStart4001511,
        ["4001512"] = self.OnSubStart4001512,
        ["4001513"] = self.OnSubStart4001513,
        ["4001514"] = self.OnSubStart4001514,
        ["4001515"] = self.OnSubStart4001515,
        ["4001518"] = self.OnSubStart4001518,
        ["4001519"] = self.OnSubStart4001519
    }
end

function Quest40015:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["4001501"] = self.OnSubFinish4001501,
        ["4001502"] = self.OnSubFinish4001502,
        ["4001504"] = self.OnSubFinish4001504,
        ["4001503"] = self.OnSubFinish4001503,
        ["4001520"] = self.OnSubFinish4001520,
        ["4001530"] = self.OnSubFinish4001530,
        ["4001516"] = self.OnSubFinish4001516,
        ["4001505"] = self.OnSubFinish4001505,
        ["4001521"] = self.OnSubFinish4001521,
        ["4001506"] = self.OnSubFinish4001506,
        ["4001507"] = self.OnSubFinish4001507,
        ["4001522"] = self.OnSubFinish4001522,
        ["4001523"] = self.OnSubFinish4001523,
        ["4001524"] = self.OnSubFinish4001524,
        ["4001525"] = self.OnSubFinish4001525,
        ["4001526"] = self.OnSubFinish4001526,
        ["4001527"] = self.OnSubFinish4001527,
        ["4001528"] = self.OnSubFinish4001528,
        ["4001508"] = self.OnSubFinish4001508,
        ["4001509"] = self.OnSubFinish4001509,
        ["4001510"] = self.OnSubFinish4001510,
        ["4001511"] = self.OnSubFinish4001511,
        ["4001512"] = self.OnSubFinish4001512,
        ["4001513"] = self.OnSubFinish4001513,
        ["4001514"] = self.OnSubFinish4001514,
        ["4001515"] = self.OnSubFinish4001515,
        ["4001518"] = self.OnSubFinish4001518,
        ["4001519"] = self.OnSubFinish4001519
    }
end

function Quest40015:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["4001501"] = self.OnSubFailed4001501,
        ["4001502"] = self.OnSubFailed4001502,
        ["4001504"] = self.OnSubFailed4001504,
        ["4001503"] = self.OnSubFailed4001503,
        ["4001520"] = self.OnSubFailed4001520,
        ["4001530"] = self.OnSubFailed4001530,
        ["4001516"] = self.OnSubFailed4001516,
        ["4001505"] = self.OnSubFailed4001505,
        ["4001521"] = self.OnSubFailed4001521,
        ["4001506"] = self.OnSubFailed4001506,
        ["4001507"] = self.OnSubFailed4001507,
        ["4001522"] = self.OnSubFailed4001522,
        ["4001523"] = self.OnSubFailed4001523,
        ["4001524"] = self.OnSubFailed4001524,
        ["4001525"] = self.OnSubFailed4001525,
        ["4001526"] = self.OnSubFailed4001526,
        ["4001527"] = self.OnSubFailed4001527,
        ["4001528"] = self.OnSubFailed4001528,
        ["4001508"] = self.OnSubFailed4001508,
        ["4001509"] = self.OnSubFailed4001509,
        ["4001510"] = self.OnSubFailed4001510,
        ["4001511"] = self.OnSubFailed4001511,
        ["4001512"] = self.OnSubFailed4001512,
        ["4001513"] = self.OnSubFailed4001513,
        ["4001514"] = self.OnSubFailed4001514,
        ["4001515"] = self.OnSubFailed4001515,
        ["4001518"] = self.OnSubFailed4001518,
        ["4001519"] = self.OnSubFailed4001519
    }
end

function Quest40015:Start()
    print("Start")
end

function Quest40015:OnDestroy()
    print("OnDestroy")
end

function Quest40015:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest40015:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest40015:OnMainCanceled(arg1)
    print("OnMainCanceled")
    self:SafeDestroyQuestNpc(npcs.XianglingData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2204Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2093Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10232Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1031Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1030Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10211Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2003Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.XiaoData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2070Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2201Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.PaimonData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1043Data.alias, 3)
    self:LightNotifyTo(npcs.Npc2070Data.alias, 0, true)
    self:LightNotifyTo("Npc2073", 0, true)
    self:LightNotifyTo("Npc2029", 0, true)
    self:LightNotifyTo("Npc2014", 0, true)
    self:LightNotifyTo("Npc2069", 0, true)
    actorMgr:DestroyEntityActor(datas.Q4001505Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q4001510Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q4001518Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q4001521Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q4001506Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q4001519Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q4001528Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q4001502Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q4001504Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q4001509Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q4001501Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q4001512Trigger_.alias, 3, false)
    actorMgr:DestroyEntityActor(datas.Q40015199Trigger_.alias, 3, false)
    self:UnSpawn(gadgets.Gadget70710430Data.alias)
    self:UnSpawn(gadgets.Gadget70710461Data.alias)
    self:UnSpawn(gadgets.Gadget70710462Data.alias)
    self:UnSpawn(gadgets.Gadget70710463Data.alias)
    self:BattleUITerminate()
    self:ResumeAvatarFreeStyle()
end

function Quest40015:PaimonDis()
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.PaimonData.alias)
        if questNpcActor ~= nil then
            if questNpcActor.uActor ~= nil then
                questNpcActor:DestroyWithDisappear(false)
            end
        end
    end)

    self:ActionSafeCall(function(arg1)
        local actor = actorMgr:GetActor(npcs.PaimonData.alias)
        if actor ~= nil then
            if actor.uActor ~= nil then
                actor:DestroyWithDisappear(false)
            end
        end
    end)
end

function Quest40015:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("param == 1")
    elseif arg1 == 2 then
        actorMgr:GetActor(actorAlias):FinishQuestID(false, 4001529)
    elseif arg1 == 3 then
        actorMgr:GetActor(actorAlias):FinishQuestID(false, 4001517)
    end
end

function Quest40015:Create04XL()
    print("Create04XL")
    self:CreateQuestNpcById(4001504, npcs.XianglingData.id, 1)
end

function Quest40015:Create05XL()
    print("Create05XL")
    self:CreateQuestNpcById(4001505, npcs.XianglingData.id, 1)
end

function Quest40015:Create20XL()
    print("Create05XL")
    self:CreateQuestNpcById(4001520, npcs.XianglingData.id, 1)
end

function Quest40015:Na20()
    print("Na20")
    self:NarratorOnlyTaskByData(datas.NarratorWithId02)
end

function Quest40015:Na07()
    print("Na07")
    self:NarratorOnlyTaskByData(datas.NarratorWithId04)
end

function Quest40015:Na03()
    print("Na03")
    self:NarratorOnlyTaskByData(datas.NarratorWithId03)
end

function Quest40015:Na13()
    print("Na13")
    if actorUtils.IsInMainPage() == true then
        self:NarratorOnlyTaskByData(datas.NarratorWithId09)
    else
        self:CallDelay(2, function(arg1)
            arg1:Na13()
        end)
    end
end

function Quest40015:questJudge()
    if n == 0 then
        print("teammateScore == 0")
        self:BattleUIStart(100, 1012, n, 2204, v)
        n = n + 1
        v = v + 2
        self:BattleUIChange(n, 10, v, 2)
    else
        if 100 <= n then
            if n >= v then
                if actorMgr:GetActor(clientData.ActorAlias) ~= nil then
                    print("Battle  ------------------- succeed" .. "\230\156\172\233\152\159\229\136\134\230\149\176\239\188\154" .. tostring(n) .. "\229\175\185\230\150\185\229\136\134\230\149\176\239\188\154" .. tostring(v))
                end

                self:CallDelay(3, function(arg1)
                    arg1:BattleUITerminate()
                end)
            end
        else
            if 100 <= v then
                if v > n then
                    local actor = actorMgr:GetActor(clientData.ActorAlias)
                    if actor ~= nil then
                        print("Battle  ------------------- failed" .. "\230\156\172\233\152\159\229\136\134\230\149\176\239\188\154" .. tostring(n) .. "\229\175\185\230\150\185\229\136\134\230\149\176\239\188\154" .. tostring(v))
                        actor:FinishQuestID(true, 4001528)
                    end

                    self:CallDelay(3, function(arg1)
                        arg1:BattleUITerminate()
                    end)
                end
            end
        end
    end

    self:CallDelay(2, function(arg1)
        local subQuestState = arg1:GetSubQuestState(4001506)
        local v = arg1:GetSubQuestState(4001528)
        if subQuestState == 3 and v ~= 3 then
            if n < 100 then
                print("\231\187\167\231\187\173\229\136\164\230\150\173")
                arg1:questJudge()
            end
        end
    end)
end

function Quest40015:AddScore()
    local n2 = math.random(5, 10)
    local subQuestState = self:GetSubQuestState(4001506)
    local subQuestState2 = self:GetSubQuestState(4001528)
    if self:IsTalkDialogActive() == false and subQuestState == 3 and subQuestState2 ~= 3 then
        if n < 100 then
            self:CallDelay(n2, function(arg1)
                local n2 = math.random(1, 2)
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

    local n3 = math.random(10, 15)
    self:CallDelay(n3, function(arg1)
        local subQuestState = arg1:GetSubQuestState(4001506)
        local v = arg1:GetSubQuestState(4001528)
        if subQuestState == 3 and v ~= 3 then
            if n < 100 then
                print("\229\134\141\230\172\161\229\138\160\229\136\134")
                arg1:AddScore()
            end
        end
    end)
end

function Quest40015:Execute24()
    print("Execute24")
    if actorUtils.IsInMainPage() == true then
        print("Execute24true")
        self:CallDelay(1, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.NarratorWithId06)
        end)

        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1043Data.alias)
        questNpcActor:DoFreeStateTrigger()
        questNpcActor:RunToTask(npcs.Npc1043Data.SaltPos, function(arg1, arg2)
            print("\232\189\172\232\186\171")
            arg1:ClearFollowTask()
            arg1:Standby()
            arg1:TurnTo(M.Euler2DirXZ(npcs.Npc1043Data.SaltDir))
            arg1:DoFreeStyle(1, true, nil, true, true, false)
        end)
    else
        print("Execute24false")
        self:CallDelay(2, function(arg1)
            arg1:Execute24()
        end)
    end
end

function Quest40015:Execute26()
    print("Execute26")
    if actorUtils.IsInMainPage() == true then
        self:CallDelay(1, function(arg1)
            arg1:NarratorOnlyTaskByData(datas.NarratorWithId07)
        end)

        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1043Data.alias)
        questNpcActor.DoFreeStateTrigger(questNpcActor)
        questNpcActor.RunToTask(questNpcActor, npcs.Npc1043Data.StartPos, function(arg1)
            print("\231\187\167\231\187\173\232\183\145")
            arg1:CallDelay(1, function(arg1)
                questNpcActor:RunToTask(npcs.Npc1043Data.PepperPos, function(arg1, arg2)
                    print("\232\189\172\232\186\171")
                    arg1:ClearFollowTask()
                    arg1:Standby()
                    arg1:TurnTo(M.Euler2DirXZ(npcs.Npc1043Data.PepperDir))
                    arg1:DoFreeStyle(1, true, nil, true, true, false)
                end)
            end)
        end)
    else
        self:CallDelay(2, function(arg1)
            arg1:Execute26()
        end)
    end
end

function Quest40015:Execute27()
    print("Execute27")
    if actorUtils.IsInMainPage() == true then
        self:CallDelay(8, function(arg1)
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                actor:FinishQuestID(false, 4001528)
            end
        end)

        self:NarratorOnlyTaskByData(datas.NarratorWithId08, function(arg1)
            arg1:CallDelay(1.5, function(arg1)
                local actor = actorMgr:GetActor(clientData.ActorAlias)
                if actor ~= nil then
                    actor:FinishQuestID(false, 4001528)
                end
            end)
        end)

        local questNpcActor = self:GetQuestNpcActor(npcs.Npc1043Data.alias)
        questNpcActor:DoFreeStateTrigger()
        questNpcActor:RunToTask(npcs.Npc1043Data.EndPos, function(arg1, arg2)
            print("\232\189\172\232\186\171")
            arg1:ClearFollowTask()
            arg1:Standby()
            arg1:TurnTo(M.Euler2DirXZ(npcs.Npc1043Data.EndDir))
            arg1:DoFreeStyle(1, true, nil, true, true, false)
        end)
    else
        self:CallDelay(2, function(arg1)
            arg1:Execute27()
        end)
    end
end

function Quest40015:yanxiaofree()
    print("yanxiaofree")
    local subQuestState = self:GetSubQuestState(4001528)
    if subQuestState ~= 3 then
        print("\231\172\172\228\184\128\228\184\170\229\136\164\230\150\173\231\154\132\230\137\167\232\161\140")
        local questNpcActor = self:GetQuestNpcActor(npcs.Npc2204Data.alias)
        questNpcActor:DoFreeStateTrigger()
        if actorUtils.IsInMainPage() == true and subQuestState == 2 then
            print("\232\168\128\231\172\145\229\129\154\229\138\168\228\189\156")
            questNpcActor:DoFreeStyle(1320, true, nil, true, true, false)
        end

        self:CallDelay(2, function(arg1)
            arg1:yanxiaofree()
        end)
    end
end

function Quest40015:OnSubStart4001501(arg1)
    print("OnSubStart4001501")
    self:CreateQuestNpc(arg1, npcs.XianglingData.id, 1)
    actorMgr:CreateActorWithPos(datas.Q4001501Trigger_.alias, datas.Q4001501Trigger_.script, datas.Q4001501Trigger_.id, 0, datas.Q4001501Trigger_.point.pos, datas.Q4001501Trigger_.point.rot, true, false, 3)
end

function Quest40015:OnSubFinish4001501(arg1)
    print("OnSubFinish4001501")
    self:SafeDestroyQuestNpc(npcs.XianglingData.alias, 3)
    self:PaimonDis()
    self:SafeDestroyQuestNpc(npcs.Npc1043Data.alias, 3)
end

function Quest40015:OnSubFailed4001501(arg1)
    print("OnSubFailed4001501")
end

function Quest40015:OnSubStart4001502(arg1)
    print("OnSubStart4001502")
    actorMgr:CreateActorWithPos(datas.Q4001502Trigger_.alias, datas.Q4001502Trigger_.script, datas.Q4001502Trigger_.id, 0, datas.Q4001502Trigger_.point.pos, datas.Q4001502Trigger_.point.rot, true, false, 3)
    self:CreateQuestNpc(arg1, npcs.Npc1042Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc1031Data.id, 3)
end

function Quest40015:OnSubFinish4001502(arg1)
    print("OnSubFinish4001502")
    self:SafeDestroyQuestNpc(npcs.XianglingData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1042Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1031Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1043Data.alias, 3)
    self:PaimonDis()
end

function Quest40015:OnSubFailed4001502(arg1)
    print("OnSubFailed4001502")
end

function Quest40015:OnSubStart4001504(arg1)
    print("OnSubStart4001504")
    actorMgr:CreateActorWithPos(datas.Q4001504Trigger_.alias, datas.Q4001504Trigger_.script, datas.Q4001504Trigger_.id, 0, datas.Q4001504Trigger_.point.pos, datas.Q4001504Trigger_.point.rot, true, false, 3)
end

function Quest40015:OnSubFinish4001504(arg1)
    print("OnSubFinish4001504")
    self:SafeDestroyQuestNpc(npcs.XianglingData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.XiaoData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1043Data.alias, 3)
    self:PaimonDis()
end

function Quest40015:OnSubFailed4001504(arg1)
    print("OnSubFailed4001504")
end

function Quest40015:OnSubStart4001503(arg1)
    print("OnSubStart4001503")
    self:FinishQuestID(false, 4001503)
end

function Quest40015:OnSubFinish4001503(arg1)
    print("OnSubFinish4001503")
end

function Quest40015:OnSubFailed4001503(arg1)
    print("OnSubFailed4001503")
end

function Quest40015:OnSubStart4001520(arg1)
    print("OnSubStart4001520")
    self:CallDelay(2, self.Create20XL)
    self:NarratorOnlyTaskByData(datas.NarratorWithId01)
end

function Quest40015:OnSubFinish4001520(arg1)
    print("OnSubFinish4001520")
    self:PaimonDis()
end

function Quest40015:OnSubFailed4001520(arg1)
    print("OnSubFailed4001520")
end

function Quest40015:OnSubStart4001530(arg1)
    print("OnSubStart4001530")
end

function Quest40015:OnSubFinish4001530(arg1)
    print("OnSubFinish4001530")
    self:ShowBlackScreen(0.5, 3, 0.5, function(arg1)
        arg1:CallDelay(2, arg1.Na20)
    end, function(arg1)
        arg1:SafeDestroyQuestNpc(npcs.XianglingData.alias, 3)
    end, nil, "QUEST_Message_Q4001509")
end

function Quest40015:OnSubFailed4001530(arg1)
    print("OnSubFailed4001530")
end

function Quest40015:OnSubStart4001516(arg1)
    print("OnSubStart4001516")
end

function Quest40015:OnSubFinish4001516(arg1)
    print("OnSubFinish4001516")
    self:CallDelay(2, self.Na03)
end

function Quest40015:OnSubFailed4001516(arg1)
    print("OnSubFailed4001516")
end

function Quest40015:OnSubStart4001505(arg1)
    print("OnSubStart4001505")
    self:CreateQuestNpc(arg1, npcs.Npc2204Data.id, 2)
    self:CreateQuestNpc(arg1, npcs.Npc1016Data.id, 3)
    self:CreateQuestNpc(arg1, npcs.Npc1030Data.id, 4)
    self:CreateQuestNpc(arg1, npcs.Npc10211Data.id, 5)
    self:CreateQuestNpc(arg1, npcs.Npc2003Data.id, 6)
    self:NotifyTo(npcs.Npc2070Data.alias, 1, true)
    self:NotifyTo("Npc2073", 1, true)
    self:NotifyTo("Npc2029", 1, true)
    self:NotifyTo("Npc2014", 1, true)
    self:NotifyTo("Npc2069", 1, true)
    self:CreateQuestNpc(arg1, npcs.Npc1043Data.id, 7)
    self:CreateQuestNpc(arg1, npcs.Npc2201Data.id, 8)
    actorMgr:CreateActorWithPos(datas.Q4001505Trigger_.alias, datas.Q4001505Trigger_.script, datas.Q4001505Trigger_.id, 0, datas.Q4001505Trigger_.point.pos, datas.Q4001505Trigger_.point.rot, false, false, 3)
    self:CallDelay(2, self.Create05XL)
    self:GetQuestNpcActor(npcs.Npc10211Data.alias):SitOnChair()
    self:GetQuestNpcActor(npcs.Npc1016Data.alias):SitOnChair()
    self:GetQuestNpcActor(npcs.Npc2003Data.alias):SitOnChair()
end

function Quest40015:OnSubFinish4001505(arg1)
    print("OnSubFinish4001505")
end

function Quest40015:OnSubFailed4001505(arg1)
    print("OnSubFailed4001505")
end

function Quest40015:OnSubStart4001521(arg1)
    print("OnSubStart4001521")
    self:CreateQuestNpc(arg1, npcs.Npc1030Data.id, 3)
    self:NotifyTo(npcs.Npc2070Data.alias, 1, true)
    self:NotifyTo("Npc2073", 1, true)
    self:NotifyTo("Npc2029", 1, true)
    self:NotifyTo("Npc2014", 1, true)
    self:NotifyTo("Npc2069", 1, true)
    actorMgr:CreateActorWithPos(datas.Q4001521Trigger_.alias, datas.Q4001521Trigger_.script, datas.Q4001521Trigger_.id, 0, datas.Q4001521Trigger_.point.pos, datas.Q4001521Trigger_.point.rot, true, false, 3)
end

function Quest40015:OnSubFinish4001521(arg1)
    print("OnSubFinish4001521")
    self:SafeDestroyQuestNpc(npcs.Npc1043Data.alias, 3)
end

function Quest40015:OnSubFailed4001521(arg1)
    print("OnSubFailed4001521")
end

function Quest40015:OnSubStart4001506(arg1)
    print("OnSubStart4001506")
    n = 0
    v = 0
    self:NotifyTo(npcs.Npc2070Data.alias, 1, true)
    self:NotifyTo("Npc2073", 1, true)
    self:NotifyTo("Npc2029", 1, true)
    self:NotifyTo("Npc2014", 1, true)
    self:NotifyTo("Npc2069", 1, true)
    self:UnSpawn(gadgets.Gadget70710461Data.alias)
    self:UnSpawn(gadgets.Gadget70710462Data.alias)
    self:UnSpawn(gadgets.Gadget70710463Data.alias)
    self:CreateQuestNpc(arg1, npcs.XianglingData.id, 1)
    self:GetQuestNpcActor(npcs.Npc10211Data.alias):SitOnChair()
    self:GetQuestNpcActor(npcs.Npc1016Data.alias):SitOnChair()
    self:GetQuestNpcActor(npcs.Npc2003Data.alias):SitOnChair()
    self:GetQuestNpcActor(npcs.Npc2204Data.alias):DoFreeStateTrigger()
end

function Quest40015:OnSubFinish4001506(arg1)
    print("OnSubFinish4001506")
    self:SafeDestroyQuestNpc(npcs.XianglingData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1043Data.alias, 3)
    self:TransmitPlayerById(arg1, 1)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.PaimonData.alias)
        if questNpcActor ~= nil then
            if questNpcActor.uActor ~= nil then
                questNpcActor:DestroyWithDisappear(false)
            end
        end
    end)
end

function Quest40015:OnSubFailed4001506(arg1)
    print("OnSubFailed4001506")
end

function Quest40015:OnSubStart4001507(arg1)
    print("OnSubStart4001507")
    self:NotifyTo(npcs.Npc2070Data.alias, 1, true)
    self:NotifyTo("Npc2073", 1, true)
    self:NotifyTo("Npc2029", 1, true)
    self:NotifyTo("Npc2014", 1, true)
    self:NotifyTo("Npc2069", 1, true)
    self:BanAvatarFreeStyle()
    self:CreateQuestNpc(arg1, npcs.Npc1030Data.id, 3)
    self:CallDelay(2, self.Na07)
    self:AddScore()
    self:questJudge()
    self:yanxiaofree()
end

function Quest40015:OnSubFinish4001507(arg1)
    print("OnSubFinish4001507")
    n = n + 10
    self:BattleUIChange(n, 10, v, 0)
end

function Quest40015:OnSubFailed4001507(arg1)
    print("OnSubFailed4001507")
end

function Quest40015:OnSubStart4001522(arg1)
    print("OnSubStart4001522")
    self:NotifyTo(npcs.Npc2070Data.alias, 1, true)
    self:NotifyTo("Npc2073", 1, true)
    self:NotifyTo("Npc2029", 1, true)
    self:NotifyTo("Npc2014", 1, true)
    self:NotifyTo("Npc2069", 1, true)
    self:UnSpawn(gadgets.Gadget70710461Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710461Data.id, 1, 0)
    self:UnSpawn(gadgets.Gadget70710462Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710462Data.id, 2, 0)
    self:UnSpawn(gadgets.Gadget70710463Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710463Data.id, 3, 0)
    self:NarratorOnlyTaskByData(datas.NarratorWithId05)
    self:CreateQuestNpc(arg1, npcs.Npc1043Data.id, 7)
    self:CallDelay(1, function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.Npc1043Data.alias)
        questNpcActor:DoFreeStateTrigger()
        questNpcActor:RunToTask(npcs.Npc1043Data.SugarPos, function(arg1, arg2)
            print("\232\189\172\232\186\171")
            arg1:ClearFollowTask()
            arg1:Standby()
            arg1:TurnTo(M.Euler2DirXZ(npcs.Npc1043Data.SugarDir))
            arg1:DoFreeStyle(1, true, nil, true, true, false)
        end)
    end)
end

function Quest40015:OnSubFinish4001522(arg1)
    print("OnSubFinish4001522")
    self:UnSpawn(gadgets.Gadget70710461Data.alias)
    self:UnSpawn(gadgets.Gadget70710462Data.alias)
    self:UnSpawn(gadgets.Gadget70710463Data.alias)
    n = n + 10
    self:BattleUIChange(n, 10, v, 0)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1043Data.alias)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:TurnToAvatar()
    questNpcActor:DoFreeStyle(1340, true, nil, true, true, false)
end

function Quest40015:OnSubFailed4001522(arg1)
    print("OnSubFailed4001522")
    self:UnSpawn(gadgets.Gadget70710461Data.alias)
    self:UnSpawn(gadgets.Gadget70710462Data.alias)
    self:UnSpawn(gadgets.Gadget70710463Data.alias)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1043Data.alias)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:TurnToAvatar()
    questNpcActor:DoFreeStyle(1050, true, nil, true, true, false)
end

function Quest40015:OnSubStart4001523(arg1)
    print("OnSubStart4001523")
    self:NotifyTo(npcs.Npc2070Data.alias, 1, true)
    self:NotifyTo("Npc2073", 1, true)
    self:NotifyTo("Npc2029", 1, true)
    self:NotifyTo("Npc2014", 1, true)
    self:NotifyTo("Npc2069", 1, true)
    self:CallDelay(5, function(arg1)
        actorMgr:GetActor(actorAlias):FinishQuestID(false, 4001523)
    end)
end

function Quest40015:OnSubFinish4001523(arg1)
    print("OnSubFinish4001523")
    n = n + 20
    self:BattleUIChange(n, 20, v, 0)
end

function Quest40015:OnSubFailed4001523(arg1)
    print("OnSubFailed4001523")
end

function Quest40015:OnSubStart4001524(arg1)
    print("OnSubStart4001524")
    self:NotifyTo(npcs.Npc2070Data.alias, 1, true)
    self:NotifyTo("Npc2073", 1, true)
    self:NotifyTo("Npc2029", 1, true)
    self:NotifyTo("Npc2014", 1, true)
    self:NotifyTo("Npc2069", 1, true)
    self:UnSpawn(gadgets.Gadget70710461Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710461Data.id, 1, 0)
    self:UnSpawn(gadgets.Gadget70710462Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710462Data.id, 2, 0)
    self:UnSpawn(gadgets.Gadget70710463Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710463Data.id, 3, 0)
    self:Execute24()
end

function Quest40015:OnSubFinish4001524(arg1)
    print("OnSubFinish4001524")
    self:UnSpawn(gadgets.Gadget70710461Data.alias)
    self:UnSpawn(gadgets.Gadget70710462Data.alias)
    self:UnSpawn(gadgets.Gadget70710463Data.alias)
    n = n + 10
    self:BattleUIChange(n, 10, v, 0)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1043Data.alias)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:TurnToAvatar()
    questNpcActor:DoFreeStyle(1340, true, nil, true, true, false)
end

function Quest40015:OnSubFailed4001524(arg1)
    print("OnSubFailed4001524")
    self:UnSpawn(gadgets.Gadget70710461Data.alias)
    self:UnSpawn(gadgets.Gadget70710462Data.alias)
    self:UnSpawn(gadgets.Gadget70710463Data.alias)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1043Data.alias)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:TurnToAvatar()
    questNpcActor:DoFreeStyle(1050, true, nil, true, true, false)
end

function Quest40015:OnSubStart4001525(arg1)
    print("OnSubStart4001525")
    self:NotifyTo(npcs.Npc2070Data.alias, 1, true)
    self:NotifyTo("Npc2073", 1, true)
    self:NotifyTo("Npc2029", 1, true)
    self:NotifyTo("Npc2014", 1, true)
    self:NotifyTo("Npc2069", 1, true)
    self:CallDelay(5, function(arg1)
        actorMgr:GetActor(actorAlias):FinishQuestID(false, 4001525)
    end)
end

function Quest40015:OnSubFinish4001525(arg1)
    print("OnSubFinish4001525")
    n = n + 20
    self:BattleUIChange(n, 20, v, 0)
end

function Quest40015:OnSubFailed4001525(arg1)
    print("OnSubFailed4001525")
end

function Quest40015:OnSubStart4001526(arg1)
    print("OnSubStart4001526")
    self:NotifyTo(npcs.Npc2070Data.alias, 1, true)
    self:NotifyTo("Npc2073", 1, true)
    self:NotifyTo("Npc2029", 1, true)
    self:NotifyTo("Npc2014", 1, true)
    self:NotifyTo("Npc2069", 1, true)
    self:UnSpawn(gadgets.Gadget70710461Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710461Data.id, 1, 0)
    self:UnSpawn(gadgets.Gadget70710462Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710462Data.id, 2, 0)
    self:UnSpawn(gadgets.Gadget70710463Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710463Data.id, 3, 0)
    self:Execute26()
end

function Quest40015:OnSubFinish4001526(arg1)
    print("OnSubFinish4001526")
    self:UnSpawn(gadgets.Gadget70710461Data.alias)
    self:UnSpawn(gadgets.Gadget70710462Data.alias)
    self:UnSpawn(gadgets.Gadget70710463Data.alias)
    n = n + 10
    self:BattleUIChange(n, 10, v, 0)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1043Data.alias)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:TurnToAvatar()
    questNpcActor:DoFreeStyle(1340, true, nil, true, true, false)
end

function Quest40015:OnSubFailed4001526(arg1)
    print("OnSubFailed4001526")
    self:UnSpawn(gadgets.Gadget70710461Data.alias)
    self:UnSpawn(gadgets.Gadget70710462Data.alias)
    self:UnSpawn(gadgets.Gadget70710463Data.alias)
    local questNpcActor = self:GetQuestNpcActor(npcs.Npc1043Data.alias)
    questNpcActor:DoFreeStateTrigger()
    questNpcActor:TurnToAvatar()
    questNpcActor:DoFreeStyle(1050, true, nil, true, true, false)
end

function Quest40015:OnSubStart4001527(arg1)
    print("OnSubStart4001527")
    self:NotifyTo(npcs.Npc2070Data.alias, 1, true)
    self:NotifyTo("Npc2073", 1, true)
    self:NotifyTo("Npc2029", 1, true)
    self:NotifyTo("Npc2014", 1, true)
    self:NotifyTo("Npc2069", 1, true)
    self:CallDelay(5, function(arg1)
        actorMgr:GetActor(actorAlias):FinishQuestID(false, 4001527)
    end)
end

function Quest40015:OnSubFinish4001527(arg1)
    print("OnSubFinish4001527")
    if n < 100 then
        local n2 = 100 - n
        n = n + n2
        self:BattleUIChange(n, n2, v, 0)
        self:Execute27()
    end
end

function Quest40015:OnSubFailed4001527(arg1)
    print("OnSubFailed4001527")
end

function Quest40015:OnSubStart4001528(arg1)
    print("OnSubStart4001528")
    self:NotifyTo(npcs.Npc2070Data.alias, 1, true)
    self:NotifyTo("Npc2073", 1, true)
    self:NotifyTo("Npc2029", 1, true)
    self:NotifyTo("Npc2014", 1, true)
    self:NotifyTo("Npc2069", 1, true)
    globalActor:ChangeWeather("BigWorld/Weather_ClearSky")
    actorMgr:CreateActorWithPos(datas.Q4001528Trigger_.alias, datas.Q4001528Trigger_.script, datas.Q4001528Trigger_.id, 0, datas.Q4001528Trigger_.point.pos, datas.Q4001528Trigger_.point.rot, true, false, 3)
end

function Quest40015:OnSubFinish4001528(arg1)
    print("OnSubFinish4001528")
    self:BattleUITerminate()
    globalActor:LeaveWeather()
    self:GetQuestNpcActor(npcs.Npc2204Data.alias):DoFreeStateTrigger()
end

function Quest40015:OnSubFailed4001528(arg1)
    print("OnSubFailed4001528")
    self:BattleUITerminate()
    globalActor:LeaveWeather()
    self:SafeDestroyQuestNpc(npcs.Npc1043Data.alias, 3)
    self:TransmitPlayerById(arg1, 1)
    self:GetQuestNpcActor(npcs.Npc2204Data.alias):DoFreeStateTrigger()
end

function Quest40015:OnSubStart4001508(arg1)
    print("OnSubStart4001508")
    self:ResumeAvatarFreeStyle()
    self:NotifyTo(npcs.Npc2070Data.alias, 1, true)
    self:NotifyTo("Npc2073", 1, true)
    self:NotifyTo("Npc2029", 1, true)
    self:NotifyTo("Npc2014", 1, true)
    self:NotifyTo("Npc2069", 1, true)
    self:GetQuestNpcActor(npcs.Npc10211Data.alias):SitOnChair()
    self:GetQuestNpcActor(npcs.Npc1016Data.alias):SitOnChair()
    self:GetQuestNpcActor(npcs.Npc2003Data.alias):SitOnChair()
    self:RequestInteraction(npcs.Npc2204Data.alias)
end

function Quest40015:OnSubFinish4001508(arg1)
    print("OnSubFinish4001508")
    self:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1030Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc10211Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2003Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2201Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1043Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.PaimonData.alias)
        if questNpcActor ~= nil then
            if questNpcActor.uActor ~= nil then
                questNpcActor:DestroyWithDisappear(false)
            end
        end
    end)

    self:BattleUITerminate()
    self:ClearNarratorTask()
    self:StopNarrator()
    actorUtils.StopAllTask(TaskID.NARRATOR_TASK_ID, LuaTaskType.NORMAL)
end

function Quest40015:OnSubFailed4001508(arg1)
    print("OnSubFailed4001508")
end

function Quest40015:OnSubStart4001509(arg1)
    print("OnSubStart4001509")
    actorMgr:CreateActorWithPos(datas.Q4001509Trigger_.alias, datas.Q4001509Trigger_.script, datas.Q4001509Trigger_.id, 0, datas.Q4001509Trigger_.point.pos, datas.Q4001509Trigger_.point.rot, true, false, 3)
    self:NotifyTo(npcs.Npc2070Data.alias, 1, true)
    self:NotifyTo("Npc2073", 1, true)
    self:NotifyTo("Npc2029", 1, true)
    self:NotifyTo("Npc2014", 1, true)
    self:NotifyTo("Npc2069", 1, true)
end

function Quest40015:OnSubFinish4001509(arg1)
    print("OnSubFinish4001509")
    self:SafeDestroyQuestNpc(npcs.XianglingData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2204Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1043Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.PaimonData.alias)
        if questNpcActor ~= nil then
            if questNpcActor.uActor ~= nil then
                questNpcActor:DestroyWithDisappear(false)
            end
        end

        arg1:LightNotifyTo(npcs.Npc2070Data.alias, 0, true)
        arg1:LightNotifyTo("Npc2073", 0, true)
        arg1:LightNotifyTo("Npc2029", 0, true)
        arg1:LightNotifyTo("Npc2014", 0, true)
        arg1:LightNotifyTo("Npc2069", 0, true)
    end)
end

function Quest40015:OnSubFailed4001509(arg1)
    print("OnSubFailed4001509")
end

function Quest40015:OnSubStart4001510(arg1)
    print("OnSubStart4001510")
    self:CreateQuestNpc(arg1, npcs.Npc1016Data.id, 2)
    actorMgr:CreateActorWithPos(datas.Q4001510Trigger_.alias, datas.Q4001510Trigger_.script, datas.Q4001510Trigger_.id, 0, datas.Q4001510Trigger_.point.pos, datas.Q4001510Trigger_.point.rot, true, false, 3)
end

function Quest40015:OnSubFinish4001510(arg1)
    print("OnSubFinish4001510")
    self:SafeDestroyQuestNpc(npcs.XianglingData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.PaimonData.alias)
        if questNpcActor ~= nil then
            if questNpcActor.uActor ~= nil then
                questNpcActor:DestroyWithDisappear(false)
            end
        end
    end)
end

function Quest40015:OnSubFailed4001510(arg1)
    print("OnSubFailed4001510")
end

function Quest40015:OnSubStart4001511(arg1)
    print("OnSubStart4001511")
    self:UnSpawn(gadgets.Gadget70710430Data.alias)
    self:DelaySpawnGadget(arg1, gadgets.Gadget70710430Data.id, 1, 0)
end

function Quest40015:OnSubFinish4001511(arg1)
    print("OnSubFinish4001511")
    self:UnSpawn(gadgets.Gadget70710430Data.alias)
end

function Quest40015:OnSubFailed4001511(arg1)
    print("OnSubFailed4001511")
end

function Quest40015:OnSubStart4001512(arg1)
    print("OnSubStart4001512")
    actorMgr:CreateActorWithPos(datas.Q4001512Trigger_.alias, datas.Q4001512Trigger_.script, datas.Q4001512Trigger_.id, 0, datas.Q4001512Trigger_.point.pos, datas.Q4001512Trigger_.point.rot, true, false, 3)
end

function Quest40015:OnSubFinish4001512(arg1)
    print("OnSubFinish4001512")
    self:SafeDestroyQuestNpc(npcs.XianglingData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1043Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.PaimonData.alias)
        if questNpcActor ~= nil then
            if questNpcActor.uActor ~= nil then
                questNpcActor:DestroyWithDisappear(false)
            end
        end
    end)
end

function Quest40015:OnSubFailed4001512(arg1)
    print("OnSubFailed4001512")
end

function Quest40015:OnSubStart4001513(arg1)
    print("OnSubStart4001513")
end

function Quest40015:OnSubFinish4001513(arg1)
    print("OnSubFinish4001513")
    self:Na13()
end

function Quest40015:OnSubFailed4001513(arg1)
    print("OnSubFailed4001513")
end

function Quest40015:OnSubStart4001514(arg1)
    print("OnSubStart4001514")
end

function Quest40015:OnSubFinish4001514(arg1)
    print("OnSubFinish4001514")
    self:SafeDestroyQuestNpc(npcs.XianglingData.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1016Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc2093Data.alias, 3)
    self:SafeDestroyQuestNpc(npcs.Npc1043Data.alias, 3)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.PaimonData.alias)
        if questNpcActor ~= nil then
            if questNpcActor.uActor ~= nil then
                questNpcActor:DestroyWithDisappear(false)
            end
        end
    end)
end

function Quest40015:OnSubFailed4001514(arg1)
    print("OnSubFailed4001514")
end

function Quest40015:OnSubStart4001515(arg1)
    print("OnSubStart4001515")
end

function Quest40015:OnSubFinish4001515(arg1)
    print("OnSubFinish4001515")
end

function Quest40015:OnSubFailed4001515(arg1)
    print("OnSubFailed4001515")
end

function Quest40015:OnSubStart4001518(arg1)
    print("OnSubStart4001518")
    actorMgr:CreateActorWithPos(datas.Q4001518Trigger_.alias, datas.Q4001518Trigger_.script, datas.Q4001518Trigger_.id, 0, datas.Q4001518Trigger_.point.pos, datas.Q4001518Trigger_.point.rot, true, false, 3)
end

function Quest40015:OnSubFinish4001518(arg1)
    print("OnSubFinish4001518")
end

function Quest40015:OnSubFailed4001518(arg1)
    print("OnSubFailed4001518")
end

function Quest40015:OnSubStart4001519(arg1)
    print("OnSubStart4001519")
    self:CreateQuestNpc(arg1, npcs.XianglingData.id, 1)
    actorMgr:CreateActorWithPos(datas.Q40015199Trigger_.alias, datas.Q40015199Trigger_.script, datas.Q40015199Trigger_.id, 0, datas.Q40015199Trigger_.point.pos, datas.Q40015199Trigger_.point.rot, true, false, 3)
end

function Quest40015:OnSubFinish4001519(arg1)
    print("OnSubFinish4001519")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(npcs.PaimonData.alias)
        if questNpcActor ~= nil then
            if questNpcActor.uActor ~= nil then
                questNpcActor:DestroyWithDisappear(false)
            end
        end
    end)

    actorMgr:CreateActorWithPos(datas.Q4001519Trigger_.alias, datas.Q4001519Trigger_.script, datas.Q4001519Trigger_.id, 0, datas.Q4001519Trigger_.point.pos, datas.Q4001519Trigger_.point.rot, true, false, 3)
    self:GetQuestNpcActor(npcs.Npc2093Data.alias):EnableHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc10232Data.alias):EnableHeadCtrl(false)
    self:GetQuestNpcActor(npcs.Npc1043Data.alias):EnableHeadCtrl(false)
end

function Quest40015:OnSubFailed4001519(arg1)
    print("OnSubFailed4001519")
end

return Quest40015

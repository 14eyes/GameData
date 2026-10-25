require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest22001 = class("Quest22001", QuestActorProxy)
Quest22001.defaultAlias = "Quest22001"
local clientData
local mainID
local subIDs
local actorAlias
local actors
local datas

function Quest22001:OnDataLoaded()
    clientData = self.clientData
    mainID = clientData.MainID
    subIDs = clientData.SubIDs
    actorAlias = clientData.ActorAlias
    actors = clientData.Actors
    datas = clientData.Datas
end

function Quest22001:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["2200101"] = self.OnSubStart2200101,
        ["2200102"] = self.OnSubStart2200102,
        ["2200103"] = self.OnSubStart2200103,
        ["2200106"] = self.OnSubStart2200106,
        ["2200104"] = self.OnSubStart2200104,
        ["2200105"] = self.OnSubStart2200105
    }
end

function Quest22001:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["2200101"] = self.OnSubFinish2200101,
        ["2200102"] = self.OnSubFinish2200102,
        ["2200103"] = self.OnSubFinish2200103,
        ["2200106"] = self.OnSubFinish2200106,
        ["2200104"] = self.OnSubFinish2200104,
        ["2200105"] = self.OnSubFinish2200105
    }
end

function Quest22001:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["2200101"] = self.OnSubFailed2200101,
        ["2200102"] = self.OnSubFailed2200102,
        ["2200103"] = self.OnSubFailed2200103,
        ["2200106"] = self.OnSubFailed2200106,
        ["2200104"] = self.OnSubFailed2200104,
        ["2200105"] = self.OnSubFailed2200105
    }
end

function Quest22001:RewindNPC(arg1)
    local questVar = self:GetQuestVar(arg1.QuestConfigId, 1)
    if questVar == 1 then
        if self:GetQuestNpcActorNoDummy(actors.Fei.alias) == nil then
            self:CreateQuestNpc(arg1, actors.Fei.id, 1)
        end

        if self:GetQuestNpcActorNoDummy(actors.Meng.alias) == nil then
            self:CreateQuestNpc(arg1, actors.Meng.id, 2)
        end

        if self:GetQuestNpcActorNoDummy(actors.Lulu.alias) == nil then
            self:CreateQuestNpc(arg1, actors.Lulu.id, 3)
        end
    elseif questVar == 2 then
        if self:GetQuestNpcActorNoDummy(actors.Fei.alias) == nil then
            self:CreateQuestNpc(arg1, actors.Fei.id, 4)
        end

        if self:GetQuestNpcActorNoDummy(actors.Meng.alias) == nil then
            self:CreateQuestNpc(arg1, actors.Meng.id, 5)
        end

        if self:GetQuestNpcActorNoDummy(actors.Lulu.alias) == nil then
            self:CreateQuestNpc(arg1, actors.Lulu.id, 6)
        end
    elseif questVar == 3 then
        if self:GetQuestNpcActorNoDummy(actors.Fei.alias) == nil then
            self:CreateQuestNpc(arg1, actors.Fei.id, 7)
        end

        if self:GetQuestNpcActorNoDummy(actors.Meng.alias) == nil then
            self:CreateQuestNpc(arg1, actors.Meng.id, 8)
        end

        if self:GetQuestNpcActorNoDummy(actors.Lulu.alias) == nil then
            self:CreateQuestNpc(arg1, actors.Lulu.id, 9)
        end
    end
end

function Quest22001:Blackscreen()
    print("Blackscreen")
    self:ShowBlackScreen(0.5, 1, 0.5, self.Cleardata)
end

function Quest22001:Cleardata()
    print("Cleardata")
    self:NotifyTo("Npc2074", 0, true)
    self:NotifyTo("Npc2030", 0, true)
    self:NotifyTo("Npc2031", 0, true)
    self:DestroyQuestNpcActor(actors.Lulu.alias, 3)
    self:DestroyQuestNpcActor(actors.Meng.alias, 3)
    self:DestroyQuestNpcActor(actors.Fei.alias, 3)
end

function Quest22001:FailQuest22001()
    print("FailQuest2200103")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(true, 2200103)
        actor:NarratorOnlyTask(datas.NarratorTable2)
    end
end

function Quest22001:PauseReminder22001()
    print("PauseReminder2200103")
    actorMgr:GetActor(clientData.ActorAlias):NarratorOnlyTask(datas.NarratorTable3)
end

function Quest22001:FinishQuest22001()
    print("FinishQuest2200103")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 2200103)
    end
end

function Quest22001:Start()
    print("Start")
end

function Quest22001:OnDestroy()
    print("OnDestroy")
end

function Quest22001:OnSubStart2200101(arg1)
    print("OnSubStart2200101")
    self:CreateQuestNpc(arg1, actors.Fei.id, 1)
    self:CreateQuestNpc(arg1, actors.Meng.id, 2)
    self:CreateQuestNpc(arg1, actors.Lulu.id, 3)
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
end

function Quest22001:OnSubFinish2200101(arg1)
    print("OnSubFinish2200101")
end

function Quest22001:OnSubFailed2200101(arg1)
    print("OnSubFailed2200101")
end

function Quest22001:OnSubStart2200102(arg1)
    self:SetQuestVarWithInterval(arg1.QuestConfigId, 1, 1, 3)
    print("OnSubStart2200102")
    local questVar = self:GetQuestVar(arg1.QuestConfigId, 1)
    local questNpcCreateTask = self:CreateQuestNpcCreateTask({actors.Fei.alias, actors.Meng.alias, actors.Lulu.alias})
    globalActor:EnablePlayerInput(false)
    if questVar == 1 then
        self:CallDelay(2, function(arg1_2)
            globalActor:EnablePlayerInput(true)
            arg1_2:TransmitPlayerById(arg1, 1, function(arg1_2)
                arg1_2:CreateQuestNpc(arg1, actors.Fei.id, 1)
                arg1_2:CreateQuestNpc(arg1, actors.Meng.id, 2)
                arg1_2:CreateQuestNpc(arg1, actors.Lulu.id, 3)
                arg1_2:RequestInteraction(actors.Fei.alias)
            end, nil, questNpcCreateTask)
        end)
    elseif questVar == 2 then
        self:CallDelay(2, function(arg1_2)
            globalActor:EnablePlayerInput(true)
            arg1_2:TransmitPlayerById(arg1, 2, function(arg1_2)
                arg1_2:CreateQuestNpc(arg1, actors.Fei.id, 4)
                arg1_2:CreateQuestNpc(arg1, actors.Meng.id, 5)
                arg1_2:CreateQuestNpc(arg1, actors.Lulu.id, 6)
                arg1_2:RequestInteraction(actors.Fei.alias)
            end, nil, questNpcCreateTask)
        end)
    elseif questVar == 3 then
        self:CallDelay(2, function(arg1_2)
            globalActor:EnablePlayerInput(true)
            arg1_2:TransmitPlayerById(arg1, 3, function(arg1_2)
                arg1_2:CreateQuestNpc(arg1, actors.Fei.id, 7)
                arg1_2:CreateQuestNpc(arg1, actors.Meng.id, 8)
                arg1_2:CreateQuestNpc(arg1, actors.Lulu.id, 9)
                arg1_2:RequestInteraction(actors.Fei.alias)
            end, nil, questNpcCreateTask)
        end)
    end

    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
end

function Quest22001:OnSubFinish2200102(arg1)
    print("OnSubFinish2200102")
end

function Quest22001:OnSubFailed2200102(arg1)
    print("OnSubFailed2200102")
end

function Quest22001:OnSubStart2200103(arg1)
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
    self:NarratorOnlyTask(datas.NarratorTable1)
    print("OnSubStart2200103")
    local questVar = self:GetQuestVar(arg1.QuestConfigId, 1)
    self:RewindNPC(arg1)
    local questNpcActor = self:GetQuestNpcActor(actors.Fei.alias)
    if questVar == 1 then
        self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData1, 12, datas.beFollowLen, datas.beFollowFailed, function(arg1, arg2)
            print("AFinishQuest2200103")
            if arg1.BeFollowState == BeFollowState.SUCCESS then
                local actor = actorMgr:GetActor(clientData.ActorAlias)
                if actor ~= nil then
                    actor:FinishQuestID(false, 2200103)
                end
            end
        end, nil, nil, function(arg1, arg2)
            print("APauseReminder2200103")
            actorMgr:GetActor(clientData.ActorAlias):NarratorOnlyTask(datas.NarratorTable2)
            questNpcActor:Standby()
        end, nil, function(arg1, arg2)
            print("AFailQuest2200103")
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                actor:NarratorOnlyTask(datas.NarratorTable2)
                arg1:CallDelay(2, function()
                    actorMgr:GetActor(clientData.ActorAlias):FinishQuestID(true, 2200103)
                end)
            end
        end, false)
    elseif questVar == 2 then
        self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData2, 12, datas.beFollowLen, datas.beFollowFailed, function(arg1, arg2)
            print("AFinishQuest2200103")
            if arg1.BeFollowState == BeFollowState.SUCCESS then
                local actor = actorMgr:GetActor(clientData.ActorAlias)
                if actor ~= nil then
                    actor:FinishQuestID(false, 2200103)
                end
            end
        end, nil, nil, function(arg1, arg2)
            print("APauseReminder2200103")
            actorMgr:GetActor(clientData.ActorAlias):NarratorOnlyTask(datas.NarratorTable2)
            questNpcActor:Standby()
        end, nil, function(arg1, arg2)
            print("AFailQuest2200103")
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                actor:NarratorOnlyTask(datas.NarratorTable2)
                arg1:CallDelay(2, function()
                    actorMgr:GetActor(clientData.ActorAlias):FinishQuestID(true, 2200103)
                end)
            end
        end, false)
    elseif questVar == 3 then
        self:NpcBeFollowTaskByRoutePointsWithDiffLen(questNpcActor, datas.RoutePointsData3, 12, datas.beFollowLen, datas.beFollowFailed, function(arg1, arg2)
            print("AFinishQuest2200103")
            if arg1.BeFollowState == BeFollowState.SUCCESS then
                local actor = actorMgr:GetActor(clientData.ActorAlias)
                if actor ~= nil then
                    actor:FinishQuestID(false, 2200103)
                end
            end
        end, nil, nil, function(arg1, arg2)
            print("APauseReminder2200103")
            actorMgr:GetActor(clientData.ActorAlias):NarratorOnlyTask(datas.NarratorTable2)
            questNpcActor:Standby()
        end, nil, function(arg1, arg2)
            print("AFailQuest2200103")
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                actor:NarratorOnlyTask(datas.NarratorTable2)
                arg1:CallDelay(2, function()
                    actorMgr:GetActor(clientData.ActorAlias):FinishQuestID(true, 2200103)
                end)
            end
        end, false)
    end
end

function Quest22001:OnSubFinish2200103(arg1)
    print("OnSubFinish2200103")
end

function Quest22001:OnSubFailed2200103(arg1)
    print("OnSubFailed2200103")
    self:NotifyTo("Npc2074", 0, true)
    self:NotifyTo("Npc2030", 0, true)
    self:NotifyTo("Npc2031", 0, true)
    self:DestroyQuestNpcActor(actors.Meng.alias, 3)
    self:DestroyQuestNpcActor(actors.Fei.alias, 3)
    self:DestroyQuestNpcActor(actors.Lulu.alias, 3)
end

function Quest22001:OnSubStart2200106(arg1)
    print("OnSubStart2200106")
    self:RewindNPC(arg1)
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
end

function Quest22001:OnSubFinish2200106(arg1)
    print("OnSubFinish2200106")
end

function Quest22001:OnSubFailed2200106(arg1)
    print("OnSubFailed2200106")
end

function Quest22001:OnSubStart2200104(arg1)
    print("OnSubStart2200104")
    self:RewindNPC(arg1)
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
end

function Quest22001:OnSubFinish2200104(arg1)
    print("OnSubFinish2200104")
    self.NarratorOnlyTask(self, datas.NarratorTable3)
    local paimonData = self.clientData.PaimonData
    local avatarPos = actorUtils.GetAvatarPos()
    local avatarForward = actorUtils.GetAvatarForward()
    local n = 1.5
    avatarPos.x = avatarPos.x + avatarForward.x * n
    avatarPos.z = avatarPos.z + avatarForward.z * n
    local v = avatarForward
    v.x = v.x * -1
    v.z = v.z * -1
    self.CreateQuestNpcByIdWithPos(self, 2200104, actors.Paimon.id, 10, avatarPos, M.Dir2Euler(v))
    self.CallDelay(self, 3, function()
        local questNpcActor = self:GetQuestNpcActor(clientData.Actors.Paimon.alias)
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest22001:OnSubFailed2200104(arg1)
    print("OnSubFailed2200104")
end

function Quest22001:OnSubStart2200105(arg1)
    print("OnSubStart2200105")
    self:RewindNPC(arg1)
    self:NotifyTo("Npc2074", 1, true)
    self:NotifyTo("Npc2030", 1, true)
    self:NotifyTo("Npc2031", 1, true)
end

function Quest22001:OnSubFinish2200105(arg1)
    print("OnSubFinish2200105")
    self:CallDelay(2, self.Blackscreen)
end

function Quest22001:OnSubFailed2200105(arg1)
    print("OnSubFailed2200105")
    self:NotifyTo("Npc2074", 0, true)
    self:NotifyTo("Npc2030", 0, true)
    self:NotifyTo("Npc2031", 0, true)
end

function Quest22001:OnMainFinished(arg1)
    print("main finished " .. tostring(arg1.QuestMainId))
end

function Quest22001:OnMainFailed(arg1)
    print("main failed " .. tostring(arg1.QuestMainId))
end

function Quest22001:OnMainCanceled(arg1)
    print("main canceled " .. tostring(arg1.QuestMainId))
    self:DestroyQuestNpcActor(actors.Meng.alias, 3)
    self:DestroyQuestNpcActor(actors.Fei.alias, 3)
    self:DestroyQuestNpcActor(actors.Lulu.alias, 3)
    self:NotifyTo("Npc2074", 0, true)
    self:NotifyTo("Npc2030", 0, true)
    self:NotifyTo("Npc2031", 0, true)
end

return Quest22001

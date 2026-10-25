require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10501 = class("Quest10501", QuestActorProxy)
Quest10501.defaultAlias = "Quest10501"
local clientData
local this
local mainID
local actorAlias
local subIDs
local npcs
local datas

function Quest10501:OnDataLoaded()
    this = self
    clientData = self.clientData
    mainID = clientData.MainID
    actorAlias = clientData.ActorAlias
    subIDs = clientData.SubIDs
    npcs = clientData.Npcs
    datas = clientData.Datas
end

function Quest10501:OnSubStartHandlerBuild()
    self.subStartHandlers = {
        ["1050101"] = self.OnSubStart1050101,
        ["1050113"] = self.OnSubStart1050113,
        ["1050102"] = self.OnSubStart1050102,
        ["1050114"] = self.OnSubStart1050114,
        ["1050103"] = self.OnSubStart1050103,
        ["1050104"] = self.OnSubStart1050104,
        ["1050110"] = self.OnSubStart1050110,
        ["1050111"] = self.OnSubStart1050111,
        ["1050112"] = self.OnSubStart1050112,
        ["1050105"] = self.OnSubStart1050105,
        ["1050106"] = self.OnSubStart1050106,
        ["1050107"] = self.OnSubStart1050107,
        ["1050108"] = self.OnSubStart1050108,
        ["1050109"] = self.OnSubStart1050109
    }
end

function Quest10501:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {
        ["1050101"] = self.OnSubFinish1050101,
        ["1050113"] = self.OnSubFinish1050113,
        ["1050102"] = self.OnSubFinish1050102,
        ["1050114"] = self.OnSubFinish1050114,
        ["1050103"] = self.OnSubFinish1050103,
        ["1050104"] = self.OnSubFinish1050104,
        ["1050110"] = self.OnSubFinish1050110,
        ["1050111"] = self.OnSubFinish1050111,
        ["1050112"] = self.OnSubFinish1050112,
        ["1050105"] = self.OnSubFinish1050105,
        ["1050106"] = self.OnSubFinish1050106,
        ["1050107"] = self.OnSubFinish1050107,
        ["1050108"] = self.OnSubFinish1050108,
        ["1050109"] = self.OnSubFinish1050109
    }
end

function Quest10501:OnSubFailedHandlerBuild()
    self.subFailedHandlers = {
        ["1050101"] = self.OnSubFailed1050101,
        ["1050113"] = self.OnSubFailed1050113,
        ["1050102"] = self.OnSubFailed1050102,
        ["1050114"] = self.OnSubFailed1050114,
        ["1050103"] = self.OnSubFailed1050103,
        ["1050104"] = self.OnSubFailed1050104,
        ["1050110"] = self.OnSubFailed1050110,
        ["1050111"] = self.OnSubFailed1050111,
        ["1050112"] = self.OnSubFailed1050112,
        ["1050105"] = self.OnSubFailed1050105,
        ["1050106"] = self.OnSubFailed1050106,
        ["1050107"] = self.OnSubFailed1050107,
        ["1050108"] = self.OnSubFailed1050108,
        ["1050109"] = self.OnSubFailed1050109
    }
end

function Quest10501:Start()
    print("Start")
end

function Quest10501:OnDestroy()
    print("OnDestroy")
end

function Quest10501:OnMainFinished(arg1)
    print("OnMainFinished")
end

function Quest10501:OnMainFailed(arg1)
    print("OnMainFailed")
end

function Quest10501:OnMainCanceled(arg1)
    print("OnMainCanceled")
end

function Quest10501:CheckSitPos()
    print("CheckSitPos")
    local pos = sceneData:GetDummyPoint(3, "Q10501Sit").pos
    local avatarPos = actorUtils.GetAvatarPos()
    print(pos.x - avatarPos.x)
    print(pos.z - avatarPos.z)
    if math.abs(pos.x - avatarPos.x) < 1 then
        if math.abs(pos.z - avatarPos.z) < 1 then
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                actor:FinishQuestID(false, 1050113)
            end
        end
    else
        Quest10501:CallOnAvatarStand(Quest10501.RepeatCheckSit)
    end
end

function Quest10501:InvokeOnInteraction(arg1)
    print("InvokeOnInteraction")
    if arg1 == 1 then
        self:SetQuestVar(1050102, 0, 1)
        local questVar = self:GetQuestVar(1050102, 1)
        local v = self:GetQuestVar(1050102, 2)
        local questVar2 = self:GetQuestVar(1050102, 3)
        if questVar == 1 and v == 1 and questVar2 == 1 then
            self:SetQuestVar(1050102, 4, 1)
            print("questvar index 4 value 1")
        end
    elseif arg1 == 2 then
        self:SetQuestVar(1050102, 1, 1)
        local questVar = self:GetQuestVar(1050102, 0)
        local v = self:GetQuestVar(1050102, 2)
        local questVar2 = self:GetQuestVar(1050102, 3)
        if questVar == 1 and v == 1 and questVar2 == 1 then
            self:SetQuestVar(1050102, 4, 1)
            print("questvar index 4 value 1")
        end
    elseif arg1 == 3 then
        self:SetQuestVar(1050102, 2, 1)
        local questVar = self:GetQuestVar(1050102, 0)
        local v = self:GetQuestVar(1050102, 1)
        local questVar2 = self:GetQuestVar(1050102, 3)
        if questVar == 1 and v == 1 and questVar2 == 1 then
            self:SetQuestVar(1050102, 4, 1)
            print("questvar index 4 value 1")
        end
    elseif arg1 == 4 then
        self:SetQuestVar(1050102, 3, 1)
        local questVar = self:GetQuestVar(1050102, 0)
        local v = self:GetQuestVar(1050102, 1)
        local questVar2 = self:GetQuestVar(1050102, 2)
        if questVar == 1 and v == 1 and questVar2 == 1 then
            self:SetQuestVar(1050102, 4, 1)
            print("questvar index 4 value 1")
        end
    elseif arg1 == 5 then
        self:ShowBlackScreen(0.5, 1.5, 0.5, nil, nil, nil, "QUEST_Message_Q1050112")
    elseif arg1 == 6 then
        self:FinishQuestID(false, 1050114)
        print("let 1050114 finish")
    elseif arg1 == 7 then
        self:PlayEffect("Eff_SceneObj_Food_Scent", sceneData:GetDummyPoint(3, "Q10501Smoke").pos)
        print("play smoke effect")
    elseif arg1 == 8 then
        self:SetQuestVar(1050102, 0, 0)
        self:SetQuestVar(1050102, 1, 0)
        self:SetQuestVar(1050102, 2, 0)
        self:SetQuestVar(1050102, 3, 0)
        self:SetQuestVar(1050102, 4, 0)
        print("reset quest var")
    elseif arg1 == 9 then
        self:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    end
end

function Quest10501:RepeatCheckSit()
    print("RepeatCheckSit")
    print("CheckSitPos")
    Quest10501:CallOnAvatarSit(Quest10501.CheckSitPos)
end

function Quest10501:OnSubStart1050101(arg1)
    print("OnSubStart1050101")
end

function Quest10501:OnSubFinish1050101(arg1)
    print("OnSubFinish1050101")
end

function Quest10501:OnSubFailed1050101(arg1)
    print("OnSubFailed1050101")
end

function Quest10501:OnSubStart1050113(arg1)
    print("OnSubStart1050113")
    this:RepeatCheckSit()
    this:CreateQuestNpc(arg1, npcs.Npc10095Data2.id, 1)
    this:GetQuestNpcActor(npcs.Npc10095Data2.alias):SitOnChair(8010)
end

function Quest10501:OnSubFinish1050113(arg1)
    print("OnSubFinish1050113")
end

function Quest10501:OnSubFailed1050113(arg1)
    print("OnSubFailed1050113")
end

function Quest10501:OnSubStart1050102(arg1)
    print("OnSubStart1050102")
    this:GetQuestNpcActor(npcs.Npc10095Data2.alias):SitOnChair(8010)
    this:RequestInteraction(npcs.Npc10095Data2.alias)
end

function Quest10501:OnSubFinish1050102(arg1)
    print("OnSubFinish1050102")
    this:DestroyQuestNpcActor(npcs.Npc220601Data.alias, 3)
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    this:NarratorOnlyTaskByData(datas.NarratorWithId)
end

function Quest10501:OnSubFailed1050102(arg1)
    print("OnSubFailed1050102")
end

function Quest10501:OnSubStart1050114(arg1)
    print("OnSubStart1050114")
end

function Quest10501:OnSubFinish1050114(arg1)
    print("OnSubFinish1050114")
end

function Quest10501:OnSubFailed1050114(arg1)
    print("OnSubFailed1050114")
end

function Quest10501:OnSubStart1050103(arg1)
    print("OnSubStart1050103")
    this:GetQuestNpcActor(npcs.Npc10095Data2.alias):SitOnChair(8010)
end

function Quest10501:OnSubFinish1050103(arg1)
    print("OnSubFinish1050103")
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest10501:OnSubFailed1050103(arg1)
    print("OnSubFailed1050103")
end

function Quest10501:OnSubStart1050104(arg1)
    print("OnSubStart1050104")
    this:GetQuestNpcActor(npcs.Npc10095Data2.alias):SitOnChair(8010)
end

function Quest10501:OnSubFinish1050104(arg1)
    print("OnSubFinish1050104")
end

function Quest10501:OnSubFailed1050104(arg1)
    print("OnSubFailed1050104")
end

function Quest10501:OnSubStart1050110(arg1)
    print("OnSubStart1050110")
end

function Quest10501:OnSubFinish1050110(arg1)
    print("OnSubFinish1050110")
end

function Quest10501:OnSubFailed1050110(arg1)
    print("OnSubFailed1050110")
end

function Quest10501:OnSubStart1050111(arg1)
    print("OnSubStart1050111")
    this:RequestInteraction(npcs.Npc10095Data2.alias)
end

function Quest10501:OnSubFinish1050111(arg1)
    print("OnSubFinish1050111")
end

function Quest10501:OnSubFailed1050111(arg1)
    print("OnSubFailed1050111")
end

function Quest10501:OnSubStart1050112(arg1)
    print("OnSubStart1050112")
    this:RequestInteraction(npcs.Npc10095Data2.alias)
end

function Quest10501:OnSubFinish1050112(arg1)
    print("OnSubFinish1050112")
end

function Quest10501:OnSubFailed1050112(arg1)
    print("OnSubFailed1050112")
end

function Quest10501:OnSubStart1050105(arg1)
    print("OnSubStart1050105")
    this:GetQuestNpcActor(npcs.Npc10095Data2.alias):SitOnChair(8010)
end

function Quest10501:OnSubFinish1050105(arg1)
    print("OnSubFinish1050105")
    this:DestroyQuestNpcActor(npcs.Npc10095Data2.alias, 0)
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest10501:OnSubFailed1050105(arg1)
    print("OnSubFailed1050105")
end

function Quest10501:OnSubStart1050106(arg1)
    print("OnSubStart1050106")
end

function Quest10501:OnSubFinish1050106(arg1)
    print("OnSubFinish1050106")
end

function Quest10501:OnSubFailed1050106(arg1)
    print("OnSubFailed1050106")
end

function Quest10501:OnSubStart1050107(arg1)
    print("OnSubStart1050107")
    self.CallDelay(self, 2, function()
        local questNpcCreateTask = self:CreateQuestNpcCreateTask({npcs.Npc10095Data.alias})
        self:TransmitPlayerById(arg1, 1, nil, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc10095Data.alias, 1)
            arg1_2:RequestInteraction(npcs.Npc10095Data.alias)
        end, questNpcCreateTask)
    end)
end

function Quest10501:OnSubFinish1050107(arg1)
    print("OnSubFinish1050107")
    this:DestroyQuestNpcActor(npcs.Npc10095Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc10096Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc10097Data.alias, 3)
    this:DestroyQuestNpcActor(npcs.Npc10098Data.alias, 3)
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
    this:DestroyQuestNpcActor(npcs.Npc10113Data.alias, 3)
end

function Quest10501:OnSubFailed1050107(arg1)
    print("OnSubFailed1050107")
end

function Quest10501:OnSubStart1050108(arg1)
    print("OnSubStart1050108")
    actorMgr:CreateActorWithPos(datas.Q10501Trigger_.alias, datas.Q10501Trigger_.script, datas.Q10501Trigger_.id, 0, datas.Q10501Trigger_.point.pos, datas.Q10501Trigger_.point.rot, true, false, 3)
end

function Quest10501:OnSubFinish1050108(arg1)
    print("OnSubFinish1050108")
end

function Quest10501:OnSubFailed1050108(arg1)
    print("OnSubFailed1050108")
end

function Quest10501:OnSubStart1050109(arg1)
    print("OnSubStart1050109")
    self.CallDelay(self, 2, function()
        local questNpcCreateTask = self:CreateQuestNpcCreateTask({npcs.Npc10095Data.alias})
        self:TransmitPlayerById(arg1, 1, nil, function(arg1_2)
            arg1_2:CreateQuestNpc(arg1, npcs.Npc10095Data.alias, 1)
            arg1_2:RequestInteraction(npcs.Npc10095Data.alias)
        end, questNpcCreateTask)
    end)
end

function Quest10501:OnSubFinish1050109(arg1)
    print("OnSubFinish1050109")
    this:DestroyQuestNpcActor(npcs.Npc10095Data.alias, 0)
    this:GetQuestNpcActor(npcs.PaimonData.alias):DestroyWithDisappear(false)
end

function Quest10501:OnSubFailed1050109(arg1)
    print("OnSubFailed1050109")
end

return Quest10501

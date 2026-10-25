require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest10100 = class("Quest10100", QuestActorProxy)
Quest10100.defaultAlias = "Quest10100"
local clientData
local subIDs
local lisaData
local paimonData
local playerData
local book1Data
local book2Data
local book3Data
local book4Data

function Quest10100:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    lisaData = clientData.LisaData
    paimonData = clientData.PaimonData
    playerData = clientData.PlayerData
    book1Data = clientData.Book1Data
    book2Data = clientData.Book2Data
    book3Data = clientData.Book3Data
    book4Data = clientData.Book4Data
end

function Quest10100:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["1010001"] = self.OnSubStart1010001
    self.subStartHandlers["1010002"] = self.OnSubStart1010002
    self.subStartHandlers["1010003"] = self.OnSubStart1010003
    self.subStartHandlers["1010004"] = self.OnSubStart1010004
    self.subStartHandlers["1010005"] = self.OnSubStart1010005
    self.subStartHandlers["1010006"] = self.OnSubStart1010006
    self.subStartHandlers["1010007"] = self.OnSubStart1010007
    self.subStartHandlers["1010008"] = self.OnSubStart1010008
    self.subStartHandlers["1010009"] = self.OnSubStart1010009
    self.subStartHandlers["1010010"] = self.OnSubStart1010010
    self.subStartHandlers["1010029"] = self.OnSubStart1010029
    self.subStartHandlers["1010044"] = self.OnSubStart1010044
end

function Quest10100:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["1010001"] = self.OnSubFinish1010001
    self.subFinishHandlers["1010002"] = self.OnSubFinish1010002
    self.subFinishHandlers["1010003"] = self.OnSubFinish1010003
    self.subFinishHandlers["1010004"] = self.OnSubFinish1010004
    self.subFinishHandlers["1010005"] = self.OnSubFinish1010005
    self.subFinishHandlers["1010006"] = self.OnSubFinish1010006
    self.subFinishHandlers["1010007"] = self.OnSubFinish1010007
    self.subFinishHandlers["1010008"] = self.OnSubFinish1010008
    self.subFinishHandlers["1010009"] = self.OnSubFinish1010009
    self.subFinishHandlers["1010010"] = self.OnSubFinish1010010
    self.subFinishHandlers["1010029"] = self.OnSubFinish1010029
    self.subFinishHandlers["1010044"] = self.OnSubFinish1010044
end

function Quest10100:RepeatCheckSit()
    print("CheckSitPos")
    Quest10100:CallOnAvatarSit(Quest10100.CheckSitPos)
end

function Quest10100:CheckSitPos()
    local pos = sceneData:GetDummyPoint(3, "Q10100Target1").pos
    local avatarPos = actorUtils.GetAvatarPos()
    print(pos.x - avatarPos.x)
    print(pos.z - avatarPos.z)
    if math.abs(pos.x - avatarPos.x) < 2 then
        if math.abs(pos.z - avatarPos.z) < 2 then
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                actor:FinishQuestID(false, 1010006)
            end
        end
    else
        Quest10100:CallOnAvatarStand(Quest10100.RepeatCheckSit)
    end
end

function Quest10100:LisaShowBubble()
    print("Lisa Bubble")
    if self:GetSubQuestState(1010005) ~= 3 then
        self:LisaBubbleTime()
        local n = math.random(1, 2)
        if n == 1 then
            self:TriggerNpcSpeechBubble(1007, 101008304)
        elseif n == 2 then
            self:TriggerNpcSpeechBubble(1007, 101008305)
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                actor:FinishQuestID(false, 1010028)
            end
        end
    end
end

function Quest10100:LisaBubbleTime()
    print("Lisa Bubble Timer")
    self:CallDelay(5, self.LisaCloseBubble)
end

function Quest10100:LisaCloseBubble()
    print("Lisa Bubble Close")
    self:ClearNpcSpeechBubble(1007)
    self:LisaBubbleGap()
end

function Quest10100:LisaBubbleGap()
    local n = math.random(8, 15)
    print("Lisa Bubble Gap:" .. n)
    self:CallDelay(n, self.LisaShowBubble)
end

function Quest10100:LisaFreeStyle()
    print("Lisa Bubble Timer")
    local questNpcActor = self:GetQuestNpcActor(lisaData.Lisa)
    if questNpcActor ~= nil then
        questNpcActor:DoFreeStyle(1190)
    end
end

function Quest10100:FinalMood()
    local n = 0
    if self:GetSubQuestState(39003) == 3 then
    else
        if self:GetSubQuestState(39004) == 3 then
            n = n + 1
        else
            if self:GetSubQuestState(39005) == 3 then
                n = n - 1
            else
                if self:GetSubQuestState(39006) == 3 then
                end
            end
        end
    end

    if self:GetSubQuestState(39021) == 3 then
    else
        if self:GetSubQuestState(39022) == 3 then
        else
            if self:GetSubQuestState(39023) == 3 then
                n = n - 1
            else
                if self:GetSubQuestState(39024) == 3 then
                    n = n + 1
                else
                    if self:GetSubQuestState(39025) == 3 then
                        n = n + 1
                    end
                end
            end
        end
    end

    if n <= -2 then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 1010033)
        end
    elseif 2 <= n then
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 1010031)
        end
    else
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 1010032)
        end
    end
end

function Quest10100:DestroyNPC()
    print("DestroyNPC")
    self:ActionSafeCall(function(arg1)
        arg1:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
            local questNpcActor = arg1:GetQuestNpcActor(lisaData.Lisa)
            local v = arg1:GetQuestNpcActor(paimonData.Paimon)
            if questNpcActor ~= nil then
                questNpcActor:Destroy(false)
            end

            if v ~= nil then
                v:DestroyWithDisappear(false)
            end
        end)
    end)
end

function Quest10100:OnSubStart1010001(arg1)
    print("1010001 start")
    self:DeployStoryByQuest(121010001)
end

function Quest10100:OnSubFinish1010001(arg1)
    print("1010001 End")
    self:CancelStoryByQuest(121010001)
end

function Quest10100:OnSubStart1010002(arg1)
    print("1010002 start:Creat Lisa")
    self:CreateQuestNpc(arg1, lisaData.LisaID)
    self:LisaFreeStyle()
end

function Quest10100:OnSubStart1010003(arg1)
    self:UnCallFunc(self.LisaFreeStyle)
    local questNpcActor = self:GetQuestNpcActor(lisaData.Lisa)
    if questNpcActor ~= nil then
        questNpcActor:DoFreeStyle(1120)
    end
end

function Quest10100:OnSubStart1010010(arg1)
    local questNpcActor = self:GetQuestNpcActor(lisaData.Lisa)
    if questNpcActor ~= nil then
        questNpcActor:DoFreeStyle(1120)
    end
end

function Quest10100:OnSubStart1010005(arg1)
    self:LisaBubbleGap()
end

function Quest10100:OnSubStart1010006(arg1)
    print("1010006 start:Player sit")
    self.RepeatCheckSit(self)
    self.ActionSafeCall(self, function()
        local questNpcActor = self:GetQuestNpcActor(paimonData.Paimon)
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest10100:OnSubStart1010007(arg1)
    print("1010007 start:Player sit")
end

function Quest10100:OnSubStart1010009(arg1)
    print("1010009 start:Player sit")
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({lisaData.Lisa})
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1_2)
        arg1_2:CreateQuestNpc(arg1, lisaData.LisaID)
        arg1_2:DeployStoryByQuest(121010009)
    end, nil, entityCreateTask)
end

function Quest10100:OnSubStart1010044(arg1)
    print("1010044 start:Creat Book4")
    self:SpawnGadget(arg1, book4Data.BookID, 1)
end

function Quest10100:OnSubFinish1010002(arg1)
    print("1010002 finish:Lisa disappear")
    self.ActionSafeCall(self, function()
        self:CreateQuestNpc(arg1, lisaData.LisaID, 2)
        local questNpcActor = self:GetQuestNpcActor(paimonData.Paimon)
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest10100:OnSubFinish1010010(arg1)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(lisaData.Lisa)
        local v = arg1:GetQuestNpcActor(paimonData.Paimon)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        if v ~= nil then
            v:DestroyWithDisappear(false)
        end
    end)
end

function Quest10100:OnSubFinish1010004(arg1)
    print("1010004 finish:Lisa sit")
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(lisaData.Lisa)
        local v = arg1:GetQuestNpcActor(paimonData.Paimon)
        if questNpcActor ~= nil then
            questNpcActor.EnableInteraction(questNpcActor, false)
            questNpcActor.WalkToTask(questNpcActor, lisaData.BornPos2, function(arg1)
                questNpcActor:SitOnChair(8010)
                questNpcActor:EnableInteraction(true)
            end)
        end

        if v ~= nil then
            v:DestroyWithDisappear(false)
        end
    end)
end

function Quest10100:OnSubFinish1010006(arg1)
    print("1010006 finish:Blackscreen & talk")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        arg1:RequestInteraction(lisaData.Lisa)
    end, nil, nil, "QUEST_Message_Q1010006")
end

function Quest10100:OnSubFinish1010007(arg1)
    self:FinalMood()
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(lisaData.Lisa)
        local v = arg1:GetQuestNpcActor(paimonData.Paimon)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        if v ~= nil then
            v:DestroyWithDisappear(false)
        end
    end)
end

function Quest10100:OnSubFinish1010008(arg1)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(lisaData.Lisa)
        local v = arg1:GetQuestNpcActor(paimonData.Paimon)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        if v ~= nil then
            v:DestroyWithDisappear(false)
        end
    end)
end

function Quest10100:OnSubFinish1010009(arg1)
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(lisaData.Lisa)
        local v = arg1:GetQuestNpcActor(paimonData.Paimon)
        if questNpcActor ~= nil then
            questNpcActor:Destroy(false)
        end

        if v ~= nil then
            v:DestroyWithDisappear(false)
        end

        arg1:CancelStoryByQuest(121010009)
    end)
end

function Quest10100:OnSubFinish1010029(arg1)
    print("1010029 finish:Blackscreen & talk")
    self:ActionSafeCall(function(arg1)
        local actor = actorMgr:GetActor("Q10100Trigger")
        if actor ~= nil then
            actor:Destroy(false)
        end

        arg1:ShowBlackScreen(0.5, 1.5, 0.5, function(arg1)
            local questNpcActor = arg1:GetQuestNpcActor(lisaData.Lisa)
            local v = arg1:GetQuestNpcActor(paimonData.Paimon)
            if questNpcActor ~= nil then
                questNpcActor:StandFromChair()
                questNpcActor:DoFreeStateTrigger()
                questNpcActor:Standby()
                arg1:CallDelay(0.5, function(arg1)
                    arg1:RequestInteractionForceAlias("Npc1419")
                end)
            end
        end)
    end)
end

function Quest10100:OnSubFinish1010044(arg1)
    globalActor:UnSpawn(book4Data.Book4)
end

function Quest10100:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("Lisa happy1")
        local questNpcActor = self:GetQuestNpcActor(lisaData.Lisa)
    elseif arg1 == 2 then
        print("Lisa happy2")
        local questNpcActor = self:GetQuestNpcActor(lisaData.Lisa)
    elseif arg1 == 3 then
        print("Lisa happy3")
        local questNpcActor = self:GetQuestNpcActor(lisaData.Lisa)
    elseif arg1 == 4 then
        print("Destroy Paimon")
        local questNpcActor = self:GetQuestNpcActor(paimonData.Paimon)
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    elseif arg1 == 5 then
        print("Lisa happy1")
        local questNpcActor = self:GetQuestNpcActor(lisaData.Lisa)
    elseif arg1 == 6 then
        print("Lisa happy2")
        local questNpcActor = self:GetQuestNpcActor(lisaData.Lisa)
    elseif arg1 == 7 then
        print("Lisa happy3")
        local questNpcActor = self:GetQuestNpcActor(lisaData.Lisa)
    elseif arg1 == 8 then
        print("BlackScreen")
        self:ShowBlackScreen(0.5, 3, 0.5)
    end
end

function Quest10100:Start() end
function Quest10100:OnDestroy() end
return Quest10100

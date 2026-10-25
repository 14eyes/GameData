require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest451 = class("Quest451", QuestActorProxy)
Quest451.defaultAlias = "Quest451"
local clientData
local subIDs
local n = 451
local paimonData
local razorData

function Quest451:OnDataLoaded()
    clientData = self.clientData
    subIDs = clientData.SubIDs
    n = 451
    paimonData = clientData.PaimonData
    razorData = clientData.RazorData
end

function Quest451:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["45109"] = self.OnSubStart45109
    self.subStartHandlers["45101"] = self.OnSubStart45101
    self.subStartHandlers["45102"] = self.OnSubStart45102
    self.subStartHandlers["45107"] = self.OnSubStart45107
    self.subStartHandlers["45103"] = self.OnSubStart45103
    self.subStartHandlers["45104"] = self.OnSubStart45104
    self.subStartHandlers["45108"] = self.OnSubStart45108
    self.subStartHandlers["45105"] = self.OnSubStart45105
    self.subStartHandlers["45106"] = self.OnSubStart45106
end

function Quest451:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["45109"] = self.OnSubFinish45109
    self.subFinishHandlers["45101"] = self.OnSubFinish45101
    self.subFinishHandlers["45102"] = self.OnSubFinish45102
    self.subFinishHandlers["45107"] = self.OnSubFinish45107
    self.subFinishHandlers["45103"] = self.OnSubFinish45103
    self.subFinishHandlers["45104"] = self.OnSubFinish45104
    self.subFinishHandlers["45108"] = self.OnSubFinish45108
    self.subFinishHandlers["45105"] = self.OnSubFinish45105
    self.subFinishHandlers["45106"] = self.OnSubFinish45106
end

function Quest451:PaimonDis()
    local questNpcActor = self:GetQuestNpcActor(paimonData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest451:PaimonDelay()
    print("paimon shanchu01")
    self:PaimonDis()
end

function Quest451:Razor05()
    local questNpcActor = self:GetQuestNpcActor(razorData.Alias)
    if questNpcActor ~= nil then
        questNpcActor:DoFreeStyle(1230)
    end
end

function Quest451:OnSubStart45109(arg1)
    print("45109 start:...")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 45109)
    end
end

function Quest451:OnSubStart45101(arg1)
    print("\226\128\166\226\128\166\226\128\166\226\128\166\226\128\166\226\128\166\226\128\166\226\128\166\226\128\166\226\128\166\226\128\166\226\128\16645101 start:...")
end

function Quest451:OnSubStart45102(arg1)
    print("45102 start:...")
    local subQuestState = self:GetSubQuestState(45107)
    print("q45107state" .. subQuestState)
    if subQuestState ~= 3 then
        print("45102:create paimon")
        self:CreateQuestNpc(arg1, paimonData.ID)
    end
end

function Quest451:OnSubStart45103(arg1) end

function Quest451:OnSubStart45104(arg1)
    print("45104 start:...")
end

function Quest451:OnSubStart45105(arg1)
    self:ActionSafeCall(self.Razor05)
    self:ActionSafeCall(function(arg1)
        arg1:CallDelay(5, function(arg1)
            local actor = actorMgr:GetActor(clientData.ActorAlias)
            if actor ~= nil then
                print("wancheng 45105")
                actor:FinishQuestID(false, 45105)
            end
        end)
    end)
end

function Quest451:OnSubStart45106(arg1)
    print("45106 start:...")
end

function Quest451:OnSubStart45108(arg1)
    print("45108 start:...")
end

function Quest451:OnSubFinish45109(arg1)
    print("OnFinished 45109")
end

function Quest451:OnSubFinish45101(arg1)
    print("OnFinished 45101")
end

function Quest451:OnSubFinish45102(arg1)
    print("OnFinished 45102")
    self:ActionSafeCall(self.PaimonDelay)
end

function Quest451:OnSubFinish45103(arg1)
    print("OnFinished 45103")
    local actor = actorMgr:GetActor(clientData.ActorAlias)
    local entityCreateTask = curtainUtils.CreateEntityCreateTask({razorData.Alias})
    self:CallDelay(2, function(arg1_2)
        arg1_2:PlayCutsceneIndex(45101, function(arg1_2)
            actor:TransmitPlayerByQuestId(45103, 1, nil, function(arg1_2)
                arg1_2:CreateQuestNpc(arg1, razorData.ID)
                arg1_2:RequestInteraction(razorData.Alias)
                print("SHOW BLACK SCREEN 451")
            end, entityCreateTask)
        end)
    end)
end

function Quest451:OnSubFinish45104(arg1)
    print("OnFinished 45104")
    self:ActionSafeCall(self.PaimonDelay)
    self:ActionSafeCall(function(arg1)
        arg1:ShowQuestPictureDialog(254)
    end)
end

function Quest451:OnSubFinish45105(arg1)
    print("OnFinished 45105")
    local questNpcActor = self:GetQuestNpcActor(razorData.Alias)
    if questNpcActor ~= nil then
        self:ActionSafeCall(function(arg1)
            questNpcActor:DoFreeStateTrigger()
        end)
    end

    local actor = actorMgr:GetActor(clientData.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 45108)
    end
end

function Quest451:OnSubFinish45106(arg1)
    print("OnFinished 45106")
    if self:GetQuestNpcActor(razorData.Alias) ~= nil then
        self:ActionSafeCall(function(arg1)
            arg1:DestroyQuestNpcActorByAlias(razorData.Alias, false)
        end)
    end

    self:ActionSafeCall(self.PaimonDelay)
end

function Quest451:OnSubFinish45108(arg1)
    print("OnFinished 45108")
end

function Quest451:InvokeOnInteraction(arg1)
    if arg1 == 1 then
        print("Talk45107:Finishi Quest 45107")
        local actor = actorMgr:GetActor(clientData.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 45107)
        end
    end

    if arg1 == 2 then
        print("45106:*******Quest 45106")
        local questNpcActor = self:GetQuestNpcActor(razorData.Alias)
        if questNpcActor ~= nil then
            questNpcActor:RunToTask(razorData.LeavePos, function(arg1, arg2)
                arg1:SetVisible(false)
            end)
        end
    end
end

function Quest451:Start() end
function Quest451:OnDestroy() end
return Quest451

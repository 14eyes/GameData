require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest999 = class("Quest999", QuestActorProxy)
Quest999.defaultAlias = "Quest999"

function Quest999:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["99901"] = self.OnSubStart99901
    self.subStartHandlers["99902"] = self.OnSubStart99902
    self.subStartHandlers["99907"] = self.OnSubStart99907
    self.subStartHandlers["99908"] = self.OnSubStart99908
    self.subStartHandlers["99909"] = self.OnSubStart99909
    self.subStartHandlers["99913"] = self.OnSubStart99913
    self.subStartHandlers["99914"] = self.OnSubStart99914
    self.subStartHandlers["99922"] = self.OnSubStart99922
    self.subStartHandlers["99923"] = self.OnSubStart99923
end

function Quest999:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
end

function Quest999:OnSubStart99901(arg1) end
function Quest999:OnSubStart99902(arg1) end

function Quest999:OnSubStart99907(arg1)
    self:CreateQuestNpc(arg1, 1001):SpawnAttach("Example_MaskPrefab")
end

function Quest999:OnSubStart99908(arg1)
    local questNpcActor = self:GetQuestNpcActor("Wendy")
    if questNpcActor ~= nil then
        questNpcActor:UnspawnAttach("Example_MaskPrefab")
    end

    self:CallDelay(3, function(arg1)
        arg1:GetQuestNpcActor("Wendy"):SpawnAttach("Example_Effect")
    end)
end

function Quest999:OnSubStart99922(arg1)
    print("99922 start:...")
    self:CreateQuestNpc(arg1, 1001):SpawnAttach("Example_MaskPrefab")
    self:CreateQuestNpc(arg1, 3133):DoFreeStyle(4100)
end

function Quest999:OnSubStart99923(arg1)
    print("99923 start:...")
    local questNpcActor = self:GetQuestNpcActor("Wendy")
    if questNpcActor ~= nil then
        questNpcActor:UnSpawnAttach("Example_MaskPrefab")
    end

    self:CallDelay(3, function(arg1)
        arg1:GetQuestNpcActor("Wendy"):SpawnAttach("Example_Effect")
    end)
end

function Quest999:OnSubStart99909(arg1)
    self:CreateQuestNpc(arg1, 1001)
end

function Quest999:OnSubStart99913(arg1)
    local questGlobalVar = self:GetQuestGlobalVar(1002)
    if questGlobalVar == -1 then
        print("GlobalQuestVar 1002 is -1")
        local actor = actorMgr:GetActor("999")
        if actor ~= nil then
            actor:FinishQuestID(false, 99913)
        end
    else
        print("GlobalQuestVar 1002 is not -1 but it's" .. questGlobalVar)
    end
end

function Quest999:OnSubStart99914(arg1)
    self:CreateQuestNpc(arg1, 1006)
end

function Quest999:Start() end
function Quest999:OnDestroy() end
return Quest999

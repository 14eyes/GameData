require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest309 = class("Quest309", QuestActorProxy)
Quest309.defaultAlias = "Quest309"
local Q309ClientConfig = require("Quest/Client/Q309ClientConfig")
local Q359ClientConfig = require("Quest/Client/Q359ClientConfig")

function Quest309:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["30901"] = self.OnSubStart30901
    self.subStartHandlers["30903"] = self.OnSubStart30903
    self.subStartHandlers["30904"] = self.OnSubStart30904
end

function Quest309:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["30901"] = self.OnSubFinish30901
    self.subFinishHandlers["30903"] = self.OnSubFinish30903
    self.subFinishHandlers["30904"] = self.OnSubFinish30904
end

function Quest309:PaimonVanish()
    local questNpcActor = self:GetQuestNpcActor(self.clientData.PaimonData.Paimon)
    if questNpcActor ~= nil then
        questNpcActor:DestroyWithDisappear(false)
    end
end

function Quest309:OnSubStart30902(arg1)
    print("30902 Start : Creat Paimon")
    local paimonData = self.clientData.PaimonData
    local avatarPos = actorUtils.GetAvatarPos()
    avatarPos.z = avatarPos.z + 1.2
    local tbl = {x = 0, y = 0, z = -1}
    self:CreateQuestNpcWithPos(arg1, paimonData.PaimonID, 0, avatarPos, M.Dir2Euler(tbl), true, false)
end

function Quest309:OnSubStart30904(arg1)
    self.ShowBlackScreen(self, 0.3, 1.5, 0.5, function()
        self:PlayCutsceneIndex(30901, function(arg1)
            globalActor:EnablePlayerInput(false)
            local actor = actorMgr:GetActor(Q309ClientConfig.ActorAlias)
            if actor ~= nil then
                actor:FinishQuest(false, nil)
            end
        end)

        local actor = actorMgr:GetActor(Q359ClientConfig.ActorAlias)
        if actor ~= nil then
            actor:FinishQuestID(false, 35901)
        end
    end)
end

function Quest309:OnSubFinish30904(arg1) end

function Quest309:OnSubFinish30902(arg1)
    print("30902 Finish : Paimon Vanish")
end

function Quest309:Start() end
function Quest309:OnDestroy() end
return Quest309

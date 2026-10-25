require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest470 = class("Quest470", QuestActorProxy)
Quest470.defaultAlias = "Quest470"
local clientData
local saraData
local paimonData

function Quest470:OnDataLoaded()
    clientData = self.clientData
    saraData = clientData.SaraData
    paimonData = clientData.PaimonData
end

function Quest470:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["47001"] = self.OnSubStart47001
    self.subStartHandlers["47002"] = self.OnSubStart47002
    self.subStartHandlers["47003"] = self.OnSubStart47003
    self.subStartHandlers["47004"] = self.OnSubStart47004
end

function Quest470:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["47001"] = self.OnSubFinish47001
    self.subFinishHandlers["47002"] = self.OnSubFinish47002
    self.subFinishHandlers["47003"] = self.OnSubFinish47003
    self.subFinishHandlers["47004"] = self.OnSubFinish47004
end

function Quest470:PaimonVanish()
    self:ActionSafeCall(function(arg1)
        local questNpcActor = arg1:GetQuestNpcActor(paimonData.Paimon)
        if questNpcActor ~= nil then
            questNpcActor:DestroyWithDisappear(false)
        end
    end)
end

function Quest470:PaimonAppearTalk()
    local avatarPos = actorUtils.GetAvatarPos()
    avatarPos.z = avatarPos.z + 1.2
    local tbl = {x = 0, y = 0, z = -1}
    actorMgr:CreateActorWithPos(paimonData.Paimon, paimonData.PaimonScript, paimonData.PaimonID, 0, avatarPos, M.Dir2Euler(tbl), true, false)
    self:RequestInteraction(paimonData.Paimon)
end

function Quest470:PaimonAppearTalkAfterBuy()
    local paimonData = self.clientData.PaimonData
    local avatarPos = actorUtils.GetAvatarPos()
    avatarPos.x = avatarPos.x + 1.2
    local tbl = {x = -1, y = 0, z = 0}
    actorMgr:CreateActorWithPos(paimonData.Paimon, paimonData.PaimonScript, paimonData.PaimonID, 0, avatarPos, M.Dir2Euler(tbl), true, false)
    self:RequestInteraction(paimonData.Paimon)
end

function Quest470:OnSubStart47002(arg1)
    print("47002 Start : Creat Paimon and Talk")
    self:EnterSceneLookCamera(sceneData:GetDummyPoint(3, "Q470ShopLookAt").pos, 0.2, 1.5, true)
    self:CallDelay(2, function(arg1_2)
        local avatarPos = actorUtils.GetAvatarPos()
        avatarPos.z = avatarPos.z + 1.2
        local tbl = {x = 0, y = 0, z = -1}
        arg1_2:CreateQuestNpcWithPos(arg1, paimonData.PaimonID, 0, avatarPos, tbl, true, false)
        arg1_2:RequestInteraction(paimonData.Paimon)
    end)
end

function Quest470:OnSubFinish47002(arg1)
    print("47002 Finish : PaimonVanish")
    self:PaimonVanish()
end

function Quest470:OnSubStart47004(arg1)
    print("47004 Start : Creat Paimon and Talk")
    self:ActionSafeCall(function(arg1_2)
        local avatarPos = actorUtils.GetAvatarPos()
        avatarPos.z = avatarPos.z + 1.2
        avatarPos.x = avatarPos.x + 0.8
        local tbl = {x = 0, y = 0, z = -1}
        arg1_2:CreateQuestNpcWithPos(arg1, paimonData.PaimonID, 1, avatarPos, tbl)
        arg1_2:RequestInteraction(paimonData.Paimon)
    end)
end

function Quest470:OnSubFinish47004(arg1)
    print("47004 Finish : PaimonVanish")
    self:PaimonVanish()
end

function Quest470:Start() end
function Quest470:OnDestroy() end
return Quest470

require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest426 = class("Quest426", QuestActorProxy)
Quest426.defaultAlias = "Quest426"
local Q426ClientConfig = require("Quest/Client/Q426ClientConfig")

local subIDs = Q426ClientConfig.SubIDs
local paimonData = Q426ClientConfig.PaimonData

function Quest426:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["42601"] = self.OnSubStart42601
    self.subStartHandlers["42602"] = self.OnSubStart42602
end

function Quest426:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["42601"] = self.OnSubFinish42601
    self.subFinishHandlers["42602"] = self.OnSubFinish42602
end

function Quest426:OnPlayerSit(arg1)
    print("42601 PlayerSit:...")
    local actor = actorMgr:GetActor(Q426ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuest(false, nil)
    end

    local avatarPos = actorUtils.GetAvatarPos()
    avatarPos.z = avatarPos.z + 1
    local tbl = {x = 0, y = 0, z = -1}
    local currSceneID = sceneData.currSceneID
    actorMgr:CreateActorWithPos(paimonData.Paimon, paimonData.PaimonScript, paimonData.PaimonID, 0, avatarPos, M.Dir2Euler(tbl), true, false, currSceneID)
    if actor ~= nil then
        actor:RequestInteraction(paimonData.Paimon)
    end
end

function Quest426:OnPlayerStand(arg1)
    print("42601 PlayerStand:...")
end

function Quest426:OnSubStart42601(arg1)
    print("42601 start:...")
    self:CallOnAvatarSit(self.OnPlayerSit)
    self:CallOnAvatarStand(self.OnPlayerStand)
end

function Quest426:OnSubStart42602(arg1)
    print("42602 start:...")
end

function Quest426:OnSubFinish42601(arg1)
    print("OnFinished 42601")
end

function Quest426:OnSubFinish42602(arg1)
    print("OnFinished 42602")
end

function Quest426:InvokeOnInteraction(arg1)
    print("*****INVOKE**********" .. arg1 .. "*********")
    if arg1 == 1 then
        self:ActionSafeCall(function(arg1)
            local actor = actorMgr:GetActor("Paimon")
            if actor ~= nil then
                actor:DestroyWithDisappear(false)
            end
        end)

        print("*************try fail quest************")
        local actor = actorMgr:GetActor(Q426ClientConfig.ActorAlias)
        if actor ~= nil then
            actor:FinishQuest(true, nil)
        end
    end
end

function Quest426:Start() end
function Quest426:OnDestroy() end
return Quest426

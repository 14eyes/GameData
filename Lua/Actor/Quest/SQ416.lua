require("Actor/ActorCommon")
local QuestActorProxy = require("Actor/Quest/QuestActorProxy")

local Quest416 = class("Quest416", QuestActorProxy)
Quest416.defaultAlias = "Quest416"
local Q416ClientConfig = require("Quest/Client/Q416ClientConfig")

local subIDs = Q416ClientConfig.SubIDs

function Quest416:OnSubStartHandlerBuild()
    self.subStartHandlers = {}
    self.subStartHandlers["41601"] = self.OnSubStart41601
    self.subStartHandlers["41602"] = self.OnSubStart41602
    self.subStartHandlers["41603"] = self.OnSubStart41603
end

function Quest416:OnSubFinishHandlerBuild()
    self.subFinishHandlers = {}
    self.subFinishHandlers["41601"] = self.OnSubFinish41601
    self.subFinishHandlers["41602"] = self.OnSubFinish41602
    self.subFinishHandlers["41603"] = self.OnSubFinish41603
end

function Quest416:OnSubStart41601(arg1)
    local actor = actorMgr:GetActor("RunCoinStart")
    if actor ~= nil then
        actor:DestroySelf()
    end

    for i = 1, Q416ClientConfig.CoinNum do
        globalActor:UnSpawn("BigApple" .. tostring(i))
    end

    Q416ClientConfig.NextNum = 1
    actorMgr:CreateActorWithPos("RunCoinStart", "Actor/Gadget/RunCoinStart", 70210101, 0, Q416ClientConfig.CoinPos[Q416ClientConfig.NextNum].pos, Q416ClientConfig.CoinPos[Q416ClientConfig.NextNum].rot, true, false)
end

function Quest416:OnSubStart41602(arg1) end
function Quest416:OnSubFinish41601(arg1) end
function Quest416:OnSubFinish41602(arg1) end
function Quest416:Start() end
function Quest416:OnDestroy() end
return Quest416

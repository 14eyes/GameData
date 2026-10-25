require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400211_ReconnectTrigger = class("Q400211_ReconnectTrigger", GadgetActorProxy)
Q400211_ReconnectTrigger.defaultAlias = "Q400211_ReconnectTrigger"
local Q4002ClientConfig = require("Quest/Client/Q4002ClientConfig")

local this
local subIDs = Q4002ClientConfig.SubIDs
local npcs = Q4002ClientConfig.Npcs
local points = Q4002ClientConfig.Points
local datas = Q4002ClientConfig.Datas

function Q400211_ReconnectTrigger:OnPostDataPrepare()
    print("[MainId: 4002][Trigger: Q400211_ReconnectTrigger] OnPostDataPrepare")
    this = self
end

function Q400211_ReconnectTrigger:OnPostComponentPrepare()
    print("[MainId: 4002][Trigger: Q400211_ReconnectTrigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(23, 16, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400211_ReconnectTrigger:TriggerIn()
    print("[MainId: 4002][Trigger: Q400211_ReconnectTrigger] TriggerIn")
    local actor = actorMgr:GetActor("4002")
    if actor:GetSubQuestState(400211) ~= 2 then
        actor:LevelLoadFinishSafeCall(function(arg1)
            actorMgr:GetActor("4002"):TransmitPlayerByQuestId(400211, 2)
        end)
    end
end

function Q400211_ReconnectTrigger:PreTriggerIn()
    print("[MainId: 4002][Trigger: Q400211_ReconnectTrigger] PreTriggerIn")
end

function Q400211_ReconnectTrigger:LightUpTriggerIn()
    print("[MainId: 4002][Trigger: Q400211_ReconnectTrigger] LightUpTriggerIn")
end

function Q400211_ReconnectTrigger:TriggerOut()
    print("[MainId: 4002][Trigger: Q400211_ReconnectTrigger] TriggerOut")
end

return Q400211_ReconnectTrigger

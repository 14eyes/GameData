require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q400003_ReconnectTrigger = class("Q400003_ReconnectTrigger", GadgetActorProxy)
Q400003_ReconnectTrigger.defaultAlias = "Q400003_ReconnectTrigger"
local Q4000ClientConfig = require("Quest/Client/Q4000ClientConfig")

local this
local subIDs = Q4000ClientConfig.SubIDs
local npcs = Q4000ClientConfig.Npcs
local points = Q4000ClientConfig.Points
local datas = Q4000ClientConfig.Datas

function Q400003_ReconnectTrigger:OnPostDataPrepare()
    print("[MainId: 4000][Trigger: Q400003_ReconnectTrigger] OnPostDataPrepare")
    this = self
end

function Q400003_ReconnectTrigger:OnPostComponentPrepare()
    print("[MainId: 4000][Trigger: Q400003_ReconnectTrigger] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(23, 16, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q400003_ReconnectTrigger:TriggerIn()
    print("[MainId: 4000][Trigger: Q400003_ReconnectTrigger] TriggerIn")
    local actor = actorMgr:GetActor("4000")
    if actor:GetSubQuestState(400003) ~= 2 then
        actor:LevelLoadFinishSafeCall(function(arg1)
            actorMgr:GetActor("4000"):TransmitPlayerByQuestId(400003, 2)
        end)
    end
end

function Q400003_ReconnectTrigger:PreTriggerIn()
    print("[MainId: 4000][Trigger: Q400003_ReconnectTrigger] PreTriggerIn")
end

function Q400003_ReconnectTrigger:LightUpTriggerIn()
    print("[MainId: 4000][Trigger: Q400003_ReconnectTrigger] LightUpTriggerIn")
end

function Q400003_ReconnectTrigger:TriggerOut()
    print("[MainId: 4000][Trigger: Q400003_ReconnectTrigger] TriggerOut")
end

return Q400003_ReconnectTrigger

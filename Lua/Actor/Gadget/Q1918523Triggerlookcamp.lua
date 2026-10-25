require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1918523Triggerlookcamp = class("Q1918523Triggerlookcamp", GadgetActorProxy)
Q1918523Triggerlookcamp.defaultAlias = "Q1918523Triggerlookcamp"
local Q19185ClientConfig = require("Quest/Client/Q19185ClientConfig")

local this
local subIDs = Q19185ClientConfig.SubIDs
local npcs = Q19185ClientConfig.Npcs
local points = Q19185ClientConfig.Points
local datas = Q19185ClientConfig.Datas

function Q1918523Triggerlookcamp:OnPostDataPrepare()
    print("[MainId: 19185][Trigger: Q1918523Triggerlookcamp] OnPostDataPrepare")
    this = self
end

function Q1918523Triggerlookcamp:OnPostComponentPrepare()
    print("[MainId: 19185][Trigger: Q1918523Triggerlookcamp] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 19185)
end

function Q1918523Triggerlookcamp:TriggerIn()
    print("[MainId: 19185][Trigger: Q1918523Triggerlookcamp] TriggerIn")
    local actor = actorMgr:GetActor("19185")
    actor:EnterSceneLookCamera({x = 3927.0, y = 443.0, z = 4555.0}, 0, 2, true, false)
    actor:EnablePlayerInput(false)
    actor:CallDelayByQuest("1918523", 2, function(arg1)
        actorMgr:GetActor("19185"):EnablePlayerInputByQuest(true)
    end)
end

function Q1918523Triggerlookcamp:PreTriggerIn()
    print("[MainId: 19185][Trigger: Q1918523Triggerlookcamp] PreTriggerIn")
end

function Q1918523Triggerlookcamp:LightUpTriggerIn()
    print("[MainId: 19185][Trigger: Q1918523Triggerlookcamp] LightUpTriggerIn")
end

function Q1918523Triggerlookcamp:TriggerOut()
    print("[MainId: 19185][Trigger: Q1918523Triggerlookcamp] TriggerOut")
end

return Q1918523Triggerlookcamp

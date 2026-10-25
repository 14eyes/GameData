require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4022Trigger2 = class("Q4022Trigger2", GadgetActorProxy)
Q4022Trigger2.defaultAlias = "Q4022Trigger2"
local Q4022ClientConfig = require("Quest/Client/Q4022ClientConfig")

local this
local subIDs = Q4022ClientConfig.SubIDs
local npcs = Q4022ClientConfig.Npcs
local gadgets = Q4022ClientConfig.Gadgets
local points = Q4022ClientConfig.Points
local datas = Q4022ClientConfig.Datas

function Q4022Trigger2:OnPostDataPrepare()
    print("[MainId: 4022][Trigger: Q4022Trigger2] OnPostDataPrepare")
    this = self
end

function Q4022Trigger2:OnPostComponentPrepare()
    print("[MainId: 4022][Trigger: Q4022Trigger2] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4022Trigger2:TriggerIn()
    print("[MainId: 4022][Trigger: Q4022Trigger2] TriggerIn")
    this:DestroySelf()
end

function Q4022Trigger2:PreTriggerIn()
    print("[MainId: 4022][Trigger: Q4022Trigger2] PreTriggerIn")
end

function Q4022Trigger2:LightUpTriggerIn()
    print("[MainId: 4022][Trigger: Q4022Trigger2] LightUpTriggerIn")
end

function Q4022Trigger2:TriggerOut()
    print("[MainId: 4022][Trigger: Q4022Trigger2] TriggerOut")
end

return Q4022Trigger2

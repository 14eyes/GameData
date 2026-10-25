require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7612502_N15903_01 = class("Q7612502_N15903_01", GadgetActorProxy)
Q7612502_N15903_01.defaultAlias = "Q7612502_N15903_01"
local Q76125ClientConfig = require("Quest/Client/Q76125ClientConfig")

local this
local subIDs = Q76125ClientConfig.SubIDs
local datas = Q76125ClientConfig.Datas
local npcs = Q76125ClientConfig.Npcs
local points = Q76125ClientConfig.Points

function Q7612502_N15903_01:OnPostDataPrepare()
    print("Q7612502_N15903_01 - OnPostDataPrepare")
    this = self
end

function Q7612502_N15903_01:OnPostComponentPrepare()
    print("Q7612502_N15903_01 - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76125)
end

function Q7612502_N15903_01:TriggerIn()
    print("Q7612502_N15903_01 - TriggerIn")
    this:DestroySelf()
end

function Q7612502_N15903_01:PreTriggerIn()
    print("Q7612502_N15903_01 - PreTriggerIn")
end

function Q7612502_N15903_01:LightUpTriggerIn()
    print("Q7612502_N15903_01 - LightUpTriggerIn")
end

function Q7612502_N15903_01:TriggerOut()
    print("Q7612502_N15903_01 - TriggerOut")
end

return Q7612502_N15903_01

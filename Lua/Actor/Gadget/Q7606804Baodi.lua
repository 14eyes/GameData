require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7606804Baodi = class("Q7606804Baodi", GadgetActorProxy)
Q7606804Baodi.defaultAlias = "Q7606804Baodi"
local Q76068ClientConfig = require("Quest/Client/Q76068ClientConfig")

local this
local subIDs = Q76068ClientConfig.SubIDs
local npcs = Q76068ClientConfig.Npcs
local points = Q76068ClientConfig.Points

function Q7606804Baodi:OnPostDataPrepare()
    print("Q7606804Baodi - OnPostDataPrepare")
    this = self
end

function Q7606804Baodi:OnPostComponentPrepare()
    print("Q7606804Baodi - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76068)
end

function Q7606804Baodi:TriggerIn()
    print("Q7606804Baodi - TriggerIn")
end

function Q7606804Baodi:PreTriggerIn()
    print("Q7606804Baodi - PreTriggerIn")
end

function Q7606804Baodi:LightUpTriggerIn()
    print("Q7606804Baodi - LightUpTriggerIn")
end

function Q7606804Baodi:TriggerOut()
    print("Q7606804Baodi - TriggerOut")
end

return Q7606804Baodi

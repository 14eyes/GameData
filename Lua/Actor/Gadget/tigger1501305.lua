require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local tigger1501305 = class("tigger1501305", GadgetActorProxy)
tigger1501305.defaultAlias = "tigger1501305"
local Q15013ClientConfig = require("Quest/Client/Q15013ClientConfig")

local this
local subIDs = Q15013ClientConfig.SubIDs
local datas = Q15013ClientConfig.Datas
local npcs = Q15013ClientConfig.Npcs
local points = Q15013ClientConfig.Points

function tigger1501305:OnPostDataPrepare()
    print("tigger1501305 - OnPostDataPrepare")
    this = self
end

function tigger1501305:OnPostComponentPrepare()
    print("tigger1501305 - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15013)
end

function tigger1501305:TriggerIn()
    print("tigger1501305 - TriggerIn")
    this:DestroySelf()
end

function tigger1501305:PreTriggerIn()
    print("tigger1501305 - PreTriggerIn")
end

function tigger1501305:LightUpTriggerIn()
    print("tigger1501305 - LightUpTriggerIn")
end

function tigger1501305:TriggerOut()
    print("tigger1501305 - TriggerOut")
end

return tigger1501305

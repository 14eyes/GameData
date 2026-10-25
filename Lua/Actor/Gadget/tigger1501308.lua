require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local tigger1501308 = class("tigger1501308", GadgetActorProxy)
tigger1501308.defaultAlias = "tigger1501308"
local Q15013ClientConfig = require("Quest/Client/Q15013ClientConfig")

local this
local subIDs = Q15013ClientConfig.SubIDs
local datas = Q15013ClientConfig.Datas
local npcs = Q15013ClientConfig.Npcs
local points = Q15013ClientConfig.Points

function tigger1501308:OnPostDataPrepare()
    print("tigger1501308 - OnPostDataPrepare")
    this = self
end

function tigger1501308:OnPostComponentPrepare()
    print("tigger1501308 - OnPostComponentPrepare")
    this:AddComponentTrigger(70, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15013)
end

function tigger1501308:TriggerIn()
    print("tigger1501308 - TriggerIn")
    actorUtils.FinishQuestID(false, 1501308)
    this:DestroySelf()
end

function tigger1501308:PreTriggerIn()
    print("tigger1501308 - PreTriggerIn")
end

function tigger1501308:LightUpTriggerIn()
    print("tigger1501308 - LightUpTriggerIn")
end

function tigger1501308:TriggerOut()
    print("tigger1501308 - TriggerOut")
end

return tigger1501308

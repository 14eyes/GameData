require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local tigger1501506 = class("tigger1501506", GadgetActorProxy)
tigger1501506.defaultAlias = "tigger1501506"
local Q15015ClientConfig = require("Quest/Client/Q15015ClientConfig")

local this
local subIDs = Q15015ClientConfig.SubIDs
local datas = Q15015ClientConfig.Datas
local npcs = Q15015ClientConfig.Npcs
local points = Q15015ClientConfig.Points

function tigger1501506:OnPostDataPrepare()
    print("tigger1501506 - OnPostDataPrepare")
    this = self
end

function tigger1501506:OnPostComponentPrepare()
    print("tigger1501506 - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15015)
end

function tigger1501506:TriggerIn()
    print("tigger1501506 - TriggerIn")
    actorUtils.FinishQuestID(false, 1501506)
    this:DestroySelf()
end

function tigger1501506:PreTriggerIn()
    print("tigger1501506 - PreTriggerIn")
end

function tigger1501506:LightUpTriggerIn()
    print("tigger1501506 - LightUpTriggerIn")
end

function tigger1501506:TriggerOut()
    print("tigger1501506 - TriggerOut")
end

return tigger1501506

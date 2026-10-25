require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local tigger4015702 = class("tigger4015702", GadgetActorProxy)
tigger4015702.defaultAlias = "tigger4015702"
local Q40157ClientConfig = require("Quest/Client/Q40157ClientConfig")

local this
local subIDs = Q40157ClientConfig.SubIDs
local datas = Q40157ClientConfig.Datas
local npcs = Q40157ClientConfig.Npcs
local points = Q40157ClientConfig.Points

function tigger4015702:OnPostDataPrepare()
    print("tigger4015702 - OnPostDataPrepare")
    this = self
end

function tigger4015702:OnPostComponentPrepare()
    print("tigger4015702 - OnPostComponentPrepare")
    this:AddComponentTrigger(33, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40157)
end

function tigger4015702:TriggerIn()
    print("tigger4015702 - TriggerIn")
    actorUtils.FinishQuestID(false, 4015702)
    this:DestroySelf()
end

function tigger4015702:PreTriggerIn()
    print("tigger4015702 - PreTriggerIn")
end

function tigger4015702:LightUpTriggerIn()
    print("tigger4015702 - LightUpTriggerIn")
end

function tigger4015702:TriggerOut()
    print("tigger4015702 - TriggerOut")
end

return tigger4015702

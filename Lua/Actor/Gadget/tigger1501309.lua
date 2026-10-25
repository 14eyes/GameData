require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local tigger1501309 = class("tigger1501309", GadgetActorProxy)
tigger1501309.defaultAlias = "tigger1501309"
local Q15013ClientConfig = require("Quest/Client/Q15013ClientConfig")

local this
local subIDs = Q15013ClientConfig.SubIDs
local datas = Q15013ClientConfig.Datas
local npcs = Q15013ClientConfig.Npcs
local points = Q15013ClientConfig.Points

function tigger1501309:OnPostDataPrepare()
    print("tigger1501309 - OnPostDataPrepare")
    this = self
end

function tigger1501309:OnPostComponentPrepare()
    print("tigger1501309 - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15013)
end

function tigger1501309:TriggerIn()
    print("tigger1501309 - TriggerIn")
    actorUtils.FinishQuestID(false, 1501309)
    this:DestroySelf()
end

function tigger1501309:PreTriggerIn()
    print("tigger1501309 - PreTriggerIn")
end

function tigger1501309:LightUpTriggerIn()
    print("tigger1501309 - LightUpTriggerIn")
end

function tigger1501309:TriggerOut()
    print("tigger1501309 - TriggerOut")
end

return tigger1501309

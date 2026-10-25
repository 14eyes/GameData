require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q3029TriggerFLEND04 = class("Q3029TriggerFLEND04", GadgetActorProxy)
Q3029TriggerFLEND04.defaultAlias = "Q3029TriggerFLEND04"
local Q3029ClientConfig = require("Quest/Client/Q3029ClientConfig")

local this
local subIDs = Q3029ClientConfig.SubIDs
local npcs = Q3029ClientConfig.Npcs
local datas = Q3029ClientConfig.Datas

function Q3029TriggerFLEND04:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q3029TriggerFLEND04:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q3029TriggerFLEND04:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 302926)
    this:DestroySelf()
end

function Q3029TriggerFLEND04:PreTriggerIn()
    print("PreTriggerIn")
end

function Q3029TriggerFLEND04:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q3029TriggerFLEND04:TriggerOut()
    print("TriggerOut")
end

return Q3029TriggerFLEND04
